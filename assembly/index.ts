@external("env", "jsRequestAnimationFrame")
declare function jsRequestAnimationFrame(): void;

@external("env", "jsClearRect")
declare function jsClearRect(x: f32, y: f32, w: f32, h: f32): void;

@external("env", "jsBeginPath")
declare function jsBeginPath(): void;

@external("env", "jsClosePath")
declare function jsClosePath(): void;

@external("env", "jsArc")
declare function jsArc(x: f32, y: f32, r: f32, startAngle: f32, endAngle: f32): void;

@external("env", "jsFill")
declare function jsFill(): void;

@external("env", "jsFillText")
declare function jsFillText(text: string, x: f32, y:f32): void;

@external("env", "jsStroke")
declare function jsStroke(): void;

@external("env", "jsMoveTo")
declare function jsMoveTo(x: f32, y: f32): void;

@external("env", "jsLineTo")
declare function jsLineTo(x: f32, y:f32): void;

@external("env", "jsLineWidth")
declare function jsLineWidth(w: f32): void;

@external("env", "jsSetFillStyle")
declare function jsSetFillStyle(fillStylePtr: string): void;

@external("env", "jsSetStrokeStyle")
declare function jsSetStrokeStyle(strokeStylePtr: string): void;

@external("env", "jsLog")
declare function jsLog(messagePtr: string): void;

@external("env", "jsSetFont")
declare function jsSetFont(fontPtr: string): void;

@external("env", "jsDatenow")
declare function jsDatenow(): i32;

const CANVAS_WIDTH: f32 = 800; // CANVAS WIDTH
const CANVAS_HEIGHT: f32 = 1000; // CNAVAS HEIGHT
const BOSS_WIDTH: f32 = 225; // ENEMY BOSS WIDTH for hit judgement
const BOSS_HEIGHT: f32 = 225; // ENEMY BOSS HEIGHT for hit judgement
const BOSS_MAX_HP: i32 = 999; // ENEMY BOSS MAX Helath Point
const MAX_BULLET_NUMBER: i32 = 500; // Number of BULLETS
const BULLET_WIDTH: f32 = 28;
const BULLET_HEIGHT: f32 = 28;
const BULLET_STRENGTH: i32 = 2;
const SHIP_WIDTH: f32 = 40;
const SHIP_HEIGHT: f32 = 50;
const SHIP_STEP: f32 = 1;
const SHOT_WIDTH: f32 = 5;
const SHOT_HEIGHT: f32 = 5;
const SHOT_SPEED: f32 = 10;
const SUPER_SHOT_WIDTH: f32 = 100;
const SUPER_SHOT_HEIGHT: f32 = 40;
const SUPER_WAIT_TIME: i32 = 200; // enery chage time
const SUPER_TIME: i32 = 200; // super mode time
const LIMIT_TIME: i32 = 59; // second time
const DEFAULT_COLOR: string = 'rgba(0,128, 0, 1.0)';
const LIGHT_GREEN_COLOR: string = 'rgba(226,238,197,1.0)';
const GREEN_DARK_LIGHT: string = 'rgba(17,31,17,1.0)';
const LIGHT_YELLOR_GREEN: string = 'rgba(168,230,207,1.0)';
const FPS = 60;

enum Stage {
    openning,
    playing,
    gameover,
    gameclear,
}

interface Character {
	x: f32;
	y: f32;
	dx: f32;
	dy: f32;
	w: f32; // width
	h: f32; // height
	hp: i32; // HP
	hit(obj: Character): boolean; // hit judement
	update(): void;
	draw(): void;
}

function overap(t: Character, s: Character): boolean {
    if (max(t.x, s.x) < min(t.x + t.w, s.x + s.w) && (max(t.y, s.y) < min(t.y + t.h, s.y + s.h))) {
        return true;
    } else {
        return false;
    }
}

class Shot implements Character {
	x: f32;
	y: f32;
	dx: f32;
	dy: f32;
	w: f32;
	h: f32;
	hp: i32;

	constructor(x: f32, y: f32, dx: f32, dy: f32, w: f32, h: f32, hp: i32) {
		this.x = x;
		this.y = y;
		this.dx = dx;
		this.dy = dy;
		this.w = w;
		this.h = h;
		this.hp = hp;
	}

	update():void {
		this.y -= this.dy;
	}

	exit(): boolean {
		if (this.y < 0) {
			return true;
		}
		return false;
	}

	hit(obj: Character): boolean {
		if (overap(this, obj)) {
			return true;
		}
		return false;
	}

	draw(): void {
		let _x: f32 = this.x as f32;
		let _y: f32 = this.y as f32;
		{
			jsBeginPath();
            jsSetFillStyle(DEFAULT_COLOR);
			jsMoveTo(_x, _y - SHOT_HEIGHT);
			jsLineTo(_x + SHOT_WIDTH, _y - SHOT_HEIGHT);
			jsLineTo(_x + SHOT_WIDTH, _y);
			jsLineTo(_x, _y);
			jsClosePath();
			jsFill();
		}
	}
}

class ShotArray extends Array<Shot> {
	concat(that: ShotArray): ShotArray {
		return super.concat.bind(this)(that);
	}
}

// SuperShot
class SuperShot extends Shot {
	constructor(x: f32, y: f32, dx: f32, dy: f32, w: f32, h: f32, hp: i32) {
		super(x, y, dx, dy, w, h , hp);
	}
	draw():void {
		let _x: f32 = this.x  as f32;
		let _y: f32 = this.y as f32;
		{
			jsBeginPath();
			jsSetFillStyle(LIGHT_YELLOR_GREEN);
			jsMoveTo(_x, _y - SUPER_SHOT_HEIGHT);
			jsLineTo(_x + SUPER_SHOT_WIDTH, _y - SUPER_SHOT_HEIGHT);
			jsLineTo(_x + SUPER_SHOT_WIDTH, _y);
			jsLineTo(_x, _y);
			jsClosePath();
			jsFill();
		}
	}
}

// Star Ship

class Ship implements Character {
	x: f32;
	y: f32;
	dx: f32;
	dy: f32;
	w: f32;
	h: f32;
	hp: i32;
	mouse_x: f32;

	constructor(x: f32, y: f32, dx: f32, dy: f32, w: f32, h: f32, hp: i32, mouse_x: f32) {
		this.x = x;
		this.y = y;
		this.dx = dx;
		this.dy = dy;
		this.w = w;
		this.h = h;
		this.hp = hp;
		this.mouse_x = mouse_x;
	}

    move(offset_x: f32):void {
        this.mouse_x = offset_x;
    }
	exit(): boolean {
		return false;
	}
	hit(obj: Character): boolean {
		if (overap(this, obj)) {
			return true;
		}
		return false;
	}

    // update ship position

    update(): void{
		if (this.mouse_x < this.x) {
			this.x -= this.dx;
		} else if (this.mouse_x > this.x + SHIP_WIDTH) {
			this.x += this.dx;
		}
    }

    // draw ship

	draw():void {
        draw_ship(this.x, this.y);
    }
}

class SuperShip extends Ship {
	constructor(x: f32, y: f32, dx: f32, dy: f32, w: f32, h: f32, hp: i32, mouse_x:f32) {
		super(x, y, dx, dy, w, h, hp, mouse_x);
	}

	draw():void {
        draw_super_ship(this.x, this.y);
    }
}

class Bullet implements Character {
	x: f32;
	y: f32;
	dx: f32;
	dy: f32;
	w: f32;
	h: f32;
	hp: i32;

	constructor(x: f32, y: f32, dx: f32, dy: f32, w: f32, h: f32, hp: i32) {
		this.x = x;
		this.y = y;
		this.dx = dx;
		this.dy = dy;
		this.w = w;
		this.h = h;
		this.hp = hp;
	}

	hit(obj: Character): boolean {
		if (overap(this, obj)) {
			this.hp -= 1;
			return true;
		}
		return false
	}

    exit(): boolean {
        if (this.x + BULLET_WIDTH > CANVAS_WIDTH) { return true; }
        if (this.x < 0) { return true; }
        if (this.y > CANVAS_HEIGHT ) { return true; }
        if (this.y < 0 ) { return true; }
        return false;
    };

    update(): void {
        this.x += this.dx;
        this.y += this.dy;
    }
    draw(): void {

        let _x = this.x +  BULLET_WIDTH / 2 as f32;
        let _y = this.y +  BULLET_WIDTH / 2 as f32;

        {
            jsBeginPath();
            jsSetFillStyle(DEFAULT_COLOR);
            jsArc(_x, _y, BULLET_WIDTH / 2, 0, (Math.PI * 2) as f32);
            jsClosePath();
            jsFill();
            jsBeginPath();
            jsSetFillStyle(LIGHT_GREEN_COLOR);
            jsArc(_x, _y as f32, BULLET_WIDTH / 4, 0, (Math.PI * 2) as f32);
            jsClosePath();
            jsFill();
        }
    }
}

class BulletArray extends Array<Bullet> {
    concat(that: BulletArray): BulletArray{
        return super.concat.bind(this)(that)
    }
}

class Boss implements Character{
	x: f32;
	y: f32;
	dx: f32;
	dy: f32;
	w: f32;
	h: f32;
	hp: i32;
	d: f32; // 0: left, 1:right

	constructor(x: f32, y: f32, dx: f32, dy: f32, w: f32, h: f32, hp: i32) {
		this.x = x;
		this.y = y;
		this.dx = dx,
        this.dy = dy,
        this.w = w,
        this.h = h,
        this.hp = hp,
        this.d = 1
	}

	update():void {
		// direction
		if (this.x < 0.0 && this.d === -1) {
			this.d = 1;
		}
		if (this.x > CANVAS_WIDTH - BOSS_WIDTH && this.d === 1) {
			this.d = -1;
		}
		this.x += this.d * this.dx;
	}

	hit(obj: Character): boolean {
		if (overap(this, obj)) {
			return true;
		}
		return false;
	}

   draw(): void{
		// display: boss hp
		{
			let _txt = `${this.hp} / ${BOSS_MAX_HP}`;
			jsSetFont('12px myfont');
			jsSetFillStyle(LIGHT_GREEN_COLOR);
			jsFillText(_txt, this.x + 70.0, this.y - 10.0);
		}
        draw_boss(this.x, this.y);
    }
}

class BossArray extends Array<Boss> {
	concat(that: BossArray): BossArray {
		return super.concat.bind(this)(that);
	}
}


class Game {
	stage: Stage;
	shooting: boolean; // true: shut false: unshot
	wait_time: i32;
	super_time: i32;
	ship: Ship;
	bosses: BossArray;
	bullets: BulletArray;
	shots: ShotArray;
	startsecondtime: i32;
	startminisecondtime: i32;
	passedsecondtime: i32;
	passedminisecondtime: i32;

	constructor() {
		this.stage = Stage.openning;
		this.shooting = false;
		this.wait_time = 0;
		this.super_time = 0;
		this.ship = new Ship(
			CANVAS_WIDTH / 2 - SHIP_WIDTH / 2,
			CANVAS_HEIGHT - SHIP_HEIGHT - 10.0,
			SHIP_STEP,
			0,
			SHIP_WIDTH,
			SHIP_HEIGHT,
			1,
            CANVAS_WIDTH / 2 - SHIP_WIDTH / 2
		);
		this.bosses = new BossArray;

		this.bullets = new BulletArray;
		this.shots = new ShotArray;
		this.startsecondtime = jsDatenow() / 1000;
		this.startminisecondtime = jsDatenow();
		this.passedsecondtime = this.startminisecondtime;
		this.passedminisecondtime = this.startminisecondtime;
	    let _boss = new Boss(180, 60, 1, 0, BOSS_WIDTH, BOSS_HEIGHT, BOSS_MAX_HP);
		this.bosses.push(_boss);
	}

   	reset():void {
		this.stage = Stage.openning;
		this.shooting = false;
		this.ship = new Ship(
			CANVAS_WIDTH / 2 - SHIP_WIDTH / 2,
			CANVAS_HEIGHT - SHIP_HEIGHT - 10.0,
			SHIP_STEP,
			0,
			SHIP_WIDTH,
			SHIP_HEIGHT,
			1,
            CANVAS_WIDTH / 2 - SHIP_WIDTH / 2
		);
		this.bosses = new BossArray;
		let _boss = new Boss(180, 60, 1, 0, BOSS_WIDTH, BOSS_HEIGHT, BOSS_MAX_HP);
		this.bosses.push(_boss);
		this.shooting = false;
		this.wait_time = 0;
		this.super_time = 0;
		this.bullets = new BulletArray;
		this.shots = new ShotArray;
		this.startsecondtime = jsDatenow() / 1000;
		this.startminisecondtime = jsDatenow();
		this.passedsecondtime = this.startminisecondtime;
		this.passedminisecondtime = this.startminisecondtime;
	}
    /**
    * mouse evnet
    */
    move(offsetx: f32): void{
        this.ship.move(offsetx);
    };

    update(): void {
		switch (this.stage) {
			case Stage.openning:
			case Stage.gameover:
			case Stage.gameclear:
				break;
			case Stage.playing:

				// passed time

				this.passedsecondtime = jsDatenow() / 1000 - this.startsecondtime;
				this.passedminisecondtime = jsDatenow();

				// Game Over
				if (this.passedsecondtime >= LIMIT_TIME) {
					this.stage = Stage.gameover;
					break;
				}

				// bullet create

				if (this.bullets.length < MAX_BULLET_NUMBER) {
					const _x = this.bosses[0].x + BOSS_WIDTH / 2 - BULLET_WIDTH / 2;
					const _y = this.bosses[0].y + BOSS_WIDTH / 2 - BULLET_WIDTH / 2;
					let dx:f32 = ((Math.random() - 0.5) * 4) as f32;
					let dy:f32 = ((Math.random() - 0.5) * 4) as f32;
					let _bullet = new Bullet(
						_x,
						_y,
						dx,
						dy,
						BULLET_WIDTH,
						BULLET_HEIGHT,
						BULLET_STRENGTH
					);
					this.bullets.push(_bullet);
				}

				// bullet update

				for (let i = 0; i < this.bullets.length; i++) {
					this.bullets[i].update();
					if (this.bullets[i].exit() || this.bullets[i].hp <= 0) {
						this.bullets.splice(i, 1);
					}
				}

				// shot create

				if (this.shooting) {
					const _x = this.ship.x + SHIP_WIDTH / 2;
					const _y = this.ship.y;
					let _shot = new Shot(_x, _y, 0, SHOT_SPEED, SHOT_WIDTH, SHOT_HEIGHT, 1);
					if (this.super_time > 0) {
						_shot = new SuperShot(
							_x - SUPER_SHOT_WIDTH / 2,
							_y,
							0,
							SHOT_SPEED,
							SUPER_SHOT_WIDTH,
							SUPER_SHOT_HEIGHT,
							3
						);
						this.super_time -= 1;
					}
					this.shots.push(_shot);
				}

				// shots update

				for (let i = 0; i < this.shots.length; i++) {
					this.shots[i].update();
					if (this.shots[i].exit() || this.shots[i].hp <= 0) {
						this.shots.splice(i, 1);
					}
				}

				// hit judgement bullets x ship

				for (let i = 0; i < this.bullets.length; i++) {
					if (this.bullets[i].hit(this.ship)) {
						this.stage = Stage.gameover;
					}
				}

				// hit judgement shots x bullets

				for (let i = 0; i < this.bullets.length; i++) {
					for (let j = 0; j < this.shots.length; j++) {
						if (this.bullets[i].hit(this.shots[j])) {
							this.shots[j].hp -= 1;
							this.bullets[i].hp -= 1;
						}
					}
				}

				// hit judgement shots x boss

				for (let i = 0; i < this.bosses.length; i++) {
					for (let j = 0; j < this.shots.length; j++) {
						if (this.bosses[i].hit(this.shots[j])) {
							this.shots[j].hp -= 1;
							this.bosses[i].hp -= 1;
						}
					}
				}

                // ship update

                this.ship.update();

				// boss update

				this.bosses[0].update();

				if (this.bosses[0].hp <= 0) {
					this.bosses.splice(0, 1);
					// Game Clear
					if (this.bosses.length === 0) {
						this.stage = Stage.gameclear;
					}
				}

				// not shooting

				if (this.shooting === false && this.super_time === 0) {
					this.wait_time += 1;
				}

				if (this.wait_time > SUPER_WAIT_TIME) {
					this.super_time = SUPER_TIME;
					if (!(this.ship instanceof SuperShip)) {
						this.ship = new SuperShip(
							this.ship.x,
							this.ship.y,
							this.ship.dx,
							this.ship.dy,
							this.ship.w,
							this.ship.h,
							this.ship.hp,
                            this.ship.mouse_x
						);
					}
				}
				if (this.super_time === 1) {
					this.ship = new Ship(
						this.ship.x,
						this.ship.y,
						this.ship.dx,
						this.ship.dy,
						this.ship.w,
						this.ship.h,
						this.ship.hp,
                        this.ship.mouse_x
					);
				}

				if (this.shooting === true) {
					this.wait_time = 0;
				}

				break;
		}
	}
	draw():void {

		// Clear canvas
        jsClearRect(0, 0, CANVAS_WIDTH, CANVAS_HEIGHT);

		switch (this.stage) {
			case Stage.openning:
				// Draw Title
		        draw_boss(130, 20);
				jsSetFont('60px myfont');
				jsFillText('BARRAGE', 220, 360);
				jsSetFillStyle(LIGHT_GREEN_COLOR);
				jsSetFont('28px myfont');
				jsFillText('WASM', 340, 420);
				jsSetFillStyle(DEFAULT_COLOR);
				jsSetFont('28px myfont');
				jsFillText('Click Start', 300, 490);
                draw_ship(CANVAS_WIDTH / 2 - SHIP_WIDTH / 2, CANVAS_HEIGHT - SHIP_HEIGHT - 10.0);
				break;
			case Stage.gameover:
				// Draw Title
				jsSetFont('60px myfont');
				jsFillText('GAME OVER', 180, 360);
				jsSetFont('28px myfont');
				jsSetFillStyle(DEFAULT_COLOR);
				jsFillText('Click ReStart', 300, 420);
				break;
			case Stage.gameclear:
				// Draw Title
				jsSetFont('60px myfont');
				jsFillText('GAME CLEAR', 150, 360);
				jsSetFillStyle(DEFAULT_COLOR);
				jsSetFont('28px myfont');
				jsFillText('Congratuations!', 260, 420);
				jsFillText(this.getpassedtime() + ' sec.', 340, 500);
				break;
			case Stage.playing:
				// Draw boss
				this.bosses[0].draw();
				// Draw bullets
				for (let i = 0; i < this.bullets.length; i++) {
					this.bullets[i].draw();
				}
				// Draw shot
				for (let i = 0; i < this.shots.length; i++) {
					this.shots[i].draw();
				}
				// Draw ship
				this.ship.draw();
				// Draw Time
				jsSetFont('28px myfont');
				jsSetFillStyle(LIGHT_GREEN_COLOR);
				let _str = this.getpassedtime();
				jsFillText(_str, 30, 50);
                // Draw Number of Bullets
				jsSetFont('18px myfont');
				jsSetFillStyle(LIGHT_GREEN_COLOR);
				let _bullet_number = this.bullets.length.toString();
				jsFillText("Bullets: " + _bullet_number, 30, 90);
		}
	}
    // time
	getpassedtime(): string {
		const _sec: string = this.passedsecondtime.toString();
		const _minisec: string = this.passedminisecondtime.toString();
		const _sec_str = ('00' + _sec as string).slice(-2);
		const _minisec_str = ('0' + _minisec as string ).slice(-1);
		const _str = _sec_str + '.' + _minisec_str;
		return _str;
	}

	// click

	shot():void {
		switch (this.stage) {
			case Stage.gameclear:
				this.stage = Stage.playing;
				this.reset();
				break;
			case Stage.gameover:
				this.reset();
				break;
			case Stage.openning:
                // create boss
                /*
                if (this.bosses.length === 0) {
		            let _boss = new Boss(180, 60, 1, 0, BOSS_WIDTH, BOSS_HEIGHT, BOSS_MAX_HP);
		            this.bosses.push(_boss);
                }
                */
				this.stage = Stage.playing;
				break;
			case Stage.playing:
				this.wait_time = 0;
                this.shooting = this.shooting ? false : true;
				break;
			default:
				break;
		}
	}
}

/*
 * called for each animation frame.
 */

let last_frame = jsDatenow();
const game = new Game();

export function animationFrameHandler(): void {

    let timestamp = jsDatenow();
    let delta = Math.floor((timestamp - last_frame) as f32); 

    while(delta >= 0){
        game.update();
        delta -= 1000.0 / FPS;
    }

    // draw

    jsClearRect(0, 0, CANVAS_WIDTH, CANVAS_HEIGHT);
    game.draw();


    last_frame = timestamp;

    // next frame

    jsRequestAnimationFrame();
}

/**
 *  game loop start
 *  WASM: Starting animation loop...
 */
export function startAnimation(): void {
    jsRequestAnimationFrame();
}

/*
 * mouse evnet
 */
export function shot(): void{
    game.shot();
}

export function move(offsetx: f32): void{
    game.ship.move(offsetx);
}

/**
 * draw character
 */
function draw_ship(x:f32, y:f32): void{
    {
        jsBeginPath();
        jsSetFillStyle(DEFAULT_COLOR);
        jsMoveTo(17.0 + x, 0.0 + y);
        jsLineTo(25.0 + x, 0.0 + y);
        jsLineTo(25.0 + x, 17.0 + y);
        jsLineTo(30.0 + x, 17.0 + y);
        jsLineTo(30.0 + x, 26.0 + y);
        jsLineTo(42.0 + x, 47.0 + y);
        jsLineTo(0.0 + x,  47.0 + y);
        jsLineTo(12.0 + x, 26.0 + y);
        jsLineTo(12.0 + x, 17.0 + y);
        jsLineTo(17.0 + x, 17.0 + y);
        jsClosePath();
        jsFill();
    }
    {
        jsBeginPath();
        jsSetFillStyle(LIGHT_GREEN_COLOR);
        jsMoveTo(17.0 + x, 27.0 + y);
        jsLineTo(24.0 + x, 27.0 + y);
        jsLineTo(24.0 + x, 45.0 + y);
        jsLineTo(17.0 + x, 45.0 + y);
        jsClosePath();
        jsFill();
    }
    {
        jsBeginPath();
        jsSetFillStyle(LIGHT_GREEN_COLOR);
        jsMoveTo(11.0 + x, 47.0 + y);
        jsLineTo(17.0 + x, 47.0 + y);
        jsLineTo(14.0 + x, 56.0 + y);
        jsClosePath();
        jsFill();
    }
    {
        jsBeginPath();
        jsSetFillStyle(LIGHT_GREEN_COLOR);
        jsMoveTo(26.0 + x, 47.0 + y);
        jsLineTo(32.0 + x, 47.0 + y);
        jsLineTo(29.0 + x, 56.0 + y);
        jsClosePath();
        jsFill();
    }
}
function draw_super_ship(x:f32, y:f32):void {
	{
		jsBeginPath();
		jsSetFillStyle(LIGHT_YELLOR_GREEN);
    	jsMoveTo(17.0 + x, 0.0 + y);
		jsLineTo(25.0 + x, 0.0 + y);
		jsLineTo(25.0 + x, 17.0 + y);
		jsLineTo(30.0 + x, 17.0 + y);
		jsLineTo(30.0 + x, 26.0 + y);
		jsLineTo(42.0 + x, 47.0 + y);
		jsLineTo(0.0 + x, 47.0 + y);
		jsLineTo(12.0 + x, 26.0 + y);
	    jsLineTo(12.0 + x, 17.0 + y);
		jsLineTo(17.0 + x, 17.0 + y);
		jsClosePath();
	    jsFill();
	}
	{
		jsBeginPath();
	    jsSetFillStyle(DEFAULT_COLOR);
		jsMoveTo(17.0 + x, 27.0 + y);
		jsLineTo(24.0 + x, 27.0 + y);
		jsLineTo(24.0 + x, 45.0 + y);
		jsLineTo(17.0 + x, 45.0 + y);
		jsClosePath();
		jsFill();
	}
    {
	    jsBeginPath();
	    jsSetFillStyle(LIGHT_GREEN_COLOR);
        jsMoveTo(11.0 + x, 47.0 + y);
		jsLineTo(17.0 + x, 47.0 + y);
		jsLineTo(14.0 + x, 56.0 + y);
		jsClosePath();
		jsFill();
    }
    {
		jsBeginPath();
		jsSetFillStyle(LIGHT_GREEN_COLOR);
		jsMoveTo(26.0 + x, 47.0 + y);
		jsLineTo(32.0 + x, 47.0 + y);
		jsLineTo(29.0 + x, 56.0 + y);
		jsClosePath();
		jsFill();
	}
}
function draw_boss(x:f32, y:f32): void {

    {
        jsBeginPath();
        jsSetFillStyle(GREEN_DARK_LIGHT);
        jsMoveTo(55.0 + x, 0.0 + y);
        jsLineTo(165.0 + x, 0.0 + y);
        jsLineTo(225.0 + x, 60.0 + y);
        jsLineTo(225.0 + x, 160.0 + y);
        jsLineTo(160.0 + x, 225.0 + y);
        jsLineTo(55.0 + x, 225.0 + y);
        jsLineTo(0.0 + x, 160.0 + y);
        jsLineTo(0.0 + x, 60.0 + y);
        jsClosePath();
        jsFill();
    }
    {
        jsBeginPath();
        jsSetFillStyle(GREEN_DARK_LIGHT);
        jsMoveTo(55.0 + x, 0.0 + y);
        jsLineTo(165.0 + x, 0.0 + y);
        jsLineTo(225.0 + x, 60.0 + y);
        jsLineTo(225.0 + x, 160.0 + y);
        jsLineTo(160.0 + x, 225.0 + y);
        jsLineTo(55.0 + x, 225.0 + y);
        jsLineTo(0.0 + x, 160.0 + y);
        jsLineTo(0.0 + x, 60.0 + y);
        jsClosePath();
        jsFill();
    }
    {
        jsBeginPath();
        jsSetFillStyle(GREEN_DARK_LIGHT);
        jsMoveTo(55.0 + x, 30.0 + y);
        jsLineTo(165.0 + x, 30.0 + y);
        jsLineTo(195.0 + x, 60.0 + y);
        jsLineTo(195.0 + x, 160.0 + y);
        jsLineTo(160.0 + x, 195.0 + y);
        jsLineTo(55.0 + x, 195.0 + y);
        jsLineTo(26.0 + x, 160.0 + y);
        jsLineTo(26.0 + x, 60.0 + y);
        jsClosePath();
        jsStroke();
    }
    {
        jsBeginPath();
        jsSetStrokeStyle(DEFAULT_COLOR);
        jsLineWidth(2.0);
        jsMoveTo(85.0 + x, 85.0 + y);
        jsLineTo(140.0 + x, 85.0 + y);
        jsLineTo(140.0 + x, 140.0 + y);
        jsLineTo(85.0 + x, 140.0 + y);
        jsClosePath();
        jsStroke();
    }
    {
        jsBeginPath();
        jsSetFillStyle(DEFAULT_COLOR);
        jsArc(112.0 + x, 112.0 + y, 25.0, 0, 2 * Math.PI as f32);
        jsClosePath();
        jsFill();
    }
    {
        jsBeginPath();
        jsSetFillStyle(LIGHT_GREEN_COLOR);
        jsArc(112.0 + x, 112.0 + y, 20.0, 0, 2 * Math.PI as f32);
        jsClosePath();
        jsFill();
    }
    {
        jsBeginPath();
        jsSetFillStyle(DEFAULT_COLOR);
        jsLineWidth(2.0);
        jsMoveTo(70.0 + x, 40.0 + y);
        jsLineTo(152.0 + x, 40.0 + y);
        jsLineTo(140.0 + x, 77.0 + y);
        jsLineTo(80.0 + x, 77.0 + y);
        jsClosePath();
        jsFill();
    }
    {
        jsBeginPath();
        jsSetFillStyle(DEFAULT_COLOR);
        jsLineWidth(2.0);
        jsMoveTo(84.0 + x, 145.0 + y);
        jsLineTo(140.0 + x,145.0 + y);
        jsLineTo(152.0 + x, 180.0 + y);
        jsLineTo(72.0 + x, 180.0 + y);
        jsClosePath();
        jsFill();
    }
    {
        jsBeginPath();
        jsSetFillStyle(DEFAULT_COLOR);
        jsLineWidth(2.0);
        jsMoveTo(147.0 + x, 85.0 + y);
        jsLineTo(183.0 + x, 70.0 + y);
        jsLineTo(183.0 + x, 155.0 + y);
        jsLineTo(147.0 + x, 140.0 + y);
        jsClosePath();
        jsFill();
    }
    {
        jsBeginPath();
        jsSetFillStyle(DEFAULT_COLOR);
        jsLineWidth(2.0);
        jsMoveTo(80.0 + x, 85.0 + y);
        jsLineTo(80.0 + x, 140.0 + y);
        jsLineTo(40.0 + x, 155.0 + y);
        jsLineTo(40.0 + x, 70.0 + y);
        jsClosePath();
        jsFill();
    }
}
