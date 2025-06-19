(module
 (type $0 (func (param i32) (result i32)))
 (type $1 (func (param i32 i32)))
 (type $2 (func (param i32) (result f32)))
 (type $3 (func (param i32 f32)))
 (type $4 (func (param i32)))
 (type $5 (func (param i32 i32) (result i32)))
 (type $6 (func))
 (type $7 (func (param i32 i32 i32) (result i32)))
 (type $8 (func (param i32 i32 i32)))
 (type $9 (func (param f32 f32)))
 (type $10 (func (param i32 f32 f32 f32 f32 f32 f32 i32) (result i32)))
 (type $11 (func (result i32)))
 (type $12 (func (param i32 i32 i32 i32)))
 (type $13 (func (result f64)))
 (type $14 (func (param f32)))
 (type $15 (func (param i32 f32 f32 f32 f32 f32 f32 i32 f32) (result i32)))
 (type $16 (func (param i32 i32 i64) (result i32)))
 (type $17 (func (param i64) (result i64)))
 (type $18 (func (param i64)))
 (type $19 (func (param f32 f32 f32 f32)))
 (type $20 (func (param f32 f32 f32 f32 f32)))
 (type $21 (func (param i32 f32 f32)))
 (type $22 (func (param i32 i64 i32)))
 (type $23 (func (param i64 i32) (result i32)))
 (type $24 (func (param i32 i64 i32 i32)))
 (type $25 (func (param i32 i32 i32 i32) (result i32)))
 (import "env" "jsDatenow" (func $assembly/index/jsDatenow (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "seed" (func $~lib/builtins/seed (result f64)))
 (import "env" "jsClearRect" (func $assembly/index/jsClearRect (param f32 f32 f32 f32)))
 (import "env" "jsBeginPath" (func $assembly/index/jsBeginPath))
 (import "env" "jsSetFillStyle" (func $assembly/index/jsSetFillStyle (param i32)))
 (import "env" "jsMoveTo" (func $assembly/index/jsMoveTo (param f32 f32)))
 (import "env" "jsLineTo" (func $assembly/index/jsLineTo (param f32 f32)))
 (import "env" "jsClosePath" (func $assembly/index/jsClosePath))
 (import "env" "jsFill" (func $assembly/index/jsFill))
 (import "env" "jsStroke" (func $assembly/index/jsStroke))
 (import "env" "jsSetStrokeStyle" (func $assembly/index/jsSetStrokeStyle (param i32)))
 (import "env" "jsLineWidth" (func $assembly/index/jsLineWidth (param f32)))
 (import "env" "jsArc" (func $assembly/index/jsArc (param f32 f32 f32 f32 f32)))
 (import "env" "jsSetFont" (func $assembly/index/jsSetFont (param i32)))
 (import "env" "jsFillText" (func $assembly/index/jsFillText (param i32 f32 f32)))
 (import "env" "jsRequestAnimationFrame" (func $assembly/index/jsRequestAnimationFrame))
 (global $assembly/index/CANVAS_WIDTH f32 (f32.const 800))
 (global $assembly/index/CANVAS_HEIGHT f32 (f32.const 1e3))
 (global $assembly/index/BOSS_WIDTH f32 (f32.const 225))
 (global $assembly/index/BOSS_HEIGHT f32 (f32.const 225))
 (global $assembly/index/BOSS_MAX_HP i32 (i32.const 999))
 (global $assembly/index/MAX_BULLET_NUMBER i32 (i32.const 500))
 (global $assembly/index/BULLET_WIDTH f32 (f32.const 28))
 (global $assembly/index/BULLET_HEIGHT f32 (f32.const 28))
 (global $assembly/index/BULLET_STRENGTH i32 (i32.const 2))
 (global $assembly/index/SHIP_WIDTH f32 (f32.const 44))
 (global $assembly/index/SHIP_HEIGHT f32 (f32.const 50))
 (global $assembly/index/SHIP_STEP f32 (f32.const 1))
 (global $assembly/index/SHOT_WIDTH f32 (f32.const 5))
 (global $assembly/index/SHOT_HEIGHT f32 (f32.const 5))
 (global $assembly/index/SHOT_SPEED f32 (f32.const 10))
 (global $assembly/index/SUPER_SHOT_WIDTH f32 (f32.const 100))
 (global $assembly/index/SUPER_SHOT_HEIGHT f32 (f32.const 40))
 (global $assembly/index/SUPER_WAIT_TIME i32 (i32.const 100))
 (global $assembly/index/SUPER_TIME i32 (i32.const 200))
 (global $assembly/index/LIMIT_TIME i32 (i32.const 59))
 (global $assembly/index/DEFAULT_COLOR i32 (i32.const 32))
 (global $assembly/index/LIGHT_GREEN_COLOR i32 (i32.const 96))
 (global $assembly/index/GREEN_DARK_LIGHT i32 (i32.const 160))
 (global $assembly/index/LIGHT_YELLOR_GREEN i32 (i32.const 224))
 (global $assembly/index/Stage.openning i32 (i32.const 0))
 (global $assembly/index/Stage.playing i32 (i32.const 1))
 (global $assembly/index/Stage.gameover i32 (i32.const 2))
 (global $assembly/index/Stage.gameclear i32 (i32.const 3))
 (global $assembly/index/fps i32 (i32.const 60))
 (global $assembly/index/last_frame (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Stub i32 (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Minimal i32 (i32.const 1))
 (global $~lib/shared/runtime/Runtime.Incremental i32 (i32.const 2))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/native/ASC_LOW_MEMORY_LIMIT i32 (i32.const 0))
 (global $~lib/native/ASC_RUNTIME i32 (i32.const 2))
 (global $assembly/index/game (mut i32) (i32.const 0))
 (global $~lib/math/random_seeded (mut i32) (i32.const 0))
 (global $~lib/math/random_state0_64 (mut i64) (i64.const 0))
 (global $~lib/math/random_state1_64 (mut i64) (i64.const 0))
 (global $~lib/math/random_state0_32 (mut i32) (i32.const 0))
 (global $~lib/math/random_state1_32 (mut i32) (i32.const 0))
 (global $~lib/math/NativeMath.PI f64 (f64.const 3.141592653589793))
 (global $~lib/native/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/builtins/i32.MAX_VALUE i32 (i32.const 2147483647))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 3456))
 (global $~lib/memory/__data_end i32 (i32.const 3540))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 36308))
 (global $~lib/memory/__heap_base i32 (i32.const 36308))
 (memory $0 1)
 (data $0 (i32.const 12) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00&\00\00\00r\00g\00b\00a\00(\000\00,\001\002\008\00,\00 \000\00,\00 \001\00.\000\00)\00\00\00\00\00\00\00")
 (data $1 (i32.const 76) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00*\00\00\00r\00g\00b\00a\00(\002\002\006\00,\002\003\008\00,\001\009\007\00,\001\00.\000\00)\00\00\00")
 (data $2 (i32.const 140) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00r\00g\00b\00a\00(\001\007\00,\003\001\00,\001\007\00,\001\00.\000\00)\00\00\00\00\00\00\00\00\00")
 (data $3 (i32.const 204) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00*\00\00\00r\00g\00b\00a\00(\001\006\008\00,\002\003\000\00,\002\000\007\00,\001\00.\000\00)\00\00\00")
 (data $4 (i32.const 268) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00\00\00\00\00")
 (data $5 (i32.const 332) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $6 (i32.const 400) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $7 (i32.const 432) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $8 (i32.const 460) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\00\00\00\00")
 (data $9 (i32.const 524) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data $10 (i32.const 576) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $11 (i32.const 604) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $12 (i32.const 668) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data $13 (i32.const 716) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00\00\00")
 (data $14 (i32.const 764) "|\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $15 (i32.const 892) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\16\00\00\006\000\00p\00x\00 \00m\00y\00f\00o\00n\00t\00\00\00\00\00\00\00")
 (data $16 (i32.const 940) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0e\00\00\00B\00A\00R\00R\00A\00G\00E\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $17 (i32.const 988) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\16\00\00\002\008\00p\00x\00 \00m\00y\00f\00o\00n\00t\00\00\00\00\00\00\00")
 (data $18 (i32.const 1036) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\08\00\00\00W\00A\00S\00M\00\00\00\00\00")
 (data $19 (i32.const 1068) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\16\00\00\00C\00l\00i\00c\00k\00 \00S\00t\00a\00r\00t\00\00\00\00\00\00\00")
 (data $20 (i32.const 1116) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\12\00\00\00G\00A\00M\00E\00 \00O\00V\00E\00R\00\00\00\00\00\00\00\00\00\00\00")
 (data $21 (i32.const 1164) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1a\00\00\00C\00l\00i\00c\00k\00 \00R\00e\00S\00t\00a\00r\00t\00\00\00")
 (data $22 (i32.const 1212) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00G\00A\00M\00E\00 \00C\00L\00E\00A\00R\00\00\00\00\00\00\00\00\00")
 (data $23 (i32.const 1260) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1e\00\00\00C\00o\00n\00g\00r\00a\00t\00u\00a\00t\00i\00o\00n\00s\00!\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $24 (i32.const 1324) "|\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006\00\00\00\00\00\00\00\00\00")
 (data $25 (i32.const 1452) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s\00\00\00\00\00\00\00")
 (data $26 (i32.const 1516) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\000\00\00\00\00\00\00\00\00\00\00\00")
 (data $27 (i32.const 1548) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data $28 (i32.const 1948) "\1c\04\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $29 (i32.const 3004) "\\\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\00\00\00\00\00")
 (data $30 (i32.const 3100) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\04\00\00\000\000\00\00\00\00\00\00\00\00\00")
 (data $31 (i32.const 3132) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $32 (i32.const 3164) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00.\00\00\00\00\00\00\00\00\00\00\00")
 (data $33 (i32.const 3196) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\10\00\00\00 \00s\00e\00c\00o\00n\00d\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $34 (i32.const 3244) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00 \00/\00 \00\00\00\00\00\00\00")
 (data $35 (i32.const 3276) "\1c\00\00\00\03\00\00\00\00\00\00\00\13\00\00\00\0c\00\00\00\00\00\00\00\c0\0c\00\00\00\00\00\00")
 (data $36 (i32.const 3308) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\16\00\00\001\002\00p\00x\00 \00m\00y\00f\00o\00n\00t\00\00\00\00\00\00\00")
 (data $37 (i32.const 3356) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\16\00\00\001\008\00p\00x\00 \00m\00y\00f\00o\00n\00t\00\00\00\00\00\00\00")
 (data $38 (i32.const 3404) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\12\00\00\00B\00u\00l\00l\00e\00t\00s\00:\00 \00\00\00\00\00\00\00\00\00\00\00")
 (data $39 (i32.const 3456) "\14\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00\00\00\00\00 \00\00\00 \00\00\00\02A\00\00 \00\00\00\02A\00\00\02A\00\00 \00\00\00\02A\00\00\02A\00\00 \00\00\00\02A\00\00\02\t\00\00 \00\00\00 \00\00\00\04A\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "animationFrameHandler" (func $assembly/index/animationFrameHandler))
 (export "startAnimation" (func $assembly/index/startAnimation))
 (export "shot" (func $assembly/index/shot))
 (export "move" (func $assembly/index/move))
 (export "memory" (memory $0))
 (start $~start)
 (func $assembly/index/Game#set:stage (param $this i32) (param $stage i32)
  local.get $this
  local.get $stage
  i32.store
 )
 (func $assembly/index/Game#set:shooting (param $this i32) (param $shooting i32)
  local.get $this
  local.get $shooting
  i32.store8 offset=4
 )
 (func $assembly/index/Game#set:wait_time (param $this i32) (param $wait_time i32)
  local.get $this
  local.get $wait_time
  i32.store offset=8
 )
 (func $assembly/index/Game#set:super_time (param $this i32) (param $super_time i32)
  local.get $this
  local.get $super_time
  i32.store offset=12
 )
 (func $assembly/index/Ship#set:x (param $this i32) (param $x f32)
  local.get $this
  local.get $x
  f32.store
 )
 (func $assembly/index/Ship#set:y (param $this i32) (param $y f32)
  local.get $this
  local.get $y
  f32.store offset=4
 )
 (func $assembly/index/Ship#set:dx (param $this i32) (param $dx f32)
  local.get $this
  local.get $dx
  f32.store offset=8
 )
 (func $assembly/index/Ship#set:dy (param $this i32) (param $dy f32)
  local.get $this
  local.get $dy
  f32.store offset=12
 )
 (func $assembly/index/Ship#set:w (param $this i32) (param $w f32)
  local.get $this
  local.get $w
  f32.store offset=16
 )
 (func $assembly/index/Ship#set:h (param $this i32) (param $h f32)
  local.get $this
  local.get $h
  f32.store offset=20
 )
 (func $assembly/index/Ship#set:hp (param $this i32) (param $hp i32)
  local.get $this
  local.get $hp
  i32.store offset=24
 )
 (func $assembly/index/Ship#set:mouse_x (param $this i32) (param $mouse_x f32)
  local.get $this
  local.get $mouse_x
  f32.store offset=28
 )
 (func $~lib/rt/itcms/Object#set:nextWithColor (param $this i32) (param $nextWithColor i32)
  local.get $this
  local.get $nextWithColor
  i32.store offset=4
 )
 (func $~lib/rt/itcms/Object#set:prev (param $this i32) (param $prev i32)
  local.get $this
  local.get $prev
  i32.store offset=8
 )
 (func $~lib/rt/itcms/initLazy (param $space i32) (result i32)
  local.get $space
  local.get $space
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $space
  local.get $space
  call $~lib/rt/itcms/Object#set:prev
  local.get $space
  return
 )
 (func $~lib/rt/itcms/Object#get:nextWithColor (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/rt/itcms/Object#get:next (param $this i32) (result i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  return
 )
 (func $~lib/rt/itcms/Object#get:color (param $this i32) (result i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.and
  return
 )
 (func $~lib/rt/itcms/visitRoots (param $cookie i32)
  (local $pn i32)
  (local $iter i32)
  local.get $cookie
  call $~lib/rt/__visit_globals
  global.get $~lib/rt/itcms/pinSpace
  local.set $pn
  local.get $pn
  call $~lib/rt/itcms/Object#get:next
  local.set $iter
  loop $while-continue|0
   local.get $iter
   local.get $pn
   i32.ne
   if
    i32.const 1
    drop
    local.get $iter
    call $~lib/rt/itcms/Object#get:color
    i32.const 3
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 352
     i32.const 160
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $iter
    i32.const 20
    i32.add
    local.get $cookie
    call $~lib/rt/__visit_members
    local.get $iter
    call $~lib/rt/itcms/Object#get:next
    local.set $iter
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#set:color (param $this i32) (param $color i32)
  local.get $this
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $color
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#get:prev (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/rt/itcms/Object#set:next (param $this i32) (param $obj i32)
  local.get $this
  local.get $obj
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.and
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#unlink (param $this i32)
  (local $next i32)
  (local $prev i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:next
  local.set $next
  local.get $next
  i32.const 0
  i32.eq
  if
   i32.const 1
   drop
   local.get $this
   call $~lib/rt/itcms/Object#get:prev
   i32.const 0
   i32.eq
   if (result i32)
    local.get $this
    global.get $~lib/memory/__heap_base
    i32.lt_u
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 352
    i32.const 128
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  local.get $this
  call $~lib/rt/itcms/Object#get:prev
  local.set $prev
  i32.const 1
  drop
  local.get $prev
  i32.eqz
  if
   i32.const 0
   i32.const 352
   i32.const 132
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $next
  local.get $prev
  call $~lib/rt/itcms/Object#set:prev
  local.get $prev
  local.get $next
  call $~lib/rt/itcms/Object#set:next
 )
 (func $~lib/rt/itcms/Object#get:rtId (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/shared/typeinfo/Typeinfo#get:flags (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/rt/__typeinfo (param $id i32) (result i32)
  (local $ptr i32)
  global.get $~lib/rt/__rtti_base
  local.set $ptr
  local.get $id
  local.get $ptr
  i32.load
  i32.gt_u
  if
   i32.const 480
   i32.const 544
   i32.const 21
   i32.const 28
   call $~lib/builtins/abort
   unreachable
  end
  local.get $ptr
  i32.const 4
  i32.add
  local.get $id
  i32.const 4
  i32.mul
  i32.add
  call $~lib/shared/typeinfo/Typeinfo#get:flags
  return
 )
 (func $~lib/rt/itcms/Object#get:isPointerfree (param $this i32) (result i32)
  (local $rtId i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:rtId
  local.set $rtId
  local.get $rtId
  i32.const 2
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $rtId
   call $~lib/rt/__typeinfo
   i32.const 32
   i32.and
   i32.const 0
   i32.ne
  end
  return
 )
 (func $~lib/rt/itcms/Object#linkTo (param $this i32) (param $list i32) (param $withColor i32)
  (local $prev i32)
  local.get $list
  call $~lib/rt/itcms/Object#get:prev
  local.set $prev
  local.get $this
  local.get $list
  local.get $withColor
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $this
  local.get $prev
  call $~lib/rt/itcms/Object#set:prev
  local.get $prev
  local.get $this
  call $~lib/rt/itcms/Object#set:next
  local.get $list
  local.get $this
  call $~lib/rt/itcms/Object#set:prev
 )
 (func $~lib/rt/itcms/Object#makeGray (param $this i32)
  (local $1 i32)
  local.get $this
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $this
   call $~lib/rt/itcms/Object#get:prev
   local.tee $1
   i32.eqz
   if (result i32)
    i32.const 0
    i32.const 352
    i32.const 148
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   else
    local.get $1
   end
   global.set $~lib/rt/itcms/iter
  end
  local.get $this
  call $~lib/rt/itcms/Object#unlink
  local.get $this
  global.get $~lib/rt/itcms/toSpace
  local.get $this
  call $~lib/rt/itcms/Object#get:isPointerfree
  if (result i32)
   global.get $~lib/rt/itcms/white
   i32.eqz
  else
   i32.const 2
  end
  call $~lib/rt/itcms/Object#linkTo
 )
 (func $~lib/rt/itcms/__visit (param $ptr i32) (param $cookie i32)
  (local $obj i32)
  local.get $ptr
  i32.eqz
  if
   return
  end
  local.get $ptr
  i32.const 20
  i32.sub
  local.set $obj
  i32.const 0
  drop
  local.get $obj
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $obj
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $~lib/rt/itcms/visitStack (param $cookie i32)
  (local $ptr i32)
  global.get $~lib/memory/__stack_pointer
  local.set $ptr
  loop $while-continue|0
   local.get $ptr
   global.get $~lib/memory/__heap_base
   i32.lt_u
   if
    local.get $ptr
    i32.load
    local.get $cookie
    call $~lib/rt/itcms/__visit
    local.get $ptr
    i32.const 4
    i32.add
    local.set $ptr
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/common/BLOCK#get:mmInfo (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/rt/itcms/Object#get:size (param $this i32) (result i32)
  i32.const 4
  local.get $this
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  return
 )
 (func $~lib/rt/tlsf/Root#set:flMap (param $this i32) (param $flMap i32)
  local.get $this
  local.get $flMap
  i32.store
 )
 (func $~lib/rt/common/BLOCK#set:mmInfo (param $this i32) (param $mmInfo i32)
  local.get $this
  local.get $mmInfo
  i32.store
 )
 (func $~lib/rt/tlsf/Block#set:prev (param $this i32) (param $prev i32)
  local.get $this
  local.get $prev
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/Block#set:next (param $this i32) (param $next i32)
  local.get $this
  local.get $next
  i32.store offset=8
 )
 (func $~lib/rt/tlsf/Block#get:prev (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/rt/tlsf/Block#get:next (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/rt/tlsf/Root#get:flMap (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/rt/tlsf/removeBlock (param $root i32) (param $block i32)
  (local $blockInfo i32)
  (local $size i32)
  (local $fl i32)
  (local $sl i32)
  (local $6 i32)
  (local $7 i32)
  (local $boundedSize i32)
  (local $prev i32)
  (local $next i32)
  (local $root|11 i32)
  (local $fl|12 i32)
  (local $sl|13 i32)
  (local $root|14 i32)
  (local $fl|15 i32)
  (local $sl|16 i32)
  (local $head i32)
  (local $root|18 i32)
  (local $fl|19 i32)
  (local $slMap i32)
  (local $root|21 i32)
  (local $fl|22 i32)
  (local $slMap|23 i32)
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $blockInfo
  i32.const 1
  drop
  local.get $blockInfo
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 624
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $blockInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $size
  i32.const 1
  drop
  local.get $size
  i32.const 12
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 624
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $size
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $fl
   local.get $size
   i32.const 4
   i32.shr_u
   local.set $sl
  else
   local.get $size
   local.tee $6
   i32.const 1073741820
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_u
   select
   local.set $boundedSize
   i32.const 31
   local.get $boundedSize
   i32.clz
   i32.sub
   local.set $fl
   local.get $boundedSize
   local.get $fl
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $sl
   local.get $fl
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $fl
  end
  i32.const 1
  drop
  local.get $fl
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $sl
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 624
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
  call $~lib/rt/tlsf/Block#get:prev
  local.set $prev
  local.get $block
  call $~lib/rt/tlsf/Block#get:next
  local.set $next
  local.get $prev
  if
   local.get $prev
   local.get $next
   call $~lib/rt/tlsf/Block#set:next
  end
  local.get $next
  if
   local.get $next
   local.get $prev
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $block
  block $~lib/rt/tlsf/GETHEAD|inlined.0 (result i32)
   local.get $root
   local.set $root|11
   local.get $fl
   local.set $fl|12
   local.get $sl
   local.set $sl|13
   local.get $root|11
   local.get $fl|12
   i32.const 4
   i32.shl
   local.get $sl|13
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
   br $~lib/rt/tlsf/GETHEAD|inlined.0
  end
  i32.eq
  if
   local.get $root
   local.set $root|14
   local.get $fl
   local.set $fl|15
   local.get $sl
   local.set $sl|16
   local.get $next
   local.set $head
   local.get $root|14
   local.get $fl|15
   i32.const 4
   i32.shl
   local.get $sl|16
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $head
   i32.store offset=96
   local.get $next
   i32.eqz
   if
    block $~lib/rt/tlsf/GETSL|inlined.0 (result i32)
     local.get $root
     local.set $root|18
     local.get $fl
     local.set $fl|19
     local.get $root|18
     local.get $fl|19
     i32.const 2
     i32.shl
     i32.add
     i32.load offset=4
     br $~lib/rt/tlsf/GETSL|inlined.0
    end
    local.set $slMap
    local.get $root
    local.set $root|21
    local.get $fl
    local.set $fl|22
    local.get $slMap
    i32.const 1
    local.get $sl
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $slMap
    local.set $slMap|23
    local.get $root|21
    local.get $fl|22
    i32.const 2
    i32.shl
    i32.add
    local.get $slMap|23
    i32.store offset=4
    local.get $slMap
    i32.eqz
    if
     local.get $root
     local.get $root
     call $~lib/rt/tlsf/Root#get:flMap
     i32.const 1
     local.get $fl
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     call $~lib/rt/tlsf/Root#set:flMap
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $root i32) (param $block i32)
  (local $blockInfo i32)
  (local $block|3 i32)
  (local $right i32)
  (local $rightInfo i32)
  (local $block|6 i32)
  (local $block|7 i32)
  (local $left i32)
  (local $leftInfo i32)
  (local $size i32)
  (local $fl i32)
  (local $sl i32)
  (local $13 i32)
  (local $14 i32)
  (local $boundedSize i32)
  (local $root|16 i32)
  (local $fl|17 i32)
  (local $sl|18 i32)
  (local $head i32)
  (local $root|20 i32)
  (local $fl|21 i32)
  (local $sl|22 i32)
  (local $head|23 i32)
  (local $root|24 i32)
  (local $fl|25 i32)
  (local $root|26 i32)
  (local $fl|27 i32)
  (local $slMap i32)
  i32.const 1
  drop
  local.get $block
  i32.eqz
  if
   i32.const 0
   i32.const 624
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $blockInfo
  i32.const 1
  drop
  local.get $blockInfo
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 624
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETRIGHT|inlined.0 (result i32)
   local.get $block
   local.set $block|3
   local.get $block|3
   i32.const 4
   i32.add
   local.get $block|3
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   br $~lib/rt/tlsf/GETRIGHT|inlined.0
  end
  local.set $right
  local.get $right
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $rightInfo
  local.get $rightInfo
  i32.const 1
  i32.and
  if
   local.get $root
   local.get $right
   call $~lib/rt/tlsf/removeBlock
   local.get $block
   local.get $blockInfo
   i32.const 4
   i32.add
   local.get $rightInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.tee $blockInfo
   call $~lib/rt/common/BLOCK#set:mmInfo
   block $~lib/rt/tlsf/GETRIGHT|inlined.1 (result i32)
    local.get $block
    local.set $block|6
    local.get $block|6
    i32.const 4
    i32.add
    local.get $block|6
    call $~lib/rt/common/BLOCK#get:mmInfo
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    br $~lib/rt/tlsf/GETRIGHT|inlined.1
   end
   local.set $right
   local.get $right
   call $~lib/rt/common/BLOCK#get:mmInfo
   local.set $rightInfo
  end
  local.get $blockInfo
  i32.const 2
  i32.and
  if
   block $~lib/rt/tlsf/GETFREELEFT|inlined.0 (result i32)
    local.get $block
    local.set $block|7
    local.get $block|7
    i32.const 4
    i32.sub
    i32.load
    br $~lib/rt/tlsf/GETFREELEFT|inlined.0
   end
   local.set $left
   local.get $left
   call $~lib/rt/common/BLOCK#get:mmInfo
   local.set $leftInfo
   i32.const 1
   drop
   local.get $leftInfo
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 624
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $root
   local.get $left
   call $~lib/rt/tlsf/removeBlock
   local.get $left
   local.set $block
   local.get $block
   local.get $leftInfo
   i32.const 4
   i32.add
   local.get $blockInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.tee $blockInfo
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
  local.get $right
  local.get $rightInfo
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $blockInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $size
  i32.const 1
  drop
  local.get $size
  i32.const 12
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 624
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  drop
  local.get $block
  i32.const 4
  i32.add
  local.get $size
  i32.add
  local.get $right
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 624
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $right
  i32.const 4
  i32.sub
  local.get $block
  i32.store
  local.get $size
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $fl
   local.get $size
   i32.const 4
   i32.shr_u
   local.set $sl
  else
   local.get $size
   local.tee $13
   i32.const 1073741820
   local.tee $14
   local.get $13
   local.get $14
   i32.lt_u
   select
   local.set $boundedSize
   i32.const 31
   local.get $boundedSize
   i32.clz
   i32.sub
   local.set $fl
   local.get $boundedSize
   local.get $fl
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $sl
   local.get $fl
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $fl
  end
  i32.const 1
  drop
  local.get $fl
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $sl
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 624
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETHEAD|inlined.1 (result i32)
   local.get $root
   local.set $root|16
   local.get $fl
   local.set $fl|17
   local.get $sl
   local.set $sl|18
   local.get $root|16
   local.get $fl|17
   i32.const 4
   i32.shl
   local.get $sl|18
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
   br $~lib/rt/tlsf/GETHEAD|inlined.1
  end
  local.set $head
  local.get $block
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $block
  local.get $head
  call $~lib/rt/tlsf/Block#set:next
  local.get $head
  if
   local.get $head
   local.get $block
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $root
  local.set $root|20
  local.get $fl
  local.set $fl|21
  local.get $sl
  local.set $sl|22
  local.get $block
  local.set $head|23
  local.get $root|20
  local.get $fl|21
  i32.const 4
  i32.shl
  local.get $sl|22
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $head|23
  i32.store offset=96
  local.get $root
  local.get $root
  call $~lib/rt/tlsf/Root#get:flMap
  i32.const 1
  local.get $fl
  i32.shl
  i32.or
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $root
  local.set $root|26
  local.get $fl
  local.set $fl|27
  block $~lib/rt/tlsf/GETSL|inlined.1 (result i32)
   local.get $root
   local.set $root|24
   local.get $fl
   local.set $fl|25
   local.get $root|24
   local.get $fl|25
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=4
   br $~lib/rt/tlsf/GETSL|inlined.1
  end
  i32.const 1
  local.get $sl
  i32.shl
  i32.or
  local.set $slMap
  local.get $root|26
  local.get $fl|27
  i32.const 2
  i32.shl
  i32.add
  local.get $slMap
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $root i32) (param $start i32) (param $endU64 i64) (result i32)
  (local $end i32)
  (local $root|4 i32)
  (local $tail i32)
  (local $tailInfo i32)
  (local $size i32)
  (local $leftSize i32)
  (local $left i32)
  (local $root|10 i32)
  (local $tail|11 i32)
  local.get $endU64
  i32.wrap_i64
  local.set $end
  i32.const 1
  drop
  local.get $start
  i64.extend_i32_u
  local.get $endU64
  i64.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 624
   i32.const 382
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $start
  i32.const 4
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  i32.const 4
  i32.sub
  local.set $start
  local.get $end
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $end
  block $~lib/rt/tlsf/GETTAIL|inlined.0 (result i32)
   local.get $root
   local.set $root|4
   local.get $root|4
   i32.load offset=1568
   br $~lib/rt/tlsf/GETTAIL|inlined.0
  end
  local.set $tail
  i32.const 0
  local.set $tailInfo
  local.get $tail
  if
   i32.const 1
   drop
   local.get $start
   local.get $tail
   i32.const 4
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 624
    i32.const 389
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $start
   i32.const 16
   i32.sub
   local.get $tail
   i32.eq
   if
    local.get $start
    i32.const 16
    i32.sub
    local.set $start
    local.get $tail
    call $~lib/rt/common/BLOCK#get:mmInfo
    local.set $tailInfo
   else
   end
  else
   i32.const 1
   drop
   local.get $start
   local.get $root
   i32.const 1572
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 624
    i32.const 402
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $end
  local.get $start
  i32.sub
  local.set $size
  local.get $size
  i32.const 4
  i32.const 12
  i32.add
  i32.const 4
  i32.add
  i32.lt_u
  if
   i32.const 0
   return
  end
  local.get $size
  i32.const 2
  i32.const 4
  i32.mul
  i32.sub
  local.set $leftSize
  local.get $start
  local.set $left
  local.get $left
  local.get $leftSize
  i32.const 1
  i32.or
  local.get $tailInfo
  i32.const 2
  i32.and
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $left
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $left
  i32.const 0
  call $~lib/rt/tlsf/Block#set:next
  local.get $start
  i32.const 4
  i32.add
  local.get $leftSize
  i32.add
  local.set $tail
  local.get $tail
  i32.const 0
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $root
  local.set $root|10
  local.get $tail
  local.set $tail|11
  local.get $root|10
  local.get $tail|11
  i32.store offset=1568
  local.get $root
  local.get $left
  call $~lib/rt/tlsf/insertBlock
  i32.const 1
  return
 )
 (func $~lib/rt/tlsf/initialize
  (local $rootOffset i32)
  (local $pagesBefore i32)
  (local $pagesNeeded i32)
  (local $root i32)
  (local $root|4 i32)
  (local $tail i32)
  (local $fl i32)
  (local $root|7 i32)
  (local $fl|8 i32)
  (local $slMap i32)
  (local $sl i32)
  (local $root|11 i32)
  (local $fl|12 i32)
  (local $sl|13 i32)
  (local $head i32)
  (local $memStart i32)
  i32.const 0
  drop
  global.get $~lib/memory/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $rootOffset
  memory.size
  local.set $pagesBefore
  local.get $rootOffset
  i32.const 1572
  i32.add
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $pagesNeeded
  local.get $pagesNeeded
  local.get $pagesBefore
  i32.gt_s
  if (result i32)
   local.get $pagesNeeded
   local.get $pagesBefore
   i32.sub
   memory.grow
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  local.get $rootOffset
  local.set $root
  local.get $root
  i32.const 0
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $root
  local.set $root|4
  i32.const 0
  local.set $tail
  local.get $root|4
  local.get $tail
  i32.store offset=1568
  i32.const 0
  local.set $fl
  loop $for-loop|0
   local.get $fl
   i32.const 23
   i32.lt_u
   if
    local.get $root
    local.set $root|7
    local.get $fl
    local.set $fl|8
    i32.const 0
    local.set $slMap
    local.get $root|7
    local.get $fl|8
    i32.const 2
    i32.shl
    i32.add
    local.get $slMap
    i32.store offset=4
    i32.const 0
    local.set $sl
    loop $for-loop|1
     local.get $sl
     i32.const 16
     i32.lt_u
     if
      local.get $root
      local.set $root|11
      local.get $fl
      local.set $fl|12
      local.get $sl
      local.set $sl|13
      i32.const 0
      local.set $head
      local.get $root|11
      local.get $fl|12
      i32.const 4
      i32.shl
      local.get $sl|13
      i32.add
      i32.const 2
      i32.shl
      i32.add
      local.get $head
      i32.store offset=96
      local.get $sl
      i32.const 1
      i32.add
      local.set $sl
      br $for-loop|1
     end
    end
    local.get $fl
    i32.const 1
    i32.add
    local.set $fl
    br $for-loop|0
   end
  end
  local.get $rootOffset
  i32.const 1572
  i32.add
  local.set $memStart
  i32.const 0
  drop
  local.get $root
  local.get $memStart
  memory.size
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  drop
  local.get $root
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/checkUsedBlock (param $ptr i32) (result i32)
  (local $block i32)
  local.get $ptr
  i32.const 4
  i32.sub
  local.set $block
  local.get $ptr
  i32.const 0
  i32.ne
  if (result i32)
   local.get $ptr
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  if (result i32)
   local.get $block
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 1
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 624
   i32.const 562
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
  return
 )
 (func $~lib/rt/tlsf/freeBlock (param $root i32) (param $block i32)
  i32.const 0
  drop
  local.get $block
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 1
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $root
  local.get $block
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/__free (param $ptr i32)
  local.get $ptr
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   return
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $ptr
  call $~lib/rt/tlsf/checkUsedBlock
  call $~lib/rt/tlsf/freeBlock
 )
 (func $~lib/rt/itcms/free (param $obj i32)
  local.get $obj
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   local.get $obj
   i32.const 0
   call $~lib/rt/itcms/Object#set:nextWithColor
   local.get $obj
   i32.const 0
   call $~lib/rt/itcms/Object#set:prev
  else
   global.get $~lib/rt/itcms/total
   local.get $obj
   call $~lib/rt/itcms/Object#get:size
   i32.sub
   global.set $~lib/rt/itcms/total
   i32.const 0
   drop
   local.get $obj
   i32.const 4
   i32.add
   call $~lib/rt/tlsf/__free
  end
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $obj i32)
  (local $1 i32)
  (local $black i32)
  (local $from i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      local.set $1
      local.get $1
      i32.const 0
      i32.eq
      br_if $case0|0
      local.get $1
      i32.const 1
      i32.eq
      br_if $case1|0
      local.get $1
      i32.const 2
      i32.eq
      br_if $case2|0
      br $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     i32.const 0
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     i32.const 1
     i32.mul
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $black
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $obj
    loop $while-continue|1
     local.get $obj
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     if
      local.get $obj
      global.set $~lib/rt/itcms/iter
      local.get $obj
      call $~lib/rt/itcms/Object#get:color
      local.get $black
      i32.ne
      if
       local.get $obj
       local.get $black
       call $~lib/rt/itcms/Object#set:color
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $obj
       i32.const 20
       i32.add
       i32.const 0
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       i32.const 1
       i32.mul
       return
      end
      local.get $obj
      call $~lib/rt/itcms/Object#get:next
      local.set $obj
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    i32.const 0
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $obj
    local.get $obj
    global.get $~lib/rt/itcms/toSpace
    i32.eq
    if
     i32.const 0
     call $~lib/rt/itcms/visitStack
     global.get $~lib/rt/itcms/iter
     call $~lib/rt/itcms/Object#get:next
     local.set $obj
     loop $while-continue|2
      local.get $obj
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      if
       local.get $obj
       call $~lib/rt/itcms/Object#get:color
       local.get $black
       i32.ne
       if
        local.get $obj
        local.get $black
        call $~lib/rt/itcms/Object#set:color
        local.get $obj
        i32.const 20
        i32.add
        i32.const 0
        call $~lib/rt/__visit_members
       end
       local.get $obj
       call $~lib/rt/itcms/Object#get:next
       local.set $obj
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $from
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $from
     global.set $~lib/rt/itcms/toSpace
     local.get $black
     global.set $~lib/rt/itcms/white
     local.get $from
     call $~lib/rt/itcms/Object#get:next
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    i32.const 1
    i32.mul
    return
   end
   global.get $~lib/rt/itcms/iter
   local.set $obj
   local.get $obj
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $obj
    call $~lib/rt/itcms/Object#get:next
    global.set $~lib/rt/itcms/iter
    i32.const 1
    drop
    local.get $obj
    call $~lib/rt/itcms/Object#get:color
    global.get $~lib/rt/itcms/white
    i32.eqz
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 352
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $obj
    call $~lib/rt/itcms/free
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:nextWithColor
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:prev
   i32.const 0
   global.set $~lib/rt/itcms/state
   br $break|0
  end
  i32.const 0
  return
 )
 (func $~lib/rt/itcms/interrupt
  (local $budget i32)
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 1024
  i32.const 200
  i32.mul
  i32.const 100
  i32.div_u
  local.set $budget
  loop $do-loop|0
   local.get $budget
   call $~lib/rt/itcms/step
   i32.sub
   local.set $budget
   global.get $~lib/rt/itcms/state
   i32.const 0
   i32.eq
   if
    i32.const 0
    drop
    global.get $~lib/rt/itcms/total
    i64.extend_i32_u
    i32.const 200
    i64.extend_i32_u
    i64.mul
    i64.const 100
    i64.div_u
    i32.wrap_i64
    i32.const 1024
    i32.add
    global.set $~lib/rt/itcms/threshold
    i32.const 0
    drop
    return
   end
   local.get $budget
   i32.const 0
   i32.gt_s
   br_if $do-loop|0
  end
  i32.const 0
  drop
  global.get $~lib/rt/itcms/total
  i32.const 1024
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.sub
  i32.const 1024
  i32.lt_u
  i32.mul
  i32.add
  global.set $~lib/rt/itcms/threshold
  i32.const 0
  drop
 )
 (func $~lib/rt/tlsf/computeSize (param $size i32) (result i32)
  local.get $size
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $size
   i32.const 4
   i32.add
   i32.const 15
   i32.add
   i32.const 15
   i32.const -1
   i32.xor
   i32.and
   i32.const 4
   i32.sub
  end
  return
 )
 (func $~lib/rt/tlsf/prepareSize (param $size i32) (result i32)
  local.get $size
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 288
   i32.const 624
   i32.const 461
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $size
  call $~lib/rt/tlsf/computeSize
  return
 )
 (func $~lib/rt/tlsf/roundSize (param $size i32) (result i32)
  local.get $size
  i32.const 536870910
  i32.lt_u
  if (result i32)
   local.get $size
   i32.const 1
   i32.const 27
   local.get $size
   i32.clz
   i32.sub
   i32.shl
   i32.add
   i32.const 1
   i32.sub
  else
   local.get $size
  end
  return
 )
 (func $~lib/rt/tlsf/searchBlock (param $root i32) (param $size i32) (result i32)
  (local $fl i32)
  (local $sl i32)
  (local $requestSize i32)
  (local $root|5 i32)
  (local $fl|6 i32)
  (local $slMap i32)
  (local $head i32)
  (local $flMap i32)
  (local $root|10 i32)
  (local $fl|11 i32)
  (local $root|12 i32)
  (local $fl|13 i32)
  (local $sl|14 i32)
  (local $root|15 i32)
  (local $fl|16 i32)
  (local $sl|17 i32)
  local.get $size
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $fl
   local.get $size
   i32.const 4
   i32.shr_u
   local.set $sl
  else
   local.get $size
   call $~lib/rt/tlsf/roundSize
   local.set $requestSize
   i32.const 4
   i32.const 8
   i32.mul
   i32.const 1
   i32.sub
   local.get $requestSize
   i32.clz
   i32.sub
   local.set $fl
   local.get $requestSize
   local.get $fl
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $sl
   local.get $fl
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $fl
  end
  i32.const 1
  drop
  local.get $fl
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $sl
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 624
   i32.const 334
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETSL|inlined.2 (result i32)
   local.get $root
   local.set $root|5
   local.get $fl
   local.set $fl|6
   local.get $root|5
   local.get $fl|6
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=4
   br $~lib/rt/tlsf/GETSL|inlined.2
  end
  i32.const 0
  i32.const -1
  i32.xor
  local.get $sl
  i32.shl
  i32.and
  local.set $slMap
  i32.const 0
  local.set $head
  local.get $slMap
  i32.eqz
  if
   local.get $root
   call $~lib/rt/tlsf/Root#get:flMap
   i32.const 0
   i32.const -1
   i32.xor
   local.get $fl
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.set $flMap
   local.get $flMap
   i32.eqz
   if
    i32.const 0
    local.set $head
   else
    local.get $flMap
    i32.ctz
    local.set $fl
    block $~lib/rt/tlsf/GETSL|inlined.3 (result i32)
     local.get $root
     local.set $root|10
     local.get $fl
     local.set $fl|11
     local.get $root|10
     local.get $fl|11
     i32.const 2
     i32.shl
     i32.add
     i32.load offset=4
     br $~lib/rt/tlsf/GETSL|inlined.3
    end
    local.set $slMap
    i32.const 1
    drop
    local.get $slMap
    i32.eqz
    if
     i32.const 0
     i32.const 624
     i32.const 347
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    block $~lib/rt/tlsf/GETHEAD|inlined.2 (result i32)
     local.get $root
     local.set $root|12
     local.get $fl
     local.set $fl|13
     local.get $slMap
     i32.ctz
     local.set $sl|14
     local.get $root|12
     local.get $fl|13
     i32.const 4
     i32.shl
     local.get $sl|14
     i32.add
     i32.const 2
     i32.shl
     i32.add
     i32.load offset=96
     br $~lib/rt/tlsf/GETHEAD|inlined.2
    end
    local.set $head
   end
  else
   block $~lib/rt/tlsf/GETHEAD|inlined.3 (result i32)
    local.get $root
    local.set $root|15
    local.get $fl
    local.set $fl|16
    local.get $slMap
    i32.ctz
    local.set $sl|17
    local.get $root|15
    local.get $fl|16
    i32.const 4
    i32.shl
    local.get $sl|17
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
    br $~lib/rt/tlsf/GETHEAD|inlined.3
   end
   local.set $head
  end
  local.get $head
  return
 )
 (func $~lib/rt/tlsf/growMemory (param $root i32) (param $size i32)
  (local $pagesBefore i32)
  (local $root|3 i32)
  (local $pagesNeeded i32)
  (local $5 i32)
  (local $6 i32)
  (local $pagesWanted i32)
  (local $pagesAfter i32)
  i32.const 0
  drop
  local.get $size
  i32.const 256
  i32.ge_u
  if
   local.get $size
   call $~lib/rt/tlsf/roundSize
   local.set $size
  end
  memory.size
  local.set $pagesBefore
  local.get $size
  i32.const 4
  local.get $pagesBefore
  i32.const 16
  i32.shl
  i32.const 4
  i32.sub
  block $~lib/rt/tlsf/GETTAIL|inlined.1 (result i32)
   local.get $root
   local.set $root|3
   local.get $root|3
   i32.load offset=1568
   br $~lib/rt/tlsf/GETTAIL|inlined.1
  end
  i32.ne
  i32.shl
  i32.add
  local.set $size
  local.get $size
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $pagesNeeded
  local.get $pagesBefore
  local.tee $5
  local.get $pagesNeeded
  local.tee $6
  local.get $5
  local.get $6
  i32.gt_s
  select
  local.set $pagesWanted
  local.get $pagesWanted
  memory.grow
  i32.const 0
  i32.lt_s
  if
   local.get $pagesNeeded
   memory.grow
   i32.const 0
   i32.lt_s
   if
    unreachable
   end
  end
  memory.size
  local.set $pagesAfter
  local.get $root
  local.get $pagesBefore
  i32.const 16
  i32.shl
  local.get $pagesAfter
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  drop
 )
 (func $~lib/rt/tlsf/prepareBlock (param $root i32) (param $block i32) (param $size i32)
  (local $blockInfo i32)
  (local $remaining i32)
  (local $spare i32)
  (local $block|6 i32)
  (local $block|7 i32)
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $blockInfo
  i32.const 1
  drop
  local.get $size
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 624
   i32.const 361
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $blockInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $size
  i32.sub
  local.set $remaining
  local.get $remaining
  i32.const 4
  i32.const 12
  i32.add
  i32.ge_u
  if
   local.get $block
   local.get $size
   local.get $blockInfo
   i32.const 2
   i32.and
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $block
   i32.const 4
   i32.add
   local.get $size
   i32.add
   local.set $spare
   local.get $spare
   local.get $remaining
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $root
   local.get $spare
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $block
   local.get $blockInfo
   i32.const 1
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
   block $~lib/rt/tlsf/GETRIGHT|inlined.3 (result i32)
    local.get $block
    local.set $block|7
    local.get $block|7
    i32.const 4
    i32.add
    local.get $block|7
    call $~lib/rt/common/BLOCK#get:mmInfo
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    br $~lib/rt/tlsf/GETRIGHT|inlined.3
   end
   block $~lib/rt/tlsf/GETRIGHT|inlined.2 (result i32)
    local.get $block
    local.set $block|6
    local.get $block|6
    i32.const 4
    i32.add
    local.get $block|6
    call $~lib/rt/common/BLOCK#get:mmInfo
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    br $~lib/rt/tlsf/GETRIGHT|inlined.2
   end
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 2
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $root i32) (param $size i32) (result i32)
  (local $payloadSize i32)
  (local $block i32)
  local.get $size
  call $~lib/rt/tlsf/prepareSize
  local.set $payloadSize
  local.get $root
  local.get $payloadSize
  call $~lib/rt/tlsf/searchBlock
  local.set $block
  local.get $block
  i32.eqz
  if
   local.get $root
   local.get $payloadSize
   call $~lib/rt/tlsf/growMemory
   local.get $root
   local.get $payloadSize
   call $~lib/rt/tlsf/searchBlock
   local.set $block
   i32.const 1
   drop
   local.get $block
   i32.eqz
   if
    i32.const 0
    i32.const 624
    i32.const 499
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $payloadSize
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 624
   i32.const 501
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $root
  local.get $block
  call $~lib/rt/tlsf/removeBlock
  local.get $root
  local.get $block
  local.get $payloadSize
  call $~lib/rt/tlsf/prepareBlock
  i32.const 0
  drop
  local.get $block
  return
 )
 (func $~lib/rt/tlsf/__alloc (param $size i32) (result i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $size
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  return
 )
 (func $~lib/rt/itcms/Object#set:rtId (param $this i32) (param $rtId i32)
  local.get $this
  local.get $rtId
  i32.store offset=12
 )
 (func $~lib/rt/itcms/Object#set:rtSize (param $this i32) (param $rtSize i32)
  local.get $this
  local.get $rtSize
  i32.store offset=16
 )
 (func $~lib/rt/itcms/__new (param $size i32) (param $id i32) (result i32)
  (local $obj i32)
  (local $ptr i32)
  local.get $size
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 288
   i32.const 352
   i32.const 261
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   call $~lib/rt/itcms/interrupt
  end
  i32.const 16
  local.get $size
  i32.add
  call $~lib/rt/tlsf/__alloc
  i32.const 4
  i32.sub
  local.set $obj
  local.get $obj
  local.get $id
  call $~lib/rt/itcms/Object#set:rtId
  local.get $obj
  local.get $size
  call $~lib/rt/itcms/Object#set:rtSize
  local.get $obj
  global.get $~lib/rt/itcms/fromSpace
  global.get $~lib/rt/itcms/white
  call $~lib/rt/itcms/Object#linkTo
  global.get $~lib/rt/itcms/total
  local.get $obj
  call $~lib/rt/itcms/Object#get:size
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $obj
  i32.const 20
  i32.add
  local.set $ptr
  local.get $ptr
  i32.const 0
  local.get $size
  memory.fill
  local.get $ptr
  return
 )
 (func $~lib/rt/itcms/__link (param $parentPtr i32) (param $childPtr i32) (param $expectMultiple i32)
  (local $child i32)
  (local $parent i32)
  (local $parentColor i32)
  local.get $childPtr
  i32.eqz
  if
   return
  end
  i32.const 1
  drop
  local.get $parentPtr
  i32.eqz
  if
   i32.const 0
   i32.const 352
   i32.const 295
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $childPtr
  i32.const 20
  i32.sub
  local.set $child
  local.get $child
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $parentPtr
   i32.const 20
   i32.sub
   local.set $parent
   local.get $parent
   call $~lib/rt/itcms/Object#get:color
   local.set $parentColor
   local.get $parentColor
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $expectMultiple
    if
     local.get $parent
     call $~lib/rt/itcms/Object#makeGray
    else
     local.get $child
     call $~lib/rt/itcms/Object#makeGray
    end
   else
    local.get $parentColor
    i32.const 3
    i32.eq
    if (result i32)
     global.get $~lib/rt/itcms/state
     i32.const 1
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $child
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
 (func $assembly/index/Game#set:ship (param $this i32) (param $ship i32)
  local.get $this
  local.get $ship
  i32.store offset=16
  local.get $this
  local.get $ship
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<assembly/index/Boss>#set:buffer (param $this i32) (param $buffer i32)
  local.get $this
  local.get $buffer
  i32.store
  local.get $this
  local.get $buffer
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<assembly/index/Boss>#set:dataStart (param $this i32) (param $dataStart i32)
  local.get $this
  local.get $dataStart
  i32.store offset=4
 )
 (func $~lib/array/Array<assembly/index/Boss>#set:byteLength (param $this i32) (param $byteLength i32)
  local.get $this
  local.get $byteLength
  i32.store offset=8
 )
 (func $~lib/array/Array<assembly/index/Boss>#set:length_ (param $this i32) (param $length_ i32)
  local.get $this
  local.get $length_
  i32.store offset=12
 )
 (func $assembly/index/Game#set:bosses (param $this i32) (param $bosses i32)
  local.get $this
  local.get $bosses
  i32.store offset=20
  local.get $this
  local.get $bosses
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<assembly/index/Bullet>#set:buffer (param $this i32) (param $buffer i32)
  local.get $this
  local.get $buffer
  i32.store
  local.get $this
  local.get $buffer
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<assembly/index/Bullet>#set:dataStart (param $this i32) (param $dataStart i32)
  local.get $this
  local.get $dataStart
  i32.store offset=4
 )
 (func $~lib/array/Array<assembly/index/Bullet>#set:byteLength (param $this i32) (param $byteLength i32)
  local.get $this
  local.get $byteLength
  i32.store offset=8
 )
 (func $~lib/array/Array<assembly/index/Bullet>#set:length_ (param $this i32) (param $length_ i32)
  local.get $this
  local.get $length_
  i32.store offset=12
 )
 (func $assembly/index/Game#set:bullets (param $this i32) (param $bullets i32)
  local.get $this
  local.get $bullets
  i32.store offset=24
  local.get $this
  local.get $bullets
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<assembly/index/Shot>#set:buffer (param $this i32) (param $buffer i32)
  local.get $this
  local.get $buffer
  i32.store
  local.get $this
  local.get $buffer
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<assembly/index/Shot>#set:dataStart (param $this i32) (param $dataStart i32)
  local.get $this
  local.get $dataStart
  i32.store offset=4
 )
 (func $~lib/array/Array<assembly/index/Shot>#set:byteLength (param $this i32) (param $byteLength i32)
  local.get $this
  local.get $byteLength
  i32.store offset=8
 )
 (func $~lib/array/Array<assembly/index/Shot>#set:length_ (param $this i32) (param $length_ i32)
  local.get $this
  local.get $length_
  i32.store offset=12
 )
 (func $assembly/index/Game#set:shots (param $this i32) (param $shots i32)
  local.get $this
  local.get $shots
  i32.store offset=28
  local.get $this
  local.get $shots
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/index/Game#set:startsecondtime (param $this i32) (param $startsecondtime i32)
  local.get $this
  local.get $startsecondtime
  i32.store offset=32
 )
 (func $assembly/index/Game#set:startminisecondtime (param $this i32) (param $startminisecondtime i32)
  local.get $this
  local.get $startminisecondtime
  i32.store offset=36
 )
 (func $assembly/index/Game#get:startminisecondtime (param $this i32) (result i32)
  local.get $this
  i32.load offset=36
 )
 (func $assembly/index/Game#set:passedsecondtime (param $this i32) (param $passedsecondtime i32)
  local.get $this
  local.get $passedsecondtime
  i32.store offset=40
 )
 (func $assembly/index/Game#set:passedminisecondtime (param $this i32) (param $passedminisecondtime i32)
  local.get $this
  local.get $passedminisecondtime
  i32.store offset=44
 )
 (func $start:assembly/index
  call $assembly/index/jsDatenow
  global.set $assembly/index/last_frame
  memory.size
  i32.const 16
  i32.shl
  global.get $~lib/memory/__heap_base
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 400
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/pinSpace
  i32.const 432
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/toSpace
  i32.const 576
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/fromSpace
  i32.const 0
  call $assembly/index/Game#constructor
  global.set $assembly/index/game
 )
 (func $assembly/index/Game#get:stage (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $assembly/index/Game#get:startsecondtime (param $this i32) (result i32)
  local.get $this
  i32.load offset=32
 )
 (func $assembly/index/Game#get:passedsecondtime (param $this i32) (result i32)
  local.get $this
  i32.load offset=40
 )
 (func $assembly/index/Game#get:bullets (param $this i32) (result i32)
  local.get $this
  i32.load offset=24
 )
 (func $~lib/array/Array<assembly/index/Bullet>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $assembly/index/Game#get:bosses (param $this i32) (result i32)
  local.get $this
  i32.load offset=20
 )
 (func $~lib/array/Array<assembly/index/Boss>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/array/Array<assembly/index/Boss>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $assembly/index/Boss#get:x (param $this i32) (result f32)
  local.get $this
  f32.load
 )
 (func $assembly/index/Boss#get:y (param $this i32) (result f32)
  local.get $this
  f32.load offset=4
 )
 (func $~lib/math/murmurHash3 (param $h i64) (result i64)
  local.get $h
  local.get $h
  i64.const 33
  i64.shr_u
  i64.xor
  local.set $h
  local.get $h
  i64.const -49064778989728563
  i64.mul
  local.set $h
  local.get $h
  local.get $h
  i64.const 33
  i64.shr_u
  i64.xor
  local.set $h
  local.get $h
  i64.const -4265267296055464877
  i64.mul
  local.set $h
  local.get $h
  local.get $h
  i64.const 33
  i64.shr_u
  i64.xor
  local.set $h
  local.get $h
  return
 )
 (func $~lib/math/splitMix32 (param $h i32) (result i32)
  local.get $h
  i32.const 1831565813
  i32.add
  local.set $h
  local.get $h
  local.get $h
  i32.const 15
  i32.shr_u
  i32.xor
  local.get $h
  i32.const 1
  i32.or
  i32.mul
  local.set $h
  local.get $h
  local.get $h
  local.get $h
  local.get $h
  i32.const 7
  i32.shr_u
  i32.xor
  local.get $h
  i32.const 61
  i32.or
  i32.mul
  i32.add
  i32.xor
  local.set $h
  local.get $h
  local.get $h
  i32.const 14
  i32.shr_u
  i32.xor
  return
 )
 (func $~lib/math/NativeMath.seedRandom (param $value i64)
  local.get $value
  i64.const 0
  i64.eq
  if
   i64.const -7046029254386353131
   local.set $value
  end
  local.get $value
  call $~lib/math/murmurHash3
  global.set $~lib/math/random_state0_64
  global.get $~lib/math/random_state0_64
  i64.const -1
  i64.xor
  call $~lib/math/murmurHash3
  global.set $~lib/math/random_state1_64
  local.get $value
  i32.wrap_i64
  call $~lib/math/splitMix32
  global.set $~lib/math/random_state0_32
  global.get $~lib/math/random_state0_32
  call $~lib/math/splitMix32
  global.set $~lib/math/random_state1_32
  i32.const 1
  global.set $~lib/math/random_seeded
 )
 (func $~lib/math/NativeMath.random (result f64)
  (local $s1 i64)
  (local $s0 i64)
  (local $r i64)
  global.get $~lib/math/random_seeded
  i32.eqz
  if
   call $~lib/builtins/seed
   i64.reinterpret_f64
   call $~lib/math/NativeMath.seedRandom
  end
  global.get $~lib/math/random_state0_64
  local.set $s1
  global.get $~lib/math/random_state1_64
  local.set $s0
  local.get $s0
  global.set $~lib/math/random_state0_64
  local.get $s1
  local.get $s1
  i64.const 23
  i64.shl
  i64.xor
  local.set $s1
  local.get $s1
  local.get $s1
  i64.const 17
  i64.shr_u
  i64.xor
  local.set $s1
  local.get $s1
  local.get $s0
  i64.xor
  local.set $s1
  local.get $s1
  local.get $s0
  i64.const 26
  i64.shr_u
  i64.xor
  local.set $s1
  local.get $s1
  global.set $~lib/math/random_state1_64
  local.get $s0
  i64.const 12
  i64.shr_u
  i64.const 4607182418800017408
  i64.or
  local.set $r
  local.get $r
  f64.reinterpret_i64
  f64.const 1
  f64.sub
  return
 )
 (func $assembly/index/Bullet#set:x (param $this i32) (param $x f32)
  local.get $this
  local.get $x
  f32.store
 )
 (func $assembly/index/Bullet#set:y (param $this i32) (param $y f32)
  local.get $this
  local.get $y
  f32.store offset=4
 )
 (func $assembly/index/Bullet#set:dx (param $this i32) (param $dx f32)
  local.get $this
  local.get $dx
  f32.store offset=8
 )
 (func $assembly/index/Bullet#set:dy (param $this i32) (param $dy f32)
  local.get $this
  local.get $dy
  f32.store offset=12
 )
 (func $assembly/index/Bullet#set:w (param $this i32) (param $w f32)
  local.get $this
  local.get $w
  f32.store offset=16
 )
 (func $assembly/index/Bullet#set:h (param $this i32) (param $h f32)
  local.get $this
  local.get $h
  f32.store offset=20
 )
 (func $assembly/index/Bullet#set:hp (param $this i32) (param $hp i32)
  local.get $this
  local.get $hp
  i32.store offset=24
 )
 (func $~lib/arraybuffer/ArrayBufferView#get:byteLength (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/arraybuffer/ArrayBufferView#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/rt/itcms/Object#get:rtSize (param $this i32) (result i32)
  local.get $this
  i32.load offset=16
 )
 (func $~lib/rt/itcms/__renew (param $oldPtr i32) (param $size i32) (result i32)
  (local $oldObj i32)
  (local $newPtr i32)
  (local $4 i32)
  (local $5 i32)
  local.get $oldPtr
  i32.const 20
  i32.sub
  local.set $oldObj
  local.get $size
  local.get $oldObj
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.sub
  i32.le_u
  if
   local.get $oldObj
   local.get $size
   call $~lib/rt/itcms/Object#set:rtSize
   local.get $oldPtr
   return
  end
  local.get $size
  local.get $oldObj
  call $~lib/rt/itcms/Object#get:rtId
  call $~lib/rt/itcms/__new
  local.set $newPtr
  local.get $newPtr
  local.get $oldPtr
  local.get $size
  local.tee $4
  local.get $oldObj
  call $~lib/rt/itcms/Object#get:rtSize
  local.tee $5
  local.get $4
  local.get $5
  i32.lt_u
  select
  memory.copy
  local.get $newPtr
  return
 )
 (func $~lib/array/Array<assembly/index/Bullet>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $assembly/index/Bullet#get:x (param $this i32) (result f32)
  local.get $this
  f32.load
 )
 (func $assembly/index/Bullet#get:dx (param $this i32) (result f32)
  local.get $this
  f32.load offset=8
 )
 (func $assembly/index/Bullet#get:y (param $this i32) (result f32)
  local.get $this
  f32.load offset=4
 )
 (func $assembly/index/Bullet#get:dy (param $this i32) (result f32)
  local.get $this
  f32.load offset=12
 )
 (func $assembly/index/Bullet#get:hp (param $this i32) (result i32)
  local.get $this
  i32.load offset=24
 )
 (func $~lib/rt/__newBuffer (param $size i32) (param $id i32) (param $data i32) (result i32)
  (local $buffer i32)
  local.get $size
  local.get $id
  call $~lib/rt/itcms/__new
  local.set $buffer
  local.get $data
  if
   local.get $buffer
   local.get $data
   local.get $size
   memory.copy
  end
  local.get $buffer
  return
 )
 (func $assembly/index/Game#get:shooting (param $this i32) (result i32)
  local.get $this
  i32.load8_u offset=4
 )
 (func $assembly/index/Game#get:ship (param $this i32) (result i32)
  local.get $this
  i32.load offset=16
 )
 (func $assembly/index/Ship#get:x (param $this i32) (result f32)
  local.get $this
  f32.load
 )
 (func $assembly/index/Ship#get:y (param $this i32) (result f32)
  local.get $this
  f32.load offset=4
 )
 (func $assembly/index/Shot#set:x (param $this i32) (param $x f32)
  local.get $this
  local.get $x
  f32.store
 )
 (func $assembly/index/Shot#set:y (param $this i32) (param $y f32)
  local.get $this
  local.get $y
  f32.store offset=4
 )
 (func $assembly/index/Shot#set:dx (param $this i32) (param $dx f32)
  local.get $this
  local.get $dx
  f32.store offset=8
 )
 (func $assembly/index/Shot#set:dy (param $this i32) (param $dy f32)
  local.get $this
  local.get $dy
  f32.store offset=12
 )
 (func $assembly/index/Shot#set:w (param $this i32) (param $w f32)
  local.get $this
  local.get $w
  f32.store offset=16
 )
 (func $assembly/index/Shot#set:h (param $this i32) (param $h f32)
  local.get $this
  local.get $h
  f32.store offset=20
 )
 (func $assembly/index/Shot#set:hp (param $this i32) (param $hp i32)
  local.get $this
  local.get $hp
  i32.store offset=24
 )
 (func $assembly/index/Game#get:super_time (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $assembly/index/Game#get:shots (param $this i32) (result i32)
  local.get $this
  i32.load offset=28
 )
 (func $~lib/array/Array<assembly/index/Shot>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/array/Array<assembly/index/Shot>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $assembly/index/Shot#get:y (param $this i32) (result f32)
  local.get $this
  f32.load offset=4
 )
 (func $assembly/index/Shot#get:dy (param $this i32) (result f32)
  local.get $this
  f32.load offset=12
 )
 (func $assembly/index/Shot#get:hp (param $this i32) (result i32)
  local.get $this
  i32.load offset=24
 )
 (func $assembly/index/Character#get:x (param $this i32) (result f32)
  unreachable
 )
 (func $assembly/index/Character#get:w (param $this i32) (result f32)
  unreachable
 )
 (func $assembly/index/Character#get:y (param $this i32) (result f32)
  unreachable
 )
 (func $assembly/index/Character#get:h (param $this i32) (result f32)
  unreachable
 )
 (func $assembly/index/Boss#get:hp (param $this i32) (result i32)
  local.get $this
  i32.load offset=24
 )
 (func $assembly/index/Boss#set:hp (param $this i32) (param $hp i32)
  local.get $this
  local.get $hp
  i32.store offset=24
 )
 (func $assembly/index/Ship#get:mouse_x (param $this i32) (result f32)
  local.get $this
  f32.load offset=28
 )
 (func $assembly/index/Ship#get:dx (param $this i32) (result f32)
  local.get $this
  f32.load offset=8
 )
 (func $assembly/index/Boss#get:d (param $this i32) (result f32)
  local.get $this
  f32.load offset=28
 )
 (func $assembly/index/Boss#set:d (param $this i32) (param $d f32)
  local.get $this
  local.get $d
  f32.store offset=28
 )
 (func $assembly/index/Boss#get:dx (param $this i32) (result f32)
  local.get $this
  f32.load offset=8
 )
 (func $assembly/index/Boss#set:x (param $this i32) (param $x f32)
  local.get $this
  local.get $x
  f32.store
 )
 (func $assembly/index/Game#get:wait_time (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $assembly/index/Ship#get:dy (param $this i32) (result f32)
  local.get $this
  f32.load offset=12
 )
 (func $assembly/index/Ship#get:w (param $this i32) (result f32)
  local.get $this
  f32.load offset=16
 )
 (func $assembly/index/Ship#get:h (param $this i32) (result f32)
  local.get $this
  f32.load offset=20
 )
 (func $assembly/index/Ship#get:hp (param $this i32) (result i32)
  local.get $this
  i32.load offset=24
 )
 (func $~lib/util/number/decimalCount32 (param $value i32) (result i32)
  local.get $value
  i32.const 100000
  i32.lt_u
  if
   local.get $value
   i32.const 100
   i32.lt_u
   if
    i32.const 1
    local.get $value
    i32.const 10
    i32.ge_u
    i32.add
    return
   else
    i32.const 3
    local.get $value
    i32.const 10000
    i32.ge_u
    i32.add
    local.get $value
    i32.const 1000
    i32.ge_u
    i32.add
    return
   end
   unreachable
  else
   local.get $value
   i32.const 10000000
   i32.lt_u
   if
    i32.const 6
    local.get $value
    i32.const 1000000
    i32.ge_u
    i32.add
    return
   else
    i32.const 8
    local.get $value
    i32.const 1000000000
    i32.ge_u
    i32.add
    local.get $value
    i32.const 100000000
    i32.ge_u
    i32.add
    return
   end
   unreachable
  end
  unreachable
 )
 (func $~lib/util/number/utoa32_dec_lut (param $buffer i32) (param $num i32) (param $offset i32)
  (local $t i32)
  (local $r i32)
  (local $d1 i32)
  (local $d2 i32)
  (local $digits1 i64)
  (local $digits2 i64)
  (local $t|9 i32)
  (local $d1|10 i32)
  (local $digits i32)
  (local $digits|12 i32)
  (local $digit i32)
  loop $while-continue|0
   local.get $num
   i32.const 10000
   i32.ge_u
   if
    local.get $num
    i32.const 10000
    i32.div_u
    local.set $t
    local.get $num
    i32.const 10000
    i32.rem_u
    local.set $r
    local.get $t
    local.set $num
    local.get $r
    i32.const 100
    i32.div_u
    local.set $d1
    local.get $r
    i32.const 100
    i32.rem_u
    local.set $d2
    i32.const 1548
    local.get $d1
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $digits1
    i32.const 1548
    local.get $d2
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $digits2
    local.get $offset
    i32.const 4
    i32.sub
    local.set $offset
    local.get $buffer
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    local.get $digits1
    local.get $digits2
    i64.const 32
    i64.shl
    i64.or
    i64.store
    br $while-continue|0
   end
  end
  local.get $num
  i32.const 100
  i32.ge_u
  if
   local.get $num
   i32.const 100
   i32.div_u
   local.set $t|9
   local.get $num
   i32.const 100
   i32.rem_u
   local.set $d1|10
   local.get $t|9
   local.set $num
   local.get $offset
   i32.const 2
   i32.sub
   local.set $offset
   i32.const 1548
   local.get $d1|10
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $digits
   local.get $buffer
   local.get $offset
   i32.const 1
   i32.shl
   i32.add
   local.get $digits
   i32.store
  end
  local.get $num
  i32.const 10
  i32.ge_u
  if
   local.get $offset
   i32.const 2
   i32.sub
   local.set $offset
   i32.const 1548
   local.get $num
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $digits|12
   local.get $buffer
   local.get $offset
   i32.const 1
   i32.shl
   i32.add
   local.get $digits|12
   i32.store
  else
   local.get $offset
   i32.const 1
   i32.sub
   local.set $offset
   i32.const 48
   local.get $num
   i32.add
   local.set $digit
   local.get $buffer
   local.get $offset
   i32.const 1
   i32.shl
   i32.add
   local.get $digit
   i32.store16
  end
 )
 (func $~lib/util/number/utoa_hex_lut (param $buffer i32) (param $num i64) (param $offset i32)
  loop $while-continue|0
   local.get $offset
   i32.const 2
   i32.ge_u
   if
    local.get $offset
    i32.const 2
    i32.sub
    local.set $offset
    local.get $buffer
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    i32.const 1968
    local.get $num
    i32.wrap_i64
    i32.const 255
    i32.and
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.store
    local.get $num
    i64.const 8
    i64.shr_u
    local.set $num
    br $while-continue|0
   end
  end
  local.get $offset
  i32.const 1
  i32.and
  if
   local.get $buffer
   i32.const 1968
   local.get $num
   i32.wrap_i64
   i32.const 6
   i32.shl
   i32.add
   i32.load16_u
   i32.store16
  end
 )
 (func $~lib/util/number/ulog_base (param $num i64) (param $base i32) (result i32)
  (local $value i32)
  (local $b64 i64)
  (local $b i64)
  (local $e i32)
  block $~lib/util/number/isPowerOf2<i32>|inlined.0 (result i32)
   local.get $base
   local.set $value
   local.get $value
   i32.popcnt
   i32.const 1
   i32.eq
   br $~lib/util/number/isPowerOf2<i32>|inlined.0
  end
  if
   i32.const 63
   local.get $num
   i64.clz
   i32.wrap_i64
   i32.sub
   i32.const 31
   local.get $base
   i32.clz
   i32.sub
   i32.div_u
   i32.const 1
   i32.add
   return
  end
  local.get $base
  i64.extend_i32_s
  local.set $b64
  local.get $b64
  local.set $b
  i32.const 1
  local.set $e
  loop $while-continue|0
   local.get $num
   local.get $b
   i64.ge_u
   if
    local.get $num
    local.get $b
    i64.div_u
    local.set $num
    local.get $b
    local.get $b
    i64.mul
    local.set $b
    local.get $e
    i32.const 1
    i32.shl
    local.set $e
    br $while-continue|0
   end
  end
  loop $while-continue|1
   local.get $num
   i64.const 1
   i64.ge_u
   if
    local.get $num
    local.get $b64
    i64.div_u
    local.set $num
    local.get $e
    i32.const 1
    i32.add
    local.set $e
    br $while-continue|1
   end
  end
  local.get $e
  i32.const 1
  i32.sub
  return
 )
 (func $~lib/util/number/utoa64_any_core (param $buffer i32) (param $num i64) (param $offset i32) (param $radix i32)
  (local $base i64)
  (local $shift i64)
  (local $mask i64)
  (local $q i64)
  local.get $radix
  i64.extend_i32_s
  local.set $base
  local.get $radix
  local.get $radix
  i32.const 1
  i32.sub
  i32.and
  i32.const 0
  i32.eq
  if
   local.get $radix
   i32.ctz
   i32.const 7
   i32.and
   i64.extend_i32_s
   local.set $shift
   local.get $base
   i64.const 1
   i64.sub
   local.set $mask
   loop $do-loop|0
    local.get $offset
    i32.const 1
    i32.sub
    local.set $offset
    local.get $buffer
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    i32.const 3024
    local.get $num
    local.get $mask
    i64.and
    i32.wrap_i64
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    i32.store16
    local.get $num
    local.get $shift
    i64.shr_u
    local.set $num
    local.get $num
    i64.const 0
    i64.ne
    br_if $do-loop|0
   end
  else
   loop $do-loop|1
    local.get $offset
    i32.const 1
    i32.sub
    local.set $offset
    local.get $num
    local.get $base
    i64.div_u
    local.set $q
    local.get $buffer
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    i32.const 3024
    local.get $num
    local.get $q
    local.get $base
    i64.mul
    i64.sub
    i32.wrap_i64
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    i32.store16
    local.get $q
    local.set $num
    local.get $num
    i64.const 0
    i64.ne
    br_if $do-loop|1
   end
  end
 )
 (func $~lib/number/I32#toString (param $this i32) (param $radix i32) (result i32)
  local.get $this
  local.get $radix
  call $~lib/util/number/itoa32
  return
 )
 (func $assembly/index/Game#get:passedminisecondtime (param $this i32) (result i32)
  local.get $this
  i32.load offset=44
 )
 (func $~lib/rt/common/OBJECT#get:rtSize (param $this i32) (result i32)
  local.get $this
  i32.load offset=16
 )
 (func $~lib/string/String#get:length (param $this i32) (result i32)
  local.get $this
  i32.const 20
  i32.sub
  call $~lib/rt/common/OBJECT#get:rtSize
  i32.const 1
  i32.shr_u
  return
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#__uset (param $this i32) (param $index i32) (param $value i32)
  local.get $this
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store
  i32.const 1
  drop
  local.get $this
  local.get $value
  i32.const 1
  call $~lib/rt/itcms/__link
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#get:length (param $this i32) (result i32)
  local.get $this
  i32.const 20
  i32.sub
  call $~lib/rt/common/OBJECT#get:rtSize
  i32.const 2
  i32.shr_u
  return
 )
 (func $assembly/index/Shot#get:x (param $this i32) (result f32)
  local.get $this
  f32.load
 )
 (func $assembly/index/startAnimation
  call $assembly/index/jsRequestAnimationFrame
 )
 (func $assembly/index/Boss#set:y (param $this i32) (param $y f32)
  local.get $this
  local.get $y
  f32.store offset=4
 )
 (func $assembly/index/Boss#set:dx (param $this i32) (param $dx f32)
  local.get $this
  local.get $dx
  f32.store offset=8
 )
 (func $assembly/index/Boss#set:dy (param $this i32) (param $dy f32)
  local.get $this
  local.get $dy
  f32.store offset=12
 )
 (func $assembly/index/Boss#set:w (param $this i32) (param $w f32)
  local.get $this
  local.get $w
  f32.store offset=16
 )
 (func $assembly/index/Boss#set:h (param $this i32) (param $h f32)
  local.get $this
  local.get $h
  f32.store offset=20
 )
 (func $assembly/index/Shot#get:w (param $this i32) (result f32)
  local.get $this
  f32.load offset=16
 )
 (func $assembly/index/Bullet#get:w (param $this i32) (result f32)
  local.get $this
  f32.load offset=16
 )
 (func $assembly/index/Boss#get:w (param $this i32) (result f32)
  local.get $this
  f32.load offset=16
 )
 (func $assembly/index/Shot#get:h (param $this i32) (result f32)
  local.get $this
  f32.load offset=20
 )
 (func $assembly/index/Bullet#get:h (param $this i32) (result f32)
  local.get $this
  f32.load offset=20
 )
 (func $assembly/index/Boss#get:h (param $this i32) (result f32)
  local.get $this
  f32.load offset=20
 )
 (func $assembly/index/Character#get:x@override (param $0 i32) (result f32)
  (local $1 i32)
  block $default
   block $case3
    block $case2
     block $case1
      block $case0
       local.get $0
       i32.const 8
       i32.sub
       i32.load
       local.set $1
       local.get $1
       i32.const 14
       i32.eq
       br_if $case0
       local.get $1
       i32.const 17
       i32.eq
       br_if $case0
       local.get $1
       i32.const 5
       i32.eq
       br_if $case1
       local.get $1
       i32.const 18
       i32.eq
       br_if $case1
       local.get $1
       i32.const 11
       i32.eq
       br_if $case2
       local.get $1
       i32.const 8
       i32.eq
       br_if $case3
       br $default
      end
      local.get $0
      call $assembly/index/Shot#get:x
      return
     end
     local.get $0
     call $assembly/index/Ship#get:x
     return
    end
    local.get $0
    call $assembly/index/Bullet#get:x
    return
   end
   local.get $0
   call $assembly/index/Boss#get:x
   return
  end
  unreachable
 )
 (func $assembly/index/Character#get:w@override (param $0 i32) (result f32)
  (local $1 i32)
  block $default
   block $case3
    block $case2
     block $case1
      block $case0
       local.get $0
       i32.const 8
       i32.sub
       i32.load
       local.set $1
       local.get $1
       i32.const 14
       i32.eq
       br_if $case0
       local.get $1
       i32.const 17
       i32.eq
       br_if $case0
       local.get $1
       i32.const 5
       i32.eq
       br_if $case1
       local.get $1
       i32.const 18
       i32.eq
       br_if $case1
       local.get $1
       i32.const 11
       i32.eq
       br_if $case2
       local.get $1
       i32.const 8
       i32.eq
       br_if $case3
       br $default
      end
      local.get $0
      call $assembly/index/Shot#get:w
      return
     end
     local.get $0
     call $assembly/index/Ship#get:w
     return
    end
    local.get $0
    call $assembly/index/Bullet#get:w
    return
   end
   local.get $0
   call $assembly/index/Boss#get:w
   return
  end
  unreachable
 )
 (func $assembly/index/Character#get:y@override (param $0 i32) (result f32)
  (local $1 i32)
  block $default
   block $case3
    block $case2
     block $case1
      block $case0
       local.get $0
       i32.const 8
       i32.sub
       i32.load
       local.set $1
       local.get $1
       i32.const 14
       i32.eq
       br_if $case0
       local.get $1
       i32.const 17
       i32.eq
       br_if $case0
       local.get $1
       i32.const 5
       i32.eq
       br_if $case1
       local.get $1
       i32.const 18
       i32.eq
       br_if $case1
       local.get $1
       i32.const 11
       i32.eq
       br_if $case2
       local.get $1
       i32.const 8
       i32.eq
       br_if $case3
       br $default
      end
      local.get $0
      call $assembly/index/Shot#get:y
      return
     end
     local.get $0
     call $assembly/index/Ship#get:y
     return
    end
    local.get $0
    call $assembly/index/Bullet#get:y
    return
   end
   local.get $0
   call $assembly/index/Boss#get:y
   return
  end
  unreachable
 )
 (func $assembly/index/Character#get:h@override (param $0 i32) (result f32)
  (local $1 i32)
  block $default
   block $case3
    block $case2
     block $case1
      block $case0
       local.get $0
       i32.const 8
       i32.sub
       i32.load
       local.set $1
       local.get $1
       i32.const 14
       i32.eq
       br_if $case0
       local.get $1
       i32.const 17
       i32.eq
       br_if $case0
       local.get $1
       i32.const 5
       i32.eq
       br_if $case1
       local.get $1
       i32.const 18
       i32.eq
       br_if $case1
       local.get $1
       i32.const 11
       i32.eq
       br_if $case2
       local.get $1
       i32.const 8
       i32.eq
       br_if $case3
       br $default
      end
      local.get $0
      call $assembly/index/Shot#get:h
      return
     end
     local.get $0
     call $assembly/index/Ship#get:h
     return
    end
    local.get $0
    call $assembly/index/Bullet#get:h
    return
   end
   local.get $0
   call $assembly/index/Boss#get:h
   return
  end
  unreachable
 )
 (func $assembly/index/Shot#draw@override (param $0 i32)
  (local $1 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    local.set $1
    local.get $1
    i32.const 17
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   call $assembly/index/SuperShot#draw
   return
  end
  local.get $0
  call $assembly/index/Shot#draw
 )
 (func $assembly/index/Ship#draw@override (param $0 i32)
  (local $1 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    local.set $1
    local.get $1
    i32.const 18
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   call $assembly/index/SuperShip#draw
   return
  end
  local.get $0
  call $assembly/index/Ship#draw
 )
 (func $~instanceof|assembly/index/SuperShip (param $0 i32) (result i32)
  (local $1 i32)
  block $is_instance
   local.get $0
   i32.const 8
   i32.sub
   i32.load
   local.set $1
   local.get $1
   i32.const 18
   i32.eq
   br_if $is_instance
   i32.const 0
   return
  end
  i32.const 1
 )
 (func $~lib/rt/__visit_globals (param $0 i32)
  (local $1 i32)
  global.get $assembly/index/DEFAULT_COLOR
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/index/LIGHT_GREEN_COLOR
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/index/GREEN_DARK_LIGHT
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/index/LIGHT_YELLOR_GREEN
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/index/game
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  i32.const 480
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 688
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 784
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 288
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 1968
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 3024
  local.get $0
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/arraybuffer/ArrayBufferView~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/object/Object~visit (param $0 i32) (param $1 i32)
 )
 (func $assembly/index/Game~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load offset=16
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=20
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=24
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=28
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $assembly/index/BossArray~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<assembly/index/Boss>~visit
 )
 (func $~lib/array/Array<assembly/index/Boss>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<assembly/index/Boss>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<assembly/index/Boss>#__visit
 )
 (func $assembly/index/BulletArray~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<assembly/index/Bullet>~visit
 )
 (func $~lib/array/Array<assembly/index/Bullet>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<assembly/index/Bullet>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<assembly/index/Bullet>#__visit
 )
 (func $assembly/index/ShotArray~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<assembly/index/Shot>~visit
 )
 (func $~lib/array/Array<assembly/index/Shot>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<assembly/index/Shot>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<assembly/index/Shot>#__visit
 )
 (func $~lib/array/Array<i32>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#__visit
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#__visit (param $this i32) (param $cookie i32)
  (local $cur i32)
  (local $end i32)
  (local $val i32)
  i32.const 1
  drop
  local.get $this
  local.set $cur
  local.get $cur
  local.get $this
  i32.const 20
  i32.sub
  call $~lib/rt/common/OBJECT#get:rtSize
  i32.add
  local.set $end
  loop $while-continue|0
   local.get $cur
   local.get $end
   i32.lt_u
   if
    local.get $cur
    i32.load
    local.set $val
    local.get $val
    if
     local.get $val
     local.get $cookie
     call $~lib/rt/itcms/__visit
    end
    local.get $cur
    i32.const 4
    i32.add
    local.set $cur
    br $while-continue|0
   end
  end
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/staticarray/StaticArray<~lib/string/String>#__visit
 )
 (func $~lib/rt/__visit_members (param $0 i32) (param $1 i32)
  block $invalid
   block $~lib/staticarray/StaticArray<~lib/string/String>
    block $assembly/index/SuperShip
     block $assembly/index/SuperShot
      block $~lib/array/Array<i32>
       block $~lib/array/Array<assembly/index/Shot>
        block $assembly/index/Shot
         block $assembly/index/ShotArray
          block $~lib/array/Array<assembly/index/Bullet>
           block $assembly/index/Bullet
            block $assembly/index/BulletArray
             block $~lib/array/Array<assembly/index/Boss>
              block $assembly/index/Boss
               block $assembly/index/BossArray
                block $assembly/index/Character
                 block $assembly/index/Ship
                  block $assembly/index/Game
                   block $~lib/arraybuffer/ArrayBufferView
                    block $~lib/string/String
                     block $~lib/arraybuffer/ArrayBuffer
                      block $~lib/object/Object
                       local.get $0
                       i32.const 8
                       i32.sub
                       i32.load
                       br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $assembly/index/Game $assembly/index/Ship $assembly/index/Character $assembly/index/BossArray $assembly/index/Boss $~lib/array/Array<assembly/index/Boss> $assembly/index/BulletArray $assembly/index/Bullet $~lib/array/Array<assembly/index/Bullet> $assembly/index/ShotArray $assembly/index/Shot $~lib/array/Array<assembly/index/Shot> $~lib/array/Array<i32> $assembly/index/SuperShot $assembly/index/SuperShip $~lib/staticarray/StaticArray<~lib/string/String> $invalid
                      end
                      return
                     end
                     return
                    end
                    return
                   end
                   local.get $0
                   local.get $1
                   call $~lib/arraybuffer/ArrayBufferView~visit
                   return
                  end
                  local.get $0
                  local.get $1
                  call $assembly/index/Game~visit
                  return
                 end
                 return
                end
                return
               end
               local.get $0
               local.get $1
               call $assembly/index/BossArray~visit
               return
              end
              return
             end
             local.get $0
             local.get $1
             call $~lib/array/Array<assembly/index/Boss>~visit
             return
            end
            local.get $0
            local.get $1
            call $assembly/index/BulletArray~visit
            return
           end
           return
          end
          local.get $0
          local.get $1
          call $~lib/array/Array<assembly/index/Bullet>~visit
          return
         end
         local.get $0
         local.get $1
         call $assembly/index/ShotArray~visit
         return
        end
        return
       end
       local.get $0
       local.get $1
       call $~lib/array/Array<assembly/index/Shot>~visit
       return
      end
      local.get $0
      local.get $1
      call $~lib/array/Array<i32>~visit
      return
     end
     return
    end
    return
   end
   local.get $0
   local.get $1
   call $~lib/staticarray/StaticArray<~lib/string/String>~visit
   return
  end
  unreachable
 )
 (func $~start
  call $start:assembly/index
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 36336
   i32.const 36384
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $assembly/index/Ship#constructor (param $this i32) (param $x f32) (param $y f32) (param $dx f32) (param $dy f32) (param $w f32) (param $h f32) (param $hp i32) (param $mouse_x f32) (result i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  local.get $9
  f32.const 0
  call $assembly/index/Ship#set:x
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  local.get $9
  f32.const 0
  call $assembly/index/Ship#set:y
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  local.get $9
  f32.const 0
  call $assembly/index/Ship#set:dx
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  local.get $9
  f32.const 0
  call $assembly/index/Ship#set:dy
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  local.get $9
  f32.const 0
  call $assembly/index/Ship#set:w
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  local.get $9
  f32.const 0
  call $assembly/index/Ship#set:h
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  local.get $9
  i32.const 0
  call $assembly/index/Ship#set:hp
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  local.get $9
  f32.const 0
  call $assembly/index/Ship#set:mouse_x
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  local.get $9
  local.get $x
  call $assembly/index/Ship#set:x
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  local.get $9
  local.get $y
  call $assembly/index/Ship#set:y
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  local.get $9
  local.get $dx
  call $assembly/index/Ship#set:dx
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  local.get $9
  local.get $dy
  call $assembly/index/Ship#set:dy
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  local.get $9
  local.get $w
  call $assembly/index/Ship#set:w
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  local.get $9
  local.get $h
  call $assembly/index/Ship#set:h
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  local.get $9
  local.get $hp
  call $assembly/index/Ship#set:hp
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  local.get $9
  local.get $mouse_x
  call $assembly/index/Ship#set:mouse_x
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $~lib/array/Array<assembly/index/Boss>#constructor (param $this i32) (param $length i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $bufferSize i32)
  (local $buffer i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 9
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<assembly/index/Boss>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<assembly/index/Boss>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<assembly/index/Boss>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<assembly/index/Boss>#set:length_
  local.get $length
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 688
   i32.const 736
   i32.const 70
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $length
  local.tee $2
  i32.const 8
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.const 2
  i32.shl
  local.set $bufferSize
  global.get $~lib/memory/__stack_pointer
  local.get $bufferSize
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $buffer
  i32.store offset=8
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Incremental
  i32.ne
  drop
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $buffer
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=12
  local.get $6
  call $~lib/array/Array<assembly/index/Boss>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $buffer
  call $~lib/array/Array<assembly/index/Boss>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $bufferSize
  call $~lib/array/Array<assembly/index/Boss>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $length
  call $~lib/array/Array<assembly/index/Boss>#set:length_
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $assembly/index/BossArray#constructor (param $this i32) (param $length i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 7
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $length
  call $~lib/array/Array<assembly/index/Boss>#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/array/Array<assembly/index/Bullet>#constructor (param $this i32) (param $length i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $bufferSize i32)
  (local $buffer i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 12
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<assembly/index/Bullet>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<assembly/index/Bullet>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<assembly/index/Bullet>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<assembly/index/Bullet>#set:length_
  local.get $length
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 688
   i32.const 736
   i32.const 70
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $length
  local.tee $2
  i32.const 8
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.const 2
  i32.shl
  local.set $bufferSize
  global.get $~lib/memory/__stack_pointer
  local.get $bufferSize
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $buffer
  i32.store offset=8
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Incremental
  i32.ne
  drop
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $buffer
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=12
  local.get $6
  call $~lib/array/Array<assembly/index/Bullet>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $buffer
  call $~lib/array/Array<assembly/index/Bullet>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $bufferSize
  call $~lib/array/Array<assembly/index/Bullet>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $length
  call $~lib/array/Array<assembly/index/Bullet>#set:length_
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $assembly/index/BulletArray#constructor (param $this i32) (param $length i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 10
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $length
  call $~lib/array/Array<assembly/index/Bullet>#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/array/Array<assembly/index/Shot>#constructor (param $this i32) (param $length i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $bufferSize i32)
  (local $buffer i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 15
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<assembly/index/Shot>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<assembly/index/Shot>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<assembly/index/Shot>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<assembly/index/Shot>#set:length_
  local.get $length
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 688
   i32.const 736
   i32.const 70
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $length
  local.tee $2
  i32.const 8
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.const 2
  i32.shl
  local.set $bufferSize
  global.get $~lib/memory/__stack_pointer
  local.get $bufferSize
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $buffer
  i32.store offset=8
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Incremental
  i32.ne
  drop
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $buffer
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=12
  local.get $6
  call $~lib/array/Array<assembly/index/Shot>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $buffer
  call $~lib/array/Array<assembly/index/Shot>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $bufferSize
  call $~lib/array/Array<assembly/index/Shot>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $length
  call $~lib/array/Array<assembly/index/Shot>#set:length_
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $assembly/index/ShotArray#constructor (param $this i32) (param $length i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 13
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $length
  call $~lib/array/Array<assembly/index/Shot>#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $assembly/index/Game#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $assembly/index/Game#set:stage
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $assembly/index/Game#set:shooting
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $assembly/index/Game#set:wait_time
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $assembly/index/Game#set:super_time
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $assembly/index/Game#set:ship
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $assembly/index/Game#set:bosses
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $assembly/index/Game#set:bullets
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $assembly/index/Game#set:shots
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $assembly/index/Game#set:startsecondtime
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $assembly/index/Game#set:startminisecondtime
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $assembly/index/Game#set:passedsecondtime
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $assembly/index/Game#set:passedminisecondtime
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  global.get $assembly/index/Stage.openning
  call $assembly/index/Game#set:stage
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $assembly/index/Game#set:shooting
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $assembly/index/Game#set:wait_time
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $assembly/index/Game#set:super_time
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  global.get $assembly/index/CANVAS_WIDTH
  f32.const 2
  f32.div
  global.get $assembly/index/SHIP_WIDTH
  f32.const 2
  f32.div
  f32.sub
  global.get $assembly/index/CANVAS_HEIGHT
  global.get $assembly/index/SHIP_HEIGHT
  f32.sub
  f32.const 10
  f32.sub
  global.get $assembly/index/SHIP_STEP
  f32.const 0
  global.get $assembly/index/SHIP_WIDTH
  global.get $assembly/index/SHIP_HEIGHT
  i32.const 1
  global.get $assembly/index/CANVAS_WIDTH
  f32.const 2
  f32.div
  global.get $assembly/index/SHIP_WIDTH
  f32.const 2
  f32.div
  f32.sub
  call $assembly/index/Ship#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  call $assembly/index/Game#set:ship
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.const 0
  call $assembly/index/BossArray#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  call $assembly/index/Game#set:bosses
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.const 0
  call $assembly/index/BulletArray#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  call $assembly/index/Game#set:bullets
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.const 0
  call $assembly/index/ShotArray#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  call $assembly/index/Game#set:shots
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $assembly/index/jsDatenow
  i32.const 1000
  i32.div_s
  call $assembly/index/Game#set:startsecondtime
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $assembly/index/jsDatenow
  call $assembly/index/Game#set:startminisecondtime
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  call $assembly/index/Game#get:startminisecondtime
  call $assembly/index/Game#set:passedsecondtime
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  call $assembly/index/Game#get:startminisecondtime
  call $assembly/index/Game#set:passedminisecondtime
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/array/Array<assembly/index/Bullet>#get:length (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/array/Array<assembly/index/Bullet>#get:length_
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/array/Array<assembly/index/Boss>#__get (param $this i32) (param $index i32) (result i32)
  (local $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<assembly/index/Boss>#get:length_
  i32.ge_u
  if
   i32.const 480
   i32.const 736
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<assembly/index/Boss>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $value
  i32.store offset=4
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $value
  i32.eqz
  if
   i32.const 784
   i32.const 736
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $value
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $assembly/index/Bullet#constructor (param $this i32) (param $x f32) (param $y f32) (param $dx f32) (param $dy f32) (param $w f32) (param $h f32) (param $hp i32) (result i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.const 11
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  f32.const 0
  call $assembly/index/Bullet#set:x
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  f32.const 0
  call $assembly/index/Bullet#set:y
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  f32.const 0
  call $assembly/index/Bullet#set:dx
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  f32.const 0
  call $assembly/index/Bullet#set:dy
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  f32.const 0
  call $assembly/index/Bullet#set:w
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  f32.const 0
  call $assembly/index/Bullet#set:h
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  i32.const 0
  call $assembly/index/Bullet#set:hp
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  local.get $x
  call $assembly/index/Bullet#set:x
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  local.get $y
  call $assembly/index/Bullet#set:y
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  local.get $dx
  call $assembly/index/Bullet#set:dx
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  local.get $dy
  call $assembly/index/Bullet#set:dy
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  local.get $w
  call $assembly/index/Bullet#set:w
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  local.get $h
  call $assembly/index/Bullet#set:h
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  local.get $hp
  call $assembly/index/Bullet#set:hp
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $~lib/array/ensureCapacity (param $array i32) (param $newSize i32) (param $alignLog2 i32) (param $canGrow i32)
  (local $oldCapacity i32)
  (local $oldData i32)
  (local $6 i32)
  (local $7 i32)
  (local $newCapacity i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $newData i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $array
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.set $oldCapacity
  local.get $newSize
  local.get $oldCapacity
  local.get $alignLog2
  i32.shr_u
  i32.gt_u
  if
   local.get $newSize
   i32.const 1073741820
   local.get $alignLog2
   i32.shr_u
   i32.gt_u
   if
    i32.const 688
    i32.const 736
    i32.const 19
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   local.get $array
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store
   local.get $14
   call $~lib/arraybuffer/ArrayBufferView#get:buffer
   local.set $oldData
   local.get $newSize
   local.tee $6
   i32.const 8
   local.tee $7
   local.get $6
   local.get $7
   i32.gt_u
   select
   local.get $alignLog2
   i32.shl
   local.set $newCapacity
   local.get $canGrow
   if
    local.get $oldCapacity
    i32.const 1
    i32.shl
    local.tee $9
    i32.const 1073741820
    local.tee $10
    local.get $9
    local.get $10
    i32.lt_u
    select
    local.tee $11
    local.get $newCapacity
    local.tee $12
    local.get $11
    local.get $12
    i32.gt_u
    select
    local.set $newCapacity
   end
   local.get $oldData
   local.get $newCapacity
   call $~lib/rt/itcms/__renew
   local.set $newData
   i32.const 2
   global.get $~lib/shared/runtime/Runtime.Incremental
   i32.ne
   drop
   local.get $newData
   local.get $oldData
   i32.ne
   if
    local.get $array
    local.get $newData
    i32.store
    local.get $array
    local.get $newData
    i32.store offset=4
    local.get $array
    local.get $newData
    i32.const 0
    call $~lib/rt/itcms/__link
   end
   local.get $array
   local.get $newCapacity
   i32.store offset=8
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<assembly/index/Bullet>#push (param $this i32) (param $value i32) (result i32)
  (local $oldLen i32)
  (local $len i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<assembly/index/Bullet>#get:length_
  local.set $oldLen
  local.get $oldLen
  i32.const 1
  i32.add
  local.set $len
  local.get $this
  local.get $len
  i32.const 2
  i32.const 1
  call $~lib/array/ensureCapacity
  i32.const 1
  drop
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<assembly/index/Bullet>#get:dataStart
  local.get $oldLen
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store
  local.get $this
  local.get $value
  i32.const 1
  call $~lib/rt/itcms/__link
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  local.get $len
  call $~lib/array/Array<assembly/index/Bullet>#set:length_
  local.get $len
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $~lib/array/Array<assembly/index/Bullet>#__get (param $this i32) (param $index i32) (result i32)
  (local $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<assembly/index/Bullet>#get:length_
  i32.ge_u
  if
   i32.const 480
   i32.const 736
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<assembly/index/Bullet>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $value
  i32.store offset=4
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $value
  i32.eqz
  if
   i32.const 784
   i32.const 736
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $value
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $assembly/index/Bullet#update (param $this i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $assembly/index/Bullet#get:x
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $assembly/index/Bullet#get:dx
  f32.add
  call $assembly/index/Bullet#set:x
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $assembly/index/Bullet#get:y
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $assembly/index/Bullet#get:dy
  f32.add
  call $assembly/index/Bullet#set:y
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/Bullet#exit (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $assembly/index/Bullet#get:x
  global.get $assembly/index/BULLET_WIDTH
  f32.add
  global.get $assembly/index/CANVAS_WIDTH
  f32.gt
  if
   i32.const 1
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $assembly/index/Bullet#get:x
  f32.const 0
  f32.lt
  if
   i32.const 1
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $assembly/index/Bullet#get:y
  global.get $assembly/index/CANVAS_HEIGHT
  f32.gt
  if
   i32.const 1
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $assembly/index/Bullet#get:y
  f32.const 0
  f32.lt
  if
   i32.const 1
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  i32.const 0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/array/Array<assembly/index/Bullet>#splice (param $this i32) (param $start i32) (param $deleteCount i32) (result i32)
  (local $len i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $result i32)
  (local $resultStart i32)
  (local $thisStart i32)
  (local $thisBase i32)
  (local $offset i32)
  (local $17 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store
  local.get $17
  call $~lib/array/Array<assembly/index/Bullet>#get:length_
  local.set $len
  local.get $start
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $len
   local.get $start
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
  else
   local.get $start
   local.tee $6
   local.get $len
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_s
   select
  end
  local.set $start
  local.get $deleteCount
  local.tee $8
  local.get $len
  local.get $start
  i32.sub
  local.tee $9
  local.get $8
  local.get $9
  i32.lt_s
  select
  local.tee $10
  i32.const 0
  local.tee $11
  local.get $10
  local.get $11
  i32.gt_s
  select
  local.set $deleteCount
  global.get $~lib/memory/__stack_pointer
  local.get $deleteCount
  i32.const 2
  i32.const 12
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $result
  i32.store offset=4
  local.get $result
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store
  local.get $17
  call $~lib/array/Array<assembly/index/Bullet>#get:dataStart
  local.set $resultStart
  local.get $this
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store
  local.get $17
  call $~lib/array/Array<assembly/index/Bullet>#get:dataStart
  local.set $thisStart
  local.get $thisStart
  local.get $start
  i32.const 2
  i32.shl
  i32.add
  local.set $thisBase
  local.get $resultStart
  local.get $thisBase
  local.get $deleteCount
  i32.const 2
  i32.shl
  memory.copy
  local.get $start
  local.get $deleteCount
  i32.add
  local.set $offset
  local.get $len
  local.get $offset
  i32.ne
  if
   local.get $thisBase
   local.get $thisStart
   local.get $offset
   i32.const 2
   i32.shl
   i32.add
   local.get $len
   local.get $offset
   i32.sub
   i32.const 2
   i32.shl
   memory.copy
  end
  local.get $this
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store
  local.get $17
  local.get $len
  local.get $deleteCount
  i32.sub
  call $~lib/array/Array<assembly/index/Bullet>#set:length_
  local.get $result
  local.set $17
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $17
  return
 )
 (func $assembly/index/Shot#constructor (param $this i32) (param $x f32) (param $y f32) (param $dx f32) (param $dy f32) (param $w f32) (param $h f32) (param $hp i32) (result i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.const 14
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  f32.const 0
  call $assembly/index/Shot#set:x
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  f32.const 0
  call $assembly/index/Shot#set:y
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  f32.const 0
  call $assembly/index/Shot#set:dx
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  f32.const 0
  call $assembly/index/Shot#set:dy
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  f32.const 0
  call $assembly/index/Shot#set:w
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  f32.const 0
  call $assembly/index/Shot#set:h
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  i32.const 0
  call $assembly/index/Shot#set:hp
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  local.get $x
  call $assembly/index/Shot#set:x
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  local.get $y
  call $assembly/index/Shot#set:y
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  local.get $dx
  call $assembly/index/Shot#set:dx
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  local.get $dy
  call $assembly/index/Shot#set:dy
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  local.get $w
  call $assembly/index/Shot#set:w
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  local.get $h
  call $assembly/index/Shot#set:h
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  local.get $hp
  call $assembly/index/Shot#set:hp
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $assembly/index/SuperShot#constructor (param $this i32) (param $x f32) (param $y f32) (param $dx f32) (param $dy f32) (param $w f32) (param $h f32) (param $hp i32) (result i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.const 17
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  local.get $x
  local.get $y
  local.get $dx
  local.get $dy
  local.get $w
  local.get $h
  local.get $hp
  call $assembly/index/Shot#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $~lib/array/Array<assembly/index/Shot>#push (param $this i32) (param $value i32) (result i32)
  (local $oldLen i32)
  (local $len i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<assembly/index/Shot>#get:length_
  local.set $oldLen
  local.get $oldLen
  i32.const 1
  i32.add
  local.set $len
  local.get $this
  local.get $len
  i32.const 2
  i32.const 1
  call $~lib/array/ensureCapacity
  i32.const 1
  drop
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<assembly/index/Shot>#get:dataStart
  local.get $oldLen
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store
  local.get $this
  local.get $value
  i32.const 1
  call $~lib/rt/itcms/__link
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  local.get $len
  call $~lib/array/Array<assembly/index/Shot>#set:length_
  local.get $len
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $~lib/array/Array<assembly/index/Shot>#get:length (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/array/Array<assembly/index/Shot>#get:length_
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/array/Array<assembly/index/Shot>#__get (param $this i32) (param $index i32) (result i32)
  (local $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<assembly/index/Shot>#get:length_
  i32.ge_u
  if
   i32.const 480
   i32.const 736
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<assembly/index/Shot>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $value
  i32.store offset=4
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $value
  i32.eqz
  if
   i32.const 784
   i32.const 736
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $value
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $assembly/index/Shot#update (param $this i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $assembly/index/Shot#get:y
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $assembly/index/Shot#get:dy
  f32.sub
  call $assembly/index/Shot#set:y
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/Shot#exit (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $assembly/index/Shot#get:y
  f32.const 0
  f32.lt
  if
   i32.const 1
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  i32.const 0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/array/Array<assembly/index/Shot>#splice (param $this i32) (param $start i32) (param $deleteCount i32) (result i32)
  (local $len i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $result i32)
  (local $resultStart i32)
  (local $thisStart i32)
  (local $thisBase i32)
  (local $offset i32)
  (local $17 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store
  local.get $17
  call $~lib/array/Array<assembly/index/Shot>#get:length_
  local.set $len
  local.get $start
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $len
   local.get $start
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
  else
   local.get $start
   local.tee $6
   local.get $len
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_s
   select
  end
  local.set $start
  local.get $deleteCount
  local.tee $8
  local.get $len
  local.get $start
  i32.sub
  local.tee $9
  local.get $8
  local.get $9
  i32.lt_s
  select
  local.tee $10
  i32.const 0
  local.tee $11
  local.get $10
  local.get $11
  i32.gt_s
  select
  local.set $deleteCount
  global.get $~lib/memory/__stack_pointer
  local.get $deleteCount
  i32.const 2
  i32.const 15
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $result
  i32.store offset=4
  local.get $result
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store
  local.get $17
  call $~lib/array/Array<assembly/index/Shot>#get:dataStart
  local.set $resultStart
  local.get $this
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store
  local.get $17
  call $~lib/array/Array<assembly/index/Shot>#get:dataStart
  local.set $thisStart
  local.get $thisStart
  local.get $start
  i32.const 2
  i32.shl
  i32.add
  local.set $thisBase
  local.get $resultStart
  local.get $thisBase
  local.get $deleteCount
  i32.const 2
  i32.shl
  memory.copy
  local.get $start
  local.get $deleteCount
  i32.add
  local.set $offset
  local.get $len
  local.get $offset
  i32.ne
  if
   local.get $thisBase
   local.get $thisStart
   local.get $offset
   i32.const 2
   i32.shl
   i32.add
   local.get $len
   local.get $offset
   i32.sub
   i32.const 2
   i32.shl
   memory.copy
  end
  local.get $this
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store
  local.get $17
  local.get $len
  local.get $deleteCount
  i32.sub
  call $~lib/array/Array<assembly/index/Shot>#set:length_
  local.get $result
  local.set $17
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $17
  return
 )
 (func $assembly/index/overap (param $t i32) (param $s i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $t
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $assembly/index/Character#get:x@override
  local.get $s
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $assembly/index/Character#get:x@override
  f32.max
  local.get $t
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $assembly/index/Character#get:x@override
  local.get $t
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $assembly/index/Character#get:w@override
  f32.add
  local.get $s
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $assembly/index/Character#get:x@override
  local.get $s
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $assembly/index/Character#get:w@override
  f32.add
  f32.min
  f32.lt
  if (result i32)
   local.get $t
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $assembly/index/Character#get:y@override
   local.get $s
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $assembly/index/Character#get:y@override
   f32.max
   local.get $t
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $assembly/index/Character#get:y@override
   local.get $t
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $assembly/index/Character#get:h@override
   f32.add
   local.get $s
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $assembly/index/Character#get:y@override
   local.get $s
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $assembly/index/Character#get:h@override
   f32.add
   f32.min
   f32.lt
  else
   i32.const 0
  end
  if
   i32.const 1
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  else
   i32.const 0
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  unreachable
 )
 (func $assembly/index/Bullet#hit (param $this i32) (param $obj i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $obj
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $assembly/index/overap
  if
   local.get $this
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   local.get $this
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   call $assembly/index/Bullet#get:hp
   i32.const 1
   i32.sub
   call $assembly/index/Bullet#set:hp
   i32.const 1
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  i32.const 0
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/array/Array<assembly/index/Boss>#get:length (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/array/Array<assembly/index/Boss>#get:length_
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $assembly/index/Boss#hit (param $this i32) (param $obj i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $obj
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $assembly/index/overap
  if
   i32.const 1
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  i32.const 0
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $assembly/index/Ship#update (param $this i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $assembly/index/Ship#get:mouse_x
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $assembly/index/Ship#get:x
  f32.lt
  if
   local.get $this
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   local.get $this
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   call $assembly/index/Ship#get:x
   local.get $this
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   call $assembly/index/Ship#get:dx
   f32.sub
   call $assembly/index/Ship#set:x
  else
   local.get $this
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $assembly/index/Ship#get:mouse_x
   local.get $this
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $assembly/index/Ship#get:x
   global.get $assembly/index/SHIP_WIDTH
   f32.add
   f32.gt
   if
    local.get $this
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    local.get $1
    local.get $this
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    local.get $1
    call $assembly/index/Ship#get:x
    local.get $this
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    local.get $1
    call $assembly/index/Ship#get:dx
    f32.add
    call $assembly/index/Ship#set:x
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/Boss#update (param $this i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $assembly/index/Boss#get:x
  f32.const 0
  f32.lt
  if (result i32)
   local.get $this
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $assembly/index/Boss#get:d
   f32.const -1
   f32.eq
  else
   i32.const 0
  end
  if
   local.get $this
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   f32.const 1
   call $assembly/index/Boss#set:d
  end
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $assembly/index/Boss#get:x
  global.get $assembly/index/CANVAS_WIDTH
  global.get $assembly/index/BOSS_WIDTH
  f32.sub
  f32.gt
  if (result i32)
   local.get $this
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $assembly/index/Boss#get:d
   f32.const 1
   f32.eq
  else
   i32.const 0
  end
  if
   local.get $this
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   f32.const -1
   call $assembly/index/Boss#set:d
  end
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $assembly/index/Boss#get:x
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $assembly/index/Boss#get:d
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $assembly/index/Boss#get:dx
  f32.mul
  f32.add
  call $assembly/index/Boss#set:x
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<assembly/index/Boss>#splice (param $this i32) (param $start i32) (param $deleteCount i32) (result i32)
  (local $len i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $result i32)
  (local $resultStart i32)
  (local $thisStart i32)
  (local $thisBase i32)
  (local $offset i32)
  (local $17 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store
  local.get $17
  call $~lib/array/Array<assembly/index/Boss>#get:length_
  local.set $len
  local.get $start
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $len
   local.get $start
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
  else
   local.get $start
   local.tee $6
   local.get $len
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_s
   select
  end
  local.set $start
  local.get $deleteCount
  local.tee $8
  local.get $len
  local.get $start
  i32.sub
  local.tee $9
  local.get $8
  local.get $9
  i32.lt_s
  select
  local.tee $10
  i32.const 0
  local.tee $11
  local.get $10
  local.get $11
  i32.gt_s
  select
  local.set $deleteCount
  global.get $~lib/memory/__stack_pointer
  local.get $deleteCount
  i32.const 2
  i32.const 9
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $result
  i32.store offset=4
  local.get $result
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store
  local.get $17
  call $~lib/array/Array<assembly/index/Boss>#get:dataStart
  local.set $resultStart
  local.get $this
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store
  local.get $17
  call $~lib/array/Array<assembly/index/Boss>#get:dataStart
  local.set $thisStart
  local.get $thisStart
  local.get $start
  i32.const 2
  i32.shl
  i32.add
  local.set $thisBase
  local.get $resultStart
  local.get $thisBase
  local.get $deleteCount
  i32.const 2
  i32.shl
  memory.copy
  local.get $start
  local.get $deleteCount
  i32.add
  local.set $offset
  local.get $len
  local.get $offset
  i32.ne
  if
   local.get $thisBase
   local.get $thisStart
   local.get $offset
   i32.const 2
   i32.shl
   i32.add
   local.get $len
   local.get $offset
   i32.sub
   i32.const 2
   i32.shl
   memory.copy
  end
  local.get $this
  local.set $17
  global.get $~lib/memory/__stack_pointer
  local.get $17
  i32.store
  local.get $17
  local.get $len
  local.get $deleteCount
  i32.sub
  call $~lib/array/Array<assembly/index/Boss>#set:length_
  local.get $result
  local.set $17
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $17
  return
 )
 (func $assembly/index/SuperShip#constructor (param $this i32) (param $x f32) (param $y f32) (param $dx f32) (param $dy f32) (param $w f32) (param $h f32) (param $hp i32) (param $mouse_x f32) (result i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.const 18
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  local.get $9
  local.get $x
  local.get $y
  local.get $dx
  local.get $dy
  local.get $w
  local.get $h
  local.get $hp
  local.get $mouse_x
  call $assembly/index/Ship#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $assembly/index/Game#update (param $this i32)
  (local $1 i32)
  (local $_x f32)
  (local $_y f32)
  (local $dx f32)
  (local $dy f32)
  (local $_bullet i32)
  (local $i i32)
  (local $_x|8 f32)
  (local $_y|9 f32)
  (local $_shot i32)
  (local $i|11 i32)
  (local $i|12 i32)
  (local $i|13 i32)
  (local $j i32)
  (local $i|15 i32)
  (local $j|16 i32)
  (local $17 i32)
  (local $18 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 28
  memory.fill
  block $break|0
   block $case3|0
    block $case2|0
     block $case1|0
      block $case0|0
       local.get $this
       local.set $18
       global.get $~lib/memory/__stack_pointer
       local.get $18
       i32.store
       local.get $18
       call $assembly/index/Game#get:stage
       local.set $1
       local.get $1
       global.get $assembly/index/Stage.openning
       i32.eq
       br_if $case0|0
       local.get $1
       global.get $assembly/index/Stage.gameover
       i32.eq
       br_if $case1|0
       local.get $1
       global.get $assembly/index/Stage.gameclear
       i32.eq
       br_if $case2|0
       local.get $1
       global.get $assembly/index/Stage.playing
       i32.eq
       br_if $case3|0
       br $break|0
      end
     end
    end
    br $break|0
   end
   local.get $this
   local.set $18
   global.get $~lib/memory/__stack_pointer
   local.get $18
   i32.store
   local.get $18
   call $assembly/index/jsDatenow
   i32.const 1000
   i32.div_s
   local.get $this
   local.set $18
   global.get $~lib/memory/__stack_pointer
   local.get $18
   i32.store offset=4
   local.get $18
   call $assembly/index/Game#get:startsecondtime
   i32.sub
   call $assembly/index/Game#set:passedsecondtime
   local.get $this
   local.set $18
   global.get $~lib/memory/__stack_pointer
   local.get $18
   i32.store
   local.get $18
   call $assembly/index/jsDatenow
   call $assembly/index/Game#set:passedminisecondtime
   local.get $this
   local.set $18
   global.get $~lib/memory/__stack_pointer
   local.get $18
   i32.store
   local.get $18
   call $assembly/index/Game#get:passedsecondtime
   global.get $assembly/index/LIMIT_TIME
   i32.ge_s
   if
    local.get $this
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store
    local.get $18
    global.get $assembly/index/Stage.gameover
    call $assembly/index/Game#set:stage
    br $break|0
   end
   local.get $this
   local.set $18
   global.get $~lib/memory/__stack_pointer
   local.get $18
   i32.store offset=4
   local.get $18
   call $assembly/index/Game#get:bullets
   local.set $18
   global.get $~lib/memory/__stack_pointer
   local.get $18
   i32.store
   local.get $18
   call $~lib/array/Array<assembly/index/Bullet>#get:length
   global.get $assembly/index/MAX_BULLET_NUMBER
   i32.lt_s
   if
    local.get $this
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store offset=8
    local.get $18
    call $assembly/index/Game#get:bosses
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store offset=4
    local.get $18
    i32.const 0
    call $~lib/array/Array<assembly/index/Boss>#__get
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store
    local.get $18
    call $assembly/index/Boss#get:x
    global.get $assembly/index/BOSS_WIDTH
    f32.const 2
    f32.div
    f32.add
    global.get $assembly/index/BULLET_WIDTH
    f32.const 2
    f32.div
    f32.sub
    local.set $_x
    local.get $this
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store offset=8
    local.get $18
    call $assembly/index/Game#get:bosses
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store offset=4
    local.get $18
    i32.const 0
    call $~lib/array/Array<assembly/index/Boss>#__get
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store
    local.get $18
    call $assembly/index/Boss#get:y
    global.get $assembly/index/BOSS_WIDTH
    f32.const 2
    f32.div
    f32.add
    global.get $assembly/index/BULLET_WIDTH
    f32.const 2
    f32.div
    f32.sub
    local.set $_y
    call $~lib/math/NativeMath.random
    f64.const 0.5
    f64.sub
    f64.const 4
    f64.mul
    f32.demote_f64
    local.set $dx
    call $~lib/math/NativeMath.random
    f64.const 0.5
    f64.sub
    f64.const 4
    f64.mul
    f32.demote_f64
    local.set $dy
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    local.get $_x
    local.get $_y
    local.get $dx
    local.get $dy
    global.get $assembly/index/BULLET_WIDTH
    global.get $assembly/index/BULLET_HEIGHT
    global.get $assembly/index/BULLET_STRENGTH
    call $assembly/index/Bullet#constructor
    local.tee $_bullet
    i32.store offset=12
    local.get $this
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store offset=8
    local.get $18
    call $assembly/index/Game#get:bullets
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store
    local.get $18
    local.get $_bullet
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store offset=4
    local.get $18
    call $~lib/array/Array<assembly/index/Bullet>#push
    drop
   end
   i32.const 0
   local.set $i
   loop $for-loop|1
    local.get $i
    local.get $this
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store offset=4
    local.get $18
    call $assembly/index/Game#get:bullets
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store
    local.get $18
    call $~lib/array/Array<assembly/index/Bullet>#get:length
    i32.lt_s
    if
     local.get $this
     local.set $18
     global.get $~lib/memory/__stack_pointer
     local.get $18
     i32.store offset=8
     local.get $18
     call $assembly/index/Game#get:bullets
     local.set $18
     global.get $~lib/memory/__stack_pointer
     local.get $18
     i32.store offset=4
     local.get $18
     local.get $i
     call $~lib/array/Array<assembly/index/Bullet>#__get
     local.set $18
     global.get $~lib/memory/__stack_pointer
     local.get $18
     i32.store
     local.get $18
     call $assembly/index/Bullet#update
     local.get $this
     local.set $18
     global.get $~lib/memory/__stack_pointer
     local.get $18
     i32.store offset=8
     local.get $18
     call $assembly/index/Game#get:bullets
     local.set $18
     global.get $~lib/memory/__stack_pointer
     local.get $18
     i32.store offset=4
     local.get $18
     local.get $i
     call $~lib/array/Array<assembly/index/Bullet>#__get
     local.set $18
     global.get $~lib/memory/__stack_pointer
     local.get $18
     i32.store
     local.get $18
     call $assembly/index/Bullet#exit
     if (result i32)
      i32.const 1
     else
      local.get $this
      local.set $18
      global.get $~lib/memory/__stack_pointer
      local.get $18
      i32.store offset=8
      local.get $18
      call $assembly/index/Game#get:bullets
      local.set $18
      global.get $~lib/memory/__stack_pointer
      local.get $18
      i32.store offset=4
      local.get $18
      local.get $i
      call $~lib/array/Array<assembly/index/Bullet>#__get
      local.set $18
      global.get $~lib/memory/__stack_pointer
      local.get $18
      i32.store
      local.get $18
      call $assembly/index/Bullet#get:hp
      i32.const 0
      i32.le_s
     end
     if
      local.get $this
      local.set $18
      global.get $~lib/memory/__stack_pointer
      local.get $18
      i32.store offset=4
      local.get $18
      call $assembly/index/Game#get:bullets
      local.set $18
      global.get $~lib/memory/__stack_pointer
      local.get $18
      i32.store
      local.get $18
      local.get $i
      i32.const 1
      call $~lib/array/Array<assembly/index/Bullet>#splice
      drop
     end
     local.get $i
     i32.const 1
     i32.add
     local.set $i
     br $for-loop|1
    end
   end
   local.get $this
   local.set $18
   global.get $~lib/memory/__stack_pointer
   local.get $18
   i32.store
   local.get $18
   call $assembly/index/Game#get:shooting
   if
    local.get $this
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store offset=4
    local.get $18
    call $assembly/index/Game#get:ship
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store
    local.get $18
    call $assembly/index/Ship#get:x
    global.get $assembly/index/SHIP_WIDTH
    f32.const 2
    f32.div
    f32.add
    local.set $_x|8
    local.get $this
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store offset=4
    local.get $18
    call $assembly/index/Game#get:ship
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store
    local.get $18
    call $assembly/index/Ship#get:y
    local.set $_y|9
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    local.get $_x|8
    local.get $_y|9
    f32.const 0
    global.get $assembly/index/SHOT_SPEED
    global.get $assembly/index/SHOT_WIDTH
    global.get $assembly/index/SHOT_HEIGHT
    i32.const 1
    call $assembly/index/Shot#constructor
    local.tee $_shot
    i32.store offset=16
    local.get $this
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store
    local.get $18
    call $assembly/index/Game#get:super_time
    i32.const 0
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     local.get $_x|8
     local.get $_y|9
     f32.const 0
     global.get $assembly/index/SHOT_SPEED
     global.get $assembly/index/SUPER_SHOT_WIDTH
     global.get $assembly/index/SUPER_SHOT_HEIGHT
     i32.const 3
     call $assembly/index/SuperShot#constructor
     local.tee $_shot
     i32.store offset=16
     local.get $this
     local.set $18
     global.get $~lib/memory/__stack_pointer
     local.get $18
     i32.store
     local.get $18
     local.get $this
     local.set $18
     global.get $~lib/memory/__stack_pointer
     local.get $18
     i32.store offset=4
     local.get $18
     call $assembly/index/Game#get:super_time
     i32.const 1
     i32.sub
     call $assembly/index/Game#set:super_time
    end
    local.get $this
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store offset=8
    local.get $18
    call $assembly/index/Game#get:shots
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store
    local.get $18
    local.get $_shot
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store offset=4
    local.get $18
    call $~lib/array/Array<assembly/index/Shot>#push
    drop
   end
   i32.const 0
   local.set $i|11
   loop $for-loop|2
    local.get $i|11
    local.get $this
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store offset=4
    local.get $18
    call $assembly/index/Game#get:shots
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store
    local.get $18
    call $~lib/array/Array<assembly/index/Shot>#get:length
    i32.lt_s
    if
     local.get $this
     local.set $18
     global.get $~lib/memory/__stack_pointer
     local.get $18
     i32.store offset=8
     local.get $18
     call $assembly/index/Game#get:shots
     local.set $18
     global.get $~lib/memory/__stack_pointer
     local.get $18
     i32.store offset=4
     local.get $18
     local.get $i|11
     call $~lib/array/Array<assembly/index/Shot>#__get
     local.set $18
     global.get $~lib/memory/__stack_pointer
     local.get $18
     i32.store
     local.get $18
     call $assembly/index/Shot#update
     local.get $this
     local.set $18
     global.get $~lib/memory/__stack_pointer
     local.get $18
     i32.store offset=8
     local.get $18
     call $assembly/index/Game#get:shots
     local.set $18
     global.get $~lib/memory/__stack_pointer
     local.get $18
     i32.store offset=4
     local.get $18
     local.get $i|11
     call $~lib/array/Array<assembly/index/Shot>#__get
     local.set $18
     global.get $~lib/memory/__stack_pointer
     local.get $18
     i32.store
     local.get $18
     call $assembly/index/Shot#exit
     if (result i32)
      i32.const 1
     else
      local.get $this
      local.set $18
      global.get $~lib/memory/__stack_pointer
      local.get $18
      i32.store offset=8
      local.get $18
      call $assembly/index/Game#get:shots
      local.set $18
      global.get $~lib/memory/__stack_pointer
      local.get $18
      i32.store offset=4
      local.get $18
      local.get $i|11
      call $~lib/array/Array<assembly/index/Shot>#__get
      local.set $18
      global.get $~lib/memory/__stack_pointer
      local.get $18
      i32.store
      local.get $18
      call $assembly/index/Shot#get:hp
      i32.const 0
      i32.le_s
     end
     if
      local.get $this
      local.set $18
      global.get $~lib/memory/__stack_pointer
      local.get $18
      i32.store offset=4
      local.get $18
      call $assembly/index/Game#get:shots
      local.set $18
      global.get $~lib/memory/__stack_pointer
      local.get $18
      i32.store
      local.get $18
      local.get $i|11
      i32.const 1
      call $~lib/array/Array<assembly/index/Shot>#splice
      drop
     end
     local.get $i|11
     i32.const 1
     i32.add
     local.set $i|11
     br $for-loop|2
    end
   end
   i32.const 0
   local.set $i|12
   loop $for-loop|3
    local.get $i|12
    local.get $this
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store offset=4
    local.get $18
    call $assembly/index/Game#get:bullets
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store
    local.get $18
    call $~lib/array/Array<assembly/index/Bullet>#get:length
    i32.lt_s
    if
     local.get $this
     local.set $18
     global.get $~lib/memory/__stack_pointer
     local.get $18
     i32.store offset=20
     local.get $18
     call $assembly/index/Game#get:bullets
     local.set $18
     global.get $~lib/memory/__stack_pointer
     local.get $18
     i32.store offset=8
     local.get $18
     local.get $i|12
     call $~lib/array/Array<assembly/index/Bullet>#__get
     local.set $18
     global.get $~lib/memory/__stack_pointer
     local.get $18
     i32.store
     local.get $18
     local.get $this
     local.set $18
     global.get $~lib/memory/__stack_pointer
     local.get $18
     i32.store offset=8
     local.get $18
     call $assembly/index/Game#get:ship
     local.set $18
     global.get $~lib/memory/__stack_pointer
     local.get $18
     i32.store offset=4
     local.get $18
     call $assembly/index/Bullet#hit
     if
      local.get $this
      local.set $18
      global.get $~lib/memory/__stack_pointer
      local.get $18
      i32.store
      local.get $18
      global.get $assembly/index/Stage.gameover
      call $assembly/index/Game#set:stage
     end
     local.get $i|12
     i32.const 1
     i32.add
     local.set $i|12
     br $for-loop|3
    end
   end
   i32.const 0
   local.set $i|13
   loop $for-loop|4
    local.get $i|13
    local.get $this
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store offset=4
    local.get $18
    call $assembly/index/Game#get:bullets
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store
    local.get $18
    call $~lib/array/Array<assembly/index/Bullet>#get:length
    i32.lt_s
    if
     i32.const 0
     local.set $j
     loop $for-loop|5
      local.get $j
      local.get $this
      local.set $18
      global.get $~lib/memory/__stack_pointer
      local.get $18
      i32.store offset=4
      local.get $18
      call $assembly/index/Game#get:shots
      local.set $18
      global.get $~lib/memory/__stack_pointer
      local.get $18
      i32.store
      local.get $18
      call $~lib/array/Array<assembly/index/Shot>#get:length
      i32.lt_s
      if
       local.get $this
       local.set $18
       global.get $~lib/memory/__stack_pointer
       local.get $18
       i32.store offset=20
       local.get $18
       call $assembly/index/Game#get:bullets
       local.set $18
       global.get $~lib/memory/__stack_pointer
       local.get $18
       i32.store offset=8
       local.get $18
       local.get $i|13
       call $~lib/array/Array<assembly/index/Bullet>#__get
       local.set $18
       global.get $~lib/memory/__stack_pointer
       local.get $18
       i32.store
       local.get $18
       local.get $this
       local.set $18
       global.get $~lib/memory/__stack_pointer
       local.get $18
       i32.store offset=20
       local.get $18
       call $assembly/index/Game#get:shots
       local.set $18
       global.get $~lib/memory/__stack_pointer
       local.get $18
       i32.store offset=8
       local.get $18
       local.get $j
       call $~lib/array/Array<assembly/index/Shot>#__get
       local.set $18
       global.get $~lib/memory/__stack_pointer
       local.get $18
       i32.store offset=4
       local.get $18
       call $assembly/index/Bullet#hit
       if
        local.get $this
        local.set $18
        global.get $~lib/memory/__stack_pointer
        local.get $18
        i32.store offset=8
        local.get $18
        call $assembly/index/Game#get:shots
        local.set $18
        global.get $~lib/memory/__stack_pointer
        local.get $18
        i32.store offset=4
        local.get $18
        local.get $j
        call $~lib/array/Array<assembly/index/Shot>#__get
        local.set $18
        global.get $~lib/memory/__stack_pointer
        local.get $18
        i32.store
        local.get $18
        local.get $this
        local.set $18
        global.get $~lib/memory/__stack_pointer
        local.get $18
        i32.store offset=20
        local.get $18
        call $assembly/index/Game#get:shots
        local.set $18
        global.get $~lib/memory/__stack_pointer
        local.get $18
        i32.store offset=8
        local.get $18
        local.get $j
        call $~lib/array/Array<assembly/index/Shot>#__get
        local.set $18
        global.get $~lib/memory/__stack_pointer
        local.get $18
        i32.store offset=4
        local.get $18
        call $assembly/index/Shot#get:hp
        i32.const 1
        i32.sub
        call $assembly/index/Shot#set:hp
        local.get $this
        local.set $18
        global.get $~lib/memory/__stack_pointer
        local.get $18
        i32.store offset=8
        local.get $18
        call $assembly/index/Game#get:bullets
        local.set $18
        global.get $~lib/memory/__stack_pointer
        local.get $18
        i32.store offset=4
        local.get $18
        local.get $i|13
        call $~lib/array/Array<assembly/index/Bullet>#__get
        local.set $18
        global.get $~lib/memory/__stack_pointer
        local.get $18
        i32.store
        local.get $18
        local.get $this
        local.set $18
        global.get $~lib/memory/__stack_pointer
        local.get $18
        i32.store offset=20
        local.get $18
        call $assembly/index/Game#get:bullets
        local.set $18
        global.get $~lib/memory/__stack_pointer
        local.get $18
        i32.store offset=8
        local.get $18
        local.get $i|13
        call $~lib/array/Array<assembly/index/Bullet>#__get
        local.set $18
        global.get $~lib/memory/__stack_pointer
        local.get $18
        i32.store offset=4
        local.get $18
        call $assembly/index/Bullet#get:hp
        i32.const 1
        i32.sub
        call $assembly/index/Bullet#set:hp
       end
       local.get $j
       i32.const 1
       i32.add
       local.set $j
       br $for-loop|5
      end
     end
     local.get $i|13
     i32.const 1
     i32.add
     local.set $i|13
     br $for-loop|4
    end
   end
   i32.const 0
   local.set $i|15
   loop $for-loop|6
    local.get $i|15
    local.get $this
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store offset=4
    local.get $18
    call $assembly/index/Game#get:bosses
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store
    local.get $18
    call $~lib/array/Array<assembly/index/Boss>#get:length
    i32.lt_s
    if
     i32.const 0
     local.set $j|16
     loop $for-loop|7
      local.get $j|16
      local.get $this
      local.set $18
      global.get $~lib/memory/__stack_pointer
      local.get $18
      i32.store offset=4
      local.get $18
      call $assembly/index/Game#get:shots
      local.set $18
      global.get $~lib/memory/__stack_pointer
      local.get $18
      i32.store
      local.get $18
      call $~lib/array/Array<assembly/index/Shot>#get:length
      i32.lt_s
      if
       local.get $this
       local.set $18
       global.get $~lib/memory/__stack_pointer
       local.get $18
       i32.store offset=20
       local.get $18
       call $assembly/index/Game#get:bosses
       local.set $18
       global.get $~lib/memory/__stack_pointer
       local.get $18
       i32.store offset=8
       local.get $18
       local.get $i|15
       call $~lib/array/Array<assembly/index/Boss>#__get
       local.set $18
       global.get $~lib/memory/__stack_pointer
       local.get $18
       i32.store
       local.get $18
       local.get $this
       local.set $18
       global.get $~lib/memory/__stack_pointer
       local.get $18
       i32.store offset=20
       local.get $18
       call $assembly/index/Game#get:shots
       local.set $18
       global.get $~lib/memory/__stack_pointer
       local.get $18
       i32.store offset=8
       local.get $18
       local.get $j|16
       call $~lib/array/Array<assembly/index/Shot>#__get
       local.set $18
       global.get $~lib/memory/__stack_pointer
       local.get $18
       i32.store offset=4
       local.get $18
       call $assembly/index/Boss#hit
       if
        local.get $this
        local.set $18
        global.get $~lib/memory/__stack_pointer
        local.get $18
        i32.store offset=8
        local.get $18
        call $assembly/index/Game#get:shots
        local.set $18
        global.get $~lib/memory/__stack_pointer
        local.get $18
        i32.store offset=4
        local.get $18
        local.get $j|16
        call $~lib/array/Array<assembly/index/Shot>#__get
        local.set $18
        global.get $~lib/memory/__stack_pointer
        local.get $18
        i32.store
        local.get $18
        local.get $this
        local.set $18
        global.get $~lib/memory/__stack_pointer
        local.get $18
        i32.store offset=20
        local.get $18
        call $assembly/index/Game#get:shots
        local.set $18
        global.get $~lib/memory/__stack_pointer
        local.get $18
        i32.store offset=8
        local.get $18
        local.get $j|16
        call $~lib/array/Array<assembly/index/Shot>#__get
        local.set $18
        global.get $~lib/memory/__stack_pointer
        local.get $18
        i32.store offset=4
        local.get $18
        call $assembly/index/Shot#get:hp
        i32.const 1
        i32.sub
        call $assembly/index/Shot#set:hp
        local.get $this
        local.set $18
        global.get $~lib/memory/__stack_pointer
        local.get $18
        i32.store offset=8
        local.get $18
        call $assembly/index/Game#get:bosses
        local.set $18
        global.get $~lib/memory/__stack_pointer
        local.get $18
        i32.store offset=4
        local.get $18
        local.get $i|15
        call $~lib/array/Array<assembly/index/Boss>#__get
        local.set $18
        global.get $~lib/memory/__stack_pointer
        local.get $18
        i32.store
        local.get $18
        local.get $this
        local.set $18
        global.get $~lib/memory/__stack_pointer
        local.get $18
        i32.store offset=20
        local.get $18
        call $assembly/index/Game#get:bosses
        local.set $18
        global.get $~lib/memory/__stack_pointer
        local.get $18
        i32.store offset=8
        local.get $18
        local.get $i|15
        call $~lib/array/Array<assembly/index/Boss>#__get
        local.set $18
        global.get $~lib/memory/__stack_pointer
        local.get $18
        i32.store offset=4
        local.get $18
        call $assembly/index/Boss#get:hp
        i32.const 1
        i32.sub
        call $assembly/index/Boss#set:hp
       end
       local.get $j|16
       i32.const 1
       i32.add
       local.set $j|16
       br $for-loop|7
      end
     end
     local.get $i|15
     i32.const 1
     i32.add
     local.set $i|15
     br $for-loop|6
    end
   end
   local.get $this
   local.set $18
   global.get $~lib/memory/__stack_pointer
   local.get $18
   i32.store offset=4
   local.get $18
   call $assembly/index/Game#get:ship
   local.set $18
   global.get $~lib/memory/__stack_pointer
   local.get $18
   i32.store
   local.get $18
   call $assembly/index/Ship#update
   local.get $this
   local.set $18
   global.get $~lib/memory/__stack_pointer
   local.get $18
   i32.store offset=8
   local.get $18
   call $assembly/index/Game#get:bosses
   local.set $18
   global.get $~lib/memory/__stack_pointer
   local.get $18
   i32.store offset=4
   local.get $18
   i32.const 0
   call $~lib/array/Array<assembly/index/Boss>#__get
   local.set $18
   global.get $~lib/memory/__stack_pointer
   local.get $18
   i32.store
   local.get $18
   call $assembly/index/Boss#update
   local.get $this
   local.set $18
   global.get $~lib/memory/__stack_pointer
   local.get $18
   i32.store offset=8
   local.get $18
   call $assembly/index/Game#get:bosses
   local.set $18
   global.get $~lib/memory/__stack_pointer
   local.get $18
   i32.store offset=4
   local.get $18
   i32.const 0
   call $~lib/array/Array<assembly/index/Boss>#__get
   local.set $18
   global.get $~lib/memory/__stack_pointer
   local.get $18
   i32.store
   local.get $18
   call $assembly/index/Boss#get:hp
   i32.const 0
   i32.le_s
   if
    local.get $this
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store offset=4
    local.get $18
    call $assembly/index/Game#get:bosses
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store
    local.get $18
    i32.const 0
    i32.const 1
    call $~lib/array/Array<assembly/index/Boss>#splice
    drop
    local.get $this
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store offset=4
    local.get $18
    call $assembly/index/Game#get:bosses
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store
    local.get $18
    call $~lib/array/Array<assembly/index/Boss>#get:length
    i32.const 0
    i32.eq
    if
     local.get $this
     local.set $18
     global.get $~lib/memory/__stack_pointer
     local.get $18
     i32.store
     local.get $18
     global.get $assembly/index/Stage.gameclear
     call $assembly/index/Game#set:stage
    end
   end
   local.get $this
   local.set $18
   global.get $~lib/memory/__stack_pointer
   local.get $18
   i32.store
   local.get $18
   call $assembly/index/Game#get:shooting
   i32.const 0
   i32.ne
   i32.const 0
   i32.eq
   if (result i32)
    local.get $this
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store
    local.get $18
    call $assembly/index/Game#get:super_time
    i32.const 0
    i32.eq
   else
    i32.const 0
   end
   if
    local.get $this
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store
    local.get $18
    local.get $this
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store offset=4
    local.get $18
    call $assembly/index/Game#get:wait_time
    i32.const 1
    i32.add
    call $assembly/index/Game#set:wait_time
   end
   local.get $this
   local.set $18
   global.get $~lib/memory/__stack_pointer
   local.get $18
   i32.store
   local.get $18
   call $assembly/index/Game#get:wait_time
   global.get $assembly/index/SUPER_WAIT_TIME
   i32.gt_s
   if
    local.get $this
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store
    local.get $18
    global.get $assembly/index/SUPER_TIME
    call $assembly/index/Game#set:super_time
    global.get $~lib/memory/__stack_pointer
    local.get $this
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store
    local.get $18
    call $assembly/index/Game#get:ship
    local.tee $17
    i32.store offset=24
    local.get $17
    i32.eqz
    if (result i32)
     i32.const 0
    else
     local.get $17
     call $~instanceof|assembly/index/SuperShip
    end
    i32.eqz
    if
     local.get $this
     local.set $18
     global.get $~lib/memory/__stack_pointer
     local.get $18
     i32.store
     local.get $18
     i32.const 0
     local.get $this
     local.set $18
     global.get $~lib/memory/__stack_pointer
     local.get $18
     i32.store offset=20
     local.get $18
     call $assembly/index/Game#get:ship
     local.set $18
     global.get $~lib/memory/__stack_pointer
     local.get $18
     i32.store offset=8
     local.get $18
     call $assembly/index/Ship#get:x
     local.get $this
     local.set $18
     global.get $~lib/memory/__stack_pointer
     local.get $18
     i32.store offset=20
     local.get $18
     call $assembly/index/Game#get:ship
     local.set $18
     global.get $~lib/memory/__stack_pointer
     local.get $18
     i32.store offset=8
     local.get $18
     call $assembly/index/Ship#get:y
     local.get $this
     local.set $18
     global.get $~lib/memory/__stack_pointer
     local.get $18
     i32.store offset=20
     local.get $18
     call $assembly/index/Game#get:ship
     local.set $18
     global.get $~lib/memory/__stack_pointer
     local.get $18
     i32.store offset=8
     local.get $18
     call $assembly/index/Ship#get:dx
     local.get $this
     local.set $18
     global.get $~lib/memory/__stack_pointer
     local.get $18
     i32.store offset=20
     local.get $18
     call $assembly/index/Game#get:ship
     local.set $18
     global.get $~lib/memory/__stack_pointer
     local.get $18
     i32.store offset=8
     local.get $18
     call $assembly/index/Ship#get:dy
     local.get $this
     local.set $18
     global.get $~lib/memory/__stack_pointer
     local.get $18
     i32.store offset=20
     local.get $18
     call $assembly/index/Game#get:ship
     local.set $18
     global.get $~lib/memory/__stack_pointer
     local.get $18
     i32.store offset=8
     local.get $18
     call $assembly/index/Ship#get:w
     local.get $this
     local.set $18
     global.get $~lib/memory/__stack_pointer
     local.get $18
     i32.store offset=20
     local.get $18
     call $assembly/index/Game#get:ship
     local.set $18
     global.get $~lib/memory/__stack_pointer
     local.get $18
     i32.store offset=8
     local.get $18
     call $assembly/index/Ship#get:h
     local.get $this
     local.set $18
     global.get $~lib/memory/__stack_pointer
     local.get $18
     i32.store offset=20
     local.get $18
     call $assembly/index/Game#get:ship
     local.set $18
     global.get $~lib/memory/__stack_pointer
     local.get $18
     i32.store offset=8
     local.get $18
     call $assembly/index/Ship#get:hp
     local.get $this
     local.set $18
     global.get $~lib/memory/__stack_pointer
     local.get $18
     i32.store offset=20
     local.get $18
     call $assembly/index/Game#get:ship
     local.set $18
     global.get $~lib/memory/__stack_pointer
     local.get $18
     i32.store offset=8
     local.get $18
     call $assembly/index/Ship#get:mouse_x
     call $assembly/index/SuperShip#constructor
     local.set $18
     global.get $~lib/memory/__stack_pointer
     local.get $18
     i32.store offset=4
     local.get $18
     call $assembly/index/Game#set:ship
    end
   end
   local.get $this
   local.set $18
   global.get $~lib/memory/__stack_pointer
   local.get $18
   i32.store
   local.get $18
   call $assembly/index/Game#get:super_time
   i32.const 1
   i32.eq
   if
    local.get $this
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store
    local.get $18
    i32.const 0
    local.get $this
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store offset=20
    local.get $18
    call $assembly/index/Game#get:ship
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store offset=8
    local.get $18
    call $assembly/index/Ship#get:x
    local.get $this
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store offset=20
    local.get $18
    call $assembly/index/Game#get:ship
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store offset=8
    local.get $18
    call $assembly/index/Ship#get:y
    local.get $this
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store offset=20
    local.get $18
    call $assembly/index/Game#get:ship
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store offset=8
    local.get $18
    call $assembly/index/Ship#get:dx
    local.get $this
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store offset=20
    local.get $18
    call $assembly/index/Game#get:ship
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store offset=8
    local.get $18
    call $assembly/index/Ship#get:dy
    local.get $this
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store offset=20
    local.get $18
    call $assembly/index/Game#get:ship
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store offset=8
    local.get $18
    call $assembly/index/Ship#get:w
    local.get $this
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store offset=20
    local.get $18
    call $assembly/index/Game#get:ship
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store offset=8
    local.get $18
    call $assembly/index/Ship#get:h
    local.get $this
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store offset=20
    local.get $18
    call $assembly/index/Game#get:ship
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store offset=8
    local.get $18
    call $assembly/index/Ship#get:hp
    local.get $this
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store offset=20
    local.get $18
    call $assembly/index/Game#get:ship
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store offset=8
    local.get $18
    call $assembly/index/Ship#get:mouse_x
    call $assembly/index/Ship#constructor
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store offset=4
    local.get $18
    call $assembly/index/Game#set:ship
   end
   local.get $this
   local.set $18
   global.get $~lib/memory/__stack_pointer
   local.get $18
   i32.store
   local.get $18
   call $assembly/index/Game#get:shooting
   i32.const 0
   i32.ne
   i32.const 1
   i32.eq
   if
    local.get $this
    local.set $18
    global.get $~lib/memory/__stack_pointer
    local.get $18
    i32.store
    local.get $18
    i32.const 0
    call $assembly/index/Game#set:wait_time
   end
   br $break|0
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/draw_boss (param $x f32) (param $y f32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  call $assembly/index/jsBeginPath
  global.get $assembly/index/GREEN_DARK_LIGHT
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $assembly/index/jsSetFillStyle
  f32.const 55
  local.get $x
  f32.add
  f32.const 0
  local.get $y
  f32.add
  call $assembly/index/jsMoveTo
  f32.const 165
  local.get $x
  f32.add
  f32.const 0
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 225
  local.get $x
  f32.add
  f32.const 60
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 225
  local.get $x
  f32.add
  f32.const 160
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 160
  local.get $x
  f32.add
  f32.const 225
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 55
  local.get $x
  f32.add
  f32.const 225
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 0
  local.get $x
  f32.add
  f32.const 160
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 0
  local.get $x
  f32.add
  f32.const 60
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  call $assembly/index/jsClosePath
  call $assembly/index/jsFill
  call $assembly/index/jsBeginPath
  global.get $assembly/index/GREEN_DARK_LIGHT
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $assembly/index/jsSetFillStyle
  f32.const 55
  local.get $x
  f32.add
  f32.const 0
  local.get $y
  f32.add
  call $assembly/index/jsMoveTo
  f32.const 165
  local.get $x
  f32.add
  f32.const 0
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 225
  local.get $x
  f32.add
  f32.const 60
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 225
  local.get $x
  f32.add
  f32.const 160
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 160
  local.get $x
  f32.add
  f32.const 225
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 55
  local.get $x
  f32.add
  f32.const 225
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 0
  local.get $x
  f32.add
  f32.const 160
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 0
  local.get $x
  f32.add
  f32.const 60
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  call $assembly/index/jsClosePath
  call $assembly/index/jsFill
  call $assembly/index/jsBeginPath
  global.get $assembly/index/GREEN_DARK_LIGHT
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $assembly/index/jsSetFillStyle
  f32.const 55
  local.get $x
  f32.add
  f32.const 30
  local.get $y
  f32.add
  call $assembly/index/jsMoveTo
  f32.const 165
  local.get $x
  f32.add
  f32.const 30
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 195
  local.get $x
  f32.add
  f32.const 60
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 195
  local.get $x
  f32.add
  f32.const 160
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 160
  local.get $x
  f32.add
  f32.const 195
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 55
  local.get $x
  f32.add
  f32.const 195
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 26
  local.get $x
  f32.add
  f32.const 160
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 26
  local.get $x
  f32.add
  f32.const 60
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  call $assembly/index/jsClosePath
  call $assembly/index/jsStroke
  call $assembly/index/jsBeginPath
  global.get $assembly/index/DEFAULT_COLOR
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $assembly/index/jsSetStrokeStyle
  f32.const 2
  call $assembly/index/jsLineWidth
  f32.const 85
  local.get $x
  f32.add
  f32.const 85
  local.get $y
  f32.add
  call $assembly/index/jsMoveTo
  f32.const 140
  local.get $x
  f32.add
  f32.const 85
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 140
  local.get $x
  f32.add
  f32.const 140
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 85
  local.get $x
  f32.add
  f32.const 140
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  call $assembly/index/jsClosePath
  call $assembly/index/jsStroke
  call $assembly/index/jsBeginPath
  global.get $assembly/index/DEFAULT_COLOR
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $assembly/index/jsSetFillStyle
  f32.const 112
  local.get $x
  f32.add
  f32.const 112
  local.get $y
  f32.add
  f32.const 25
  f32.const 0
  f32.const 2
  f64.promote_f32
  global.get $~lib/math/NativeMath.PI
  f64.mul
  f32.demote_f64
  call $assembly/index/jsArc
  call $assembly/index/jsClosePath
  call $assembly/index/jsFill
  call $assembly/index/jsBeginPath
  global.get $assembly/index/LIGHT_GREEN_COLOR
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $assembly/index/jsSetFillStyle
  f32.const 112
  local.get $x
  f32.add
  f32.const 112
  local.get $y
  f32.add
  f32.const 20
  f32.const 0
  f32.const 2
  f64.promote_f32
  global.get $~lib/math/NativeMath.PI
  f64.mul
  f32.demote_f64
  call $assembly/index/jsArc
  call $assembly/index/jsClosePath
  call $assembly/index/jsFill
  call $assembly/index/jsBeginPath
  global.get $assembly/index/DEFAULT_COLOR
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $assembly/index/jsSetFillStyle
  f32.const 2
  call $assembly/index/jsLineWidth
  f32.const 70
  local.get $x
  f32.add
  f32.const 40
  local.get $y
  f32.add
  call $assembly/index/jsMoveTo
  f32.const 152
  local.get $x
  f32.add
  f32.const 40
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 140
  local.get $x
  f32.add
  f32.const 77
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 80
  local.get $x
  f32.add
  f32.const 77
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  call $assembly/index/jsClosePath
  call $assembly/index/jsFill
  call $assembly/index/jsBeginPath
  global.get $assembly/index/DEFAULT_COLOR
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $assembly/index/jsSetFillStyle
  f32.const 2
  call $assembly/index/jsLineWidth
  f32.const 84
  local.get $x
  f32.add
  f32.const 145
  local.get $y
  f32.add
  call $assembly/index/jsMoveTo
  f32.const 140
  local.get $x
  f32.add
  f32.const 145
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 152
  local.get $x
  f32.add
  f32.const 180
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 72
  local.get $x
  f32.add
  f32.const 180
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  call $assembly/index/jsClosePath
  call $assembly/index/jsFill
  call $assembly/index/jsBeginPath
  global.get $assembly/index/DEFAULT_COLOR
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $assembly/index/jsSetFillStyle
  f32.const 2
  call $assembly/index/jsLineWidth
  f32.const 147
  local.get $x
  f32.add
  f32.const 85
  local.get $y
  f32.add
  call $assembly/index/jsMoveTo
  f32.const 183
  local.get $x
  f32.add
  f32.const 70
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 183
  local.get $x
  f32.add
  f32.const 155
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 147
  local.get $x
  f32.add
  f32.const 140
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  call $assembly/index/jsClosePath
  call $assembly/index/jsFill
  call $assembly/index/jsBeginPath
  global.get $assembly/index/DEFAULT_COLOR
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $assembly/index/jsSetFillStyle
  f32.const 2
  call $assembly/index/jsLineWidth
  f32.const 80
  local.get $x
  f32.add
  f32.const 85
  local.get $y
  f32.add
  call $assembly/index/jsMoveTo
  f32.const 80
  local.get $x
  f32.add
  f32.const 140
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 40
  local.get $x
  f32.add
  f32.const 155
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 40
  local.get $x
  f32.add
  f32.const 70
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  call $assembly/index/jsClosePath
  call $assembly/index/jsFill
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/draw_ship (param $x f32) (param $y f32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  call $assembly/index/jsBeginPath
  global.get $assembly/index/DEFAULT_COLOR
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $assembly/index/jsSetFillStyle
  f32.const 17
  local.get $x
  f32.add
  f32.const 0
  local.get $y
  f32.add
  call $assembly/index/jsMoveTo
  f32.const 25
  local.get $x
  f32.add
  f32.const 0
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 25
  local.get $x
  f32.add
  f32.const 17
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 30
  local.get $x
  f32.add
  f32.const 17
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 30
  local.get $x
  f32.add
  f32.const 26
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 42
  local.get $x
  f32.add
  f32.const 47
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 0
  local.get $x
  f32.add
  f32.const 47
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 12
  local.get $x
  f32.add
  f32.const 26
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 12
  local.get $x
  f32.add
  f32.const 17
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 17
  local.get $x
  f32.add
  f32.const 17
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  call $assembly/index/jsClosePath
  call $assembly/index/jsFill
  call $assembly/index/jsBeginPath
  global.get $assembly/index/LIGHT_GREEN_COLOR
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $assembly/index/jsSetFillStyle
  f32.const 17
  local.get $x
  f32.add
  f32.const 27
  local.get $y
  f32.add
  call $assembly/index/jsMoveTo
  f32.const 24
  local.get $x
  f32.add
  f32.const 27
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 24
  local.get $x
  f32.add
  f32.const 45
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 17
  local.get $x
  f32.add
  f32.const 45
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  call $assembly/index/jsClosePath
  call $assembly/index/jsFill
  call $assembly/index/jsBeginPath
  global.get $assembly/index/LIGHT_GREEN_COLOR
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $assembly/index/jsSetFillStyle
  f32.const 11
  local.get $x
  f32.add
  f32.const 47
  local.get $y
  f32.add
  call $assembly/index/jsMoveTo
  f32.const 17
  local.get $x
  f32.add
  f32.const 47
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 14
  local.get $x
  f32.add
  f32.const 56
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  call $assembly/index/jsClosePath
  call $assembly/index/jsFill
  call $assembly/index/jsBeginPath
  global.get $assembly/index/LIGHT_GREEN_COLOR
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $assembly/index/jsSetFillStyle
  f32.const 26
  local.get $x
  f32.add
  f32.const 47
  local.get $y
  f32.add
  call $assembly/index/jsMoveTo
  f32.const 32
  local.get $x
  f32.add
  f32.const 47
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 29
  local.get $x
  f32.add
  f32.const 56
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  call $assembly/index/jsClosePath
  call $assembly/index/jsFill
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/string/String#concat (param $this i32) (param $other i32) (result i32)
  (local $thisSize i32)
  (local $otherSize i32)
  (local $outSize i32)
  (local $out i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $thisSize
  local.get $other
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $otherSize
  local.get $thisSize
  local.get $otherSize
  i32.add
  local.set $outSize
  local.get $outSize
  i32.const 0
  i32.eq
  if
   i32.const 3152
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $outSize
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $out
  i32.store offset=4
  local.get $out
  local.get $this
  local.get $thisSize
  memory.copy
  local.get $out
  local.get $thisSize
  i32.add
  local.get $other
  local.get $otherSize
  memory.copy
  local.get $out
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $~lib/string/String.__concat (param $left i32) (param $right i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $left
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $right
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/string/String#concat
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/string/String#slice (param $this i32) (param $start i32) (param $end i32) (result i32)
  (local $len i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $out i32)
  (local $13 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  call $~lib/string/String#get:length
  local.set $len
  local.get $start
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $start
   local.get $len
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
  else
   local.get $start
   local.tee $6
   local.get $len
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_s
   select
  end
  local.set $start
  local.get $end
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $end
   local.get $len
   i32.add
   local.tee $8
   i32.const 0
   local.tee $9
   local.get $8
   local.get $9
   i32.gt_s
   select
  else
   local.get $end
   local.tee $10
   local.get $len
   local.tee $11
   local.get $10
   local.get $11
   i32.lt_s
   select
  end
  local.set $end
  local.get $end
  local.get $start
  i32.sub
  local.set $len
  local.get $len
  i32.const 0
  i32.le_s
  if
   i32.const 3152
   local.set $13
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $13
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $len
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $out
  i32.store offset=4
  local.get $out
  local.get $this
  local.get $start
  i32.const 1
  i32.shl
  i32.add
  local.get $len
  i32.const 1
  i32.shl
  memory.copy
  local.get $out
  local.set $13
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $13
  return
 )
 (func $~lib/string/String#slice@varargs (param $this i32) (param $start i32) (param $end i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   global.get $~lib/builtins/i32.MAX_VALUE
   local.set $end
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $start
  local.get $end
  call $~lib/string/String#slice
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $assembly/index/Game#getpassedtime (param $this i32) (result i32)
  (local $_sec i32)
  (local $_minisec i32)
  (local $_sec_str i32)
  (local $_minisec_str i32)
  (local $_str i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 36
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  call $assembly/index/Game#get:passedsecondtime
  i32.const 10
  call $~lib/number/I32#toString
  local.tee $_sec
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  call $assembly/index/Game#get:passedminisecondtime
  i32.const 10
  call $~lib/number/I32#toString
  local.tee $_minisec
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 3120
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=12
  local.get $6
  local.get $_sec
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=16
  local.get $6
  call $~lib/string/String.__concat
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  i32.const -2
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  call $~lib/string/String#slice@varargs
  local.tee $_sec_str
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  i32.const 1536
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=12
  local.get $6
  local.get $_minisec
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=16
  local.get $6
  call $~lib/string/String.__concat
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  i32.const -1
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  call $~lib/string/String#slice@varargs
  local.tee $_minisec_str
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $_sec_str
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=16
  local.get $6
  i32.const 3184
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=28
  local.get $6
  call $~lib/string/String.__concat
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  local.get $_minisec_str
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=12
  local.get $6
  call $~lib/string/String.__concat
  local.tee $_str
  i32.store offset=32
  local.get $_str
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $~lib/util/string/joinStringArray (param $dataStart i32) (param $length i32) (param $separator i32) (result i32)
  (local $lastIndex i32)
  (local $4 i32)
  (local $estLen i32)
  (local $value i32)
  (local $i i32)
  (local $offset i32)
  (local $sepLen i32)
  (local $result i32)
  (local $i|11 i32)
  (local $valueLen i32)
  (local $13 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $length
  i32.const 1
  i32.sub
  local.set $lastIndex
  local.get $lastIndex
  i32.const 0
  i32.lt_s
  if
   i32.const 3152
   local.set $13
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $13
   return
  end
  local.get $lastIndex
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $dataStart
   i32.load
   local.tee $4
   i32.store
   local.get $4
   if (result i32)
    local.get $4
   else
    i32.const 3152
   end
   local.set $13
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $13
   return
  end
  i32.const 0
  local.set $estLen
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $length
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $dataStart
    local.get $i
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $value
    i32.store offset=4
    local.get $value
    i32.const 0
    i32.ne
    if
     local.get $estLen
     local.get $value
     local.set $13
     global.get $~lib/memory/__stack_pointer
     local.get $13
     i32.store offset=8
     local.get $13
     call $~lib/string/String#get:length
     i32.add
     local.set $estLen
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $offset
  local.get $separator
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store offset=8
  local.get $13
  call $~lib/string/String#get:length
  local.set $sepLen
  global.get $~lib/memory/__stack_pointer
  local.get $estLen
  local.get $sepLen
  local.get $lastIndex
  i32.mul
  i32.add
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $result
  i32.store offset=12
  i32.const 0
  local.set $i|11
  loop $for-loop|1
   local.get $i|11
   local.get $lastIndex
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $dataStart
    local.get $i|11
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $value
    i32.store offset=4
    local.get $value
    i32.const 0
    i32.ne
    if
     local.get $value
     local.set $13
     global.get $~lib/memory/__stack_pointer
     local.get $13
     i32.store offset=8
     local.get $13
     call $~lib/string/String#get:length
     local.set $valueLen
     local.get $result
     local.get $offset
     i32.const 1
     i32.shl
     i32.add
     local.get $value
     local.get $valueLen
     i32.const 1
     i32.shl
     memory.copy
     local.get $offset
     local.get $valueLen
     i32.add
     local.set $offset
    end
    local.get $sepLen
    if
     local.get $result
     local.get $offset
     i32.const 1
     i32.shl
     i32.add
     local.get $separator
     local.get $sepLen
     i32.const 1
     i32.shl
     memory.copy
     local.get $offset
     local.get $sepLen
     i32.add
     local.set $offset
    end
    local.get $i|11
    i32.const 1
    i32.add
    local.set $i|11
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $dataStart
  local.get $lastIndex
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $value
  i32.store offset=4
  local.get $value
  i32.const 0
  i32.ne
  if
   local.get $result
   local.get $offset
   i32.const 1
   i32.shl
   i32.add
   local.get $value
   local.get $value
   local.set $13
   global.get $~lib/memory/__stack_pointer
   local.get $13
   i32.store offset=8
   local.get $13
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   memory.copy
  end
  local.get $result
  local.set $13
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $13
  return
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#join (param $this i32) (param $separator i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  i32.const 1
  i32.lt_s
  drop
  i32.const 1
  drop
  local.get $this
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/staticarray/StaticArray<~lib/string/String>#get:length
  local.get $separator
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/util/string/joinStringArray
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $assembly/index/Boss#draw (param $this i32)
  (local $1 i32)
  (local $2 i32)
  (local $_txt i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $assembly/index/Boss#get:hp
  i32.const 10
  call $~lib/number/I32#toString
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  global.get $assembly/index/BOSS_MAX_HP
  i32.const 10
  call $~lib/number/I32#toString
  local.tee $2
  i32.store offset=8
  i32.const 3296
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  i32.const 0
  local.get $1
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=12
  local.get $4
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  i32.const 3296
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  i32.const 2
  local.get $2
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=12
  local.get $4
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  i32.const 3296
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  i32.const 3152
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=12
  local.get $4
  call $~lib/staticarray/StaticArray<~lib/string/String>#join
  local.tee $_txt
  i32.store offset=16
  i32.const 3328
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $assembly/index/jsSetFont
  global.get $assembly/index/LIGHT_GREEN_COLOR
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $assembly/index/jsSetFillStyle
  local.get $_txt
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=12
  local.get $4
  call $assembly/index/Boss#get:x
  f32.const 70
  f32.add
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=12
  local.get $4
  call $assembly/index/Boss#get:y
  f32.const 10
  f32.sub
  call $assembly/index/jsFillText
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $assembly/index/Boss#get:x
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $assembly/index/Boss#get:y
  call $assembly/index/draw_boss
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/Bullet#draw (param $this i32)
  (local $_x f32)
  (local $_y f32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $assembly/index/Bullet#get:x
  global.get $assembly/index/BULLET_WIDTH
  f32.const 2
  f32.div
  f32.add
  local.set $_x
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $assembly/index/Bullet#get:y
  global.get $assembly/index/BULLET_WIDTH
  f32.const 2
  f32.div
  f32.add
  local.set $_y
  call $assembly/index/jsBeginPath
  global.get $assembly/index/DEFAULT_COLOR
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $assembly/index/jsSetFillStyle
  local.get $_x
  local.get $_y
  global.get $assembly/index/BULLET_WIDTH
  f32.const 2
  f32.div
  f32.const 0
  global.get $~lib/math/NativeMath.PI
  f64.const 2
  f64.mul
  f32.demote_f64
  call $assembly/index/jsArc
  call $assembly/index/jsClosePath
  call $assembly/index/jsFill
  call $assembly/index/jsBeginPath
  global.get $assembly/index/LIGHT_GREEN_COLOR
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $assembly/index/jsSetFillStyle
  local.get $_x
  local.get $_y
  global.get $assembly/index/BULLET_WIDTH
  f32.const 4
  f32.div
  f32.const 0
  global.get $~lib/math/NativeMath.PI
  f64.const 2
  f64.mul
  f32.demote_f64
  call $assembly/index/jsArc
  call $assembly/index/jsClosePath
  call $assembly/index/jsFill
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/Shot#draw (param $this i32)
  (local $_x f32)
  (local $_y f32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $assembly/index/Shot#get:x
  global.get $assembly/index/SHOT_WIDTH
  f32.const 2
  f32.div
  f32.sub
  local.set $_x
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $assembly/index/Shot#get:y
  local.set $_y
  call $assembly/index/jsBeginPath
  global.get $assembly/index/DEFAULT_COLOR
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $assembly/index/jsSetFillStyle
  local.get $_x
  local.get $_y
  global.get $assembly/index/SHOT_HEIGHT
  f32.sub
  call $assembly/index/jsMoveTo
  local.get $_x
  global.get $assembly/index/SHOT_WIDTH
  f32.add
  local.get $_y
  global.get $assembly/index/SHOT_HEIGHT
  f32.sub
  call $assembly/index/jsLineTo
  local.get $_x
  global.get $assembly/index/SHOT_WIDTH
  f32.add
  local.get $_y
  call $assembly/index/jsLineTo
  local.get $_x
  local.get $_y
  call $assembly/index/jsLineTo
  call $assembly/index/jsClosePath
  call $assembly/index/jsFill
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/Ship#draw (param $this i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $assembly/index/Ship#get:x
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $assembly/index/Ship#get:y
  call $assembly/index/draw_ship
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/Game#draw (param $this i32)
  (local $1 i32)
  (local $i i32)
  (local $i|3 i32)
  (local $_str i32)
  (local $_bullet_number i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  f32.const 0
  f32.const 0
  global.get $assembly/index/CANVAS_WIDTH
  global.get $assembly/index/CANVAS_HEIGHT
  call $assembly/index/jsClearRect
  block $break|0
   block $case3|0
    block $case2|0
     block $case1|0
      block $case0|0
       local.get $this
       local.set $6
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store
       local.get $6
       call $assembly/index/Game#get:stage
       local.set $1
       local.get $1
       global.get $assembly/index/Stage.openning
       i32.eq
       br_if $case0|0
       local.get $1
       global.get $assembly/index/Stage.gameover
       i32.eq
       br_if $case1|0
       local.get $1
       global.get $assembly/index/Stage.gameclear
       i32.eq
       br_if $case2|0
       local.get $1
       global.get $assembly/index/Stage.playing
       i32.eq
       br_if $case3|0
       br $break|0
      end
      f32.const 130
      f32.const 20
      call $assembly/index/draw_boss
      i32.const 912
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      local.get $6
      call $assembly/index/jsSetFont
      i32.const 960
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      local.get $6
      f32.const 220
      f32.const 360
      call $assembly/index/jsFillText
      global.get $assembly/index/LIGHT_GREEN_COLOR
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      local.get $6
      call $assembly/index/jsSetFillStyle
      i32.const 1008
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      local.get $6
      call $assembly/index/jsSetFont
      i32.const 1056
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      local.get $6
      f32.const 340
      f32.const 420
      call $assembly/index/jsFillText
      global.get $assembly/index/DEFAULT_COLOR
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      local.get $6
      call $assembly/index/jsSetFillStyle
      i32.const 1008
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      local.get $6
      call $assembly/index/jsSetFont
      i32.const 1088
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      local.get $6
      f32.const 300
      f32.const 490
      call $assembly/index/jsFillText
      global.get $assembly/index/CANVAS_WIDTH
      f32.const 2
      f32.div
      global.get $assembly/index/SHIP_WIDTH
      f32.const 2
      f32.div
      f32.sub
      global.get $assembly/index/CANVAS_HEIGHT
      global.get $assembly/index/SHIP_HEIGHT
      f32.sub
      f32.const 10
      f32.sub
      call $assembly/index/draw_ship
      br $break|0
     end
     i32.const 912
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     local.get $6
     call $assembly/index/jsSetFont
     i32.const 1136
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     local.get $6
     f32.const 180
     f32.const 360
     call $assembly/index/jsFillText
     i32.const 1008
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     local.get $6
     call $assembly/index/jsSetFont
     global.get $assembly/index/DEFAULT_COLOR
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     local.get $6
     call $assembly/index/jsSetFillStyle
     i32.const 1184
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     local.get $6
     f32.const 300
     f32.const 420
     call $assembly/index/jsFillText
     br $break|0
    end
    i32.const 912
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store
    local.get $6
    call $assembly/index/jsSetFont
    i32.const 1232
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store
    local.get $6
    f32.const 150
    f32.const 360
    call $assembly/index/jsFillText
    global.get $assembly/index/DEFAULT_COLOR
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store
    local.get $6
    call $assembly/index/jsSetFillStyle
    i32.const 1008
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store
    local.get $6
    call $assembly/index/jsSetFont
    i32.const 1280
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store
    local.get $6
    f32.const 260
    f32.const 420
    call $assembly/index/jsFillText
    local.get $this
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=12
    local.get $6
    call $assembly/index/Game#getpassedtime
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=4
    local.get $6
    i32.const 3216
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=8
    local.get $6
    call $~lib/string/String.__concat
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store
    local.get $6
    f32.const 300
    f32.const 480
    call $assembly/index/jsFillText
    br $break|0
   end
   local.get $this
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $6
   call $assembly/index/Game#get:bosses
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   i32.const 0
   call $~lib/array/Array<assembly/index/Boss>#__get
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $assembly/index/Boss#draw
   i32.const 0
   local.set $i
   loop $for-loop|1
    local.get $i
    local.get $this
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=4
    local.get $6
    call $assembly/index/Game#get:bullets
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store
    local.get $6
    call $~lib/array/Array<assembly/index/Bullet>#get:length
    i32.lt_s
    if
     local.get $this
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store offset=8
     local.get $6
     call $assembly/index/Game#get:bullets
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store offset=4
     local.get $6
     local.get $i
     call $~lib/array/Array<assembly/index/Bullet>#__get
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     local.get $6
     call $assembly/index/Bullet#draw
     local.get $i
     i32.const 1
     i32.add
     local.set $i
     br $for-loop|1
    end
   end
   i32.const 0
   local.set $i|3
   loop $for-loop|2
    local.get $i|3
    local.get $this
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=4
    local.get $6
    call $assembly/index/Game#get:shots
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store
    local.get $6
    call $~lib/array/Array<assembly/index/Shot>#get:length
    i32.lt_s
    if
     local.get $this
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store offset=8
     local.get $6
     call $assembly/index/Game#get:shots
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store offset=4
     local.get $6
     local.get $i|3
     call $~lib/array/Array<assembly/index/Shot>#__get
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     local.get $6
     call $assembly/index/Shot#draw@override
     local.get $i|3
     i32.const 1
     i32.add
     local.set $i|3
     br $for-loop|2
    end
   end
   local.get $this
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   call $assembly/index/Game#get:ship
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $assembly/index/Ship#draw@override
   i32.const 1008
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $assembly/index/jsSetFont
   global.get $assembly/index/LIGHT_GREEN_COLOR
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $assembly/index/jsSetFillStyle
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $assembly/index/Game#getpassedtime
   local.tee $_str
   i32.store offset=16
   local.get $_str
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   f32.const 30
   f32.const 50
   call $assembly/index/jsFillText
   i32.const 3376
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $assembly/index/jsSetFont
   global.get $assembly/index/LIGHT_GREEN_COLOR
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $assembly/index/jsSetFillStyle
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   call $assembly/index/Game#get:bullets
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/array/Array<assembly/index/Bullet>#get:length
   i32.const 10
   call $~lib/number/I32#toString
   local.tee $_bullet_number
   i32.store offset=20
   i32.const 3424
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   local.get $_bullet_number
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $6
   call $~lib/string/String.__concat
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   f32.const 30
   f32.const 90
   call $assembly/index/jsFillText
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/animationFrameHandler
  (local $timestamp i32)
  (local $x f64)
  (local $delta f64)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  call $assembly/index/jsDatenow
  local.set $timestamp
  block $~lib/math/NativeMath.floor|inlined.0 (result f64)
   local.get $timestamp
   global.get $assembly/index/last_frame
   i32.sub
   f32.convert_i32_s
   f64.promote_f32
   local.set $x
   local.get $x
   f64.floor
   br $~lib/math/NativeMath.floor|inlined.0
  end
  local.set $delta
  loop $while-continue|0
   local.get $delta
   f64.const 0
   f64.ge
   if
    global.get $assembly/index/game
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    local.get $3
    call $assembly/index/Game#update
    local.get $delta
    f64.const 1e3
    global.get $assembly/index/fps
    f64.convert_i32_s
    f64.div
    f64.sub
    local.set $delta
    br $while-continue|0
   end
  end
  f32.const 0
  f32.const 0
  global.get $assembly/index/CANVAS_WIDTH
  global.get $assembly/index/CANVAS_HEIGHT
  call $assembly/index/jsClearRect
  global.get $assembly/index/game
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $assembly/index/Game#draw
  local.get $timestamp
  global.set $assembly/index/last_frame
  call $assembly/index/jsRequestAnimationFrame
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/Boss#constructor (param $this i32) (param $x f32) (param $y f32) (param $dx f32) (param $dy f32) (param $w f32) (param $h f32) (param $hp i32) (result i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.const 8
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  f32.const 0
  call $assembly/index/Boss#set:x
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  f32.const 0
  call $assembly/index/Boss#set:y
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  f32.const 0
  call $assembly/index/Boss#set:dx
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  f32.const 0
  call $assembly/index/Boss#set:dy
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  f32.const 0
  call $assembly/index/Boss#set:w
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  f32.const 0
  call $assembly/index/Boss#set:h
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  i32.const 0
  call $assembly/index/Boss#set:hp
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  f32.const 0
  call $assembly/index/Boss#set:d
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  local.get $x
  call $assembly/index/Boss#set:x
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  local.get $y
  call $assembly/index/Boss#set:y
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  local.get $dx
  call $assembly/index/Boss#set:dx
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  local.get $dy
  call $assembly/index/Boss#set:dy
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  local.get $w
  call $assembly/index/Boss#set:w
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  local.get $h
  call $assembly/index/Boss#set:h
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  local.get $hp
  call $assembly/index/Boss#set:hp
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  f32.const 1
  call $assembly/index/Boss#set:d
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $~lib/array/Array<assembly/index/Boss>#push (param $this i32) (param $value i32) (result i32)
  (local $oldLen i32)
  (local $len i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<assembly/index/Boss>#get:length_
  local.set $oldLen
  local.get $oldLen
  i32.const 1
  i32.add
  local.set $len
  local.get $this
  local.get $len
  i32.const 2
  i32.const 1
  call $~lib/array/ensureCapacity
  i32.const 1
  drop
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<assembly/index/Boss>#get:dataStart
  local.get $oldLen
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store
  local.get $this
  local.get $value
  i32.const 1
  call $~lib/rt/itcms/__link
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  local.get $len
  call $~lib/array/Array<assembly/index/Boss>#set:length_
  local.get $len
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $assembly/index/Game#reset (param $this i32)
  (local $_boss i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  global.get $assembly/index/Stage.openning
  call $assembly/index/Game#set:stage
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  i32.const 0
  call $assembly/index/Game#set:shooting
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  i32.const 0
  global.get $assembly/index/CANVAS_WIDTH
  f32.const 2
  f32.div
  global.get $assembly/index/SHIP_WIDTH
  f32.const 2
  f32.div
  f32.sub
  global.get $assembly/index/CANVAS_HEIGHT
  global.get $assembly/index/SHIP_HEIGHT
  f32.sub
  f32.const 10
  f32.sub
  global.get $assembly/index/SHIP_STEP
  f32.const 0
  global.get $assembly/index/SHIP_WIDTH
  global.get $assembly/index/SHIP_HEIGHT
  i32.const 1
  global.get $assembly/index/CANVAS_WIDTH
  f32.const 2
  f32.div
  global.get $assembly/index/SHIP_WIDTH
  f32.const 2
  f32.div
  f32.sub
  call $assembly/index/Ship#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $assembly/index/Game#set:ship
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  i32.const 0
  i32.const 0
  call $assembly/index/BossArray#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $assembly/index/Game#set:bosses
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  f32.const 180
  f32.const 60
  f32.const 1
  f32.const 0
  global.get $assembly/index/BOSS_WIDTH
  global.get $assembly/index/BOSS_HEIGHT
  global.get $assembly/index/BOSS_MAX_HP
  call $assembly/index/Boss#constructor
  local.tee $_boss
  i32.store offset=8
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=12
  local.get $2
  call $assembly/index/Game#get:bosses
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $_boss
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/array/Array<assembly/index/Boss>#push
  drop
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  i32.const 0
  call $assembly/index/Game#set:shooting
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  i32.const 0
  call $assembly/index/Game#set:wait_time
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  i32.const 0
  call $assembly/index/Game#set:super_time
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  i32.const 0
  i32.const 0
  call $assembly/index/BulletArray#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $assembly/index/Game#set:bullets
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  i32.const 0
  i32.const 0
  call $assembly/index/ShotArray#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $assembly/index/Game#set:shots
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $assembly/index/jsDatenow
  i32.const 1000
  i32.div_s
  call $assembly/index/Game#set:startsecondtime
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $assembly/index/jsDatenow
  call $assembly/index/Game#set:startminisecondtime
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $assembly/index/Game#get:startminisecondtime
  call $assembly/index/Game#set:passedsecondtime
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $assembly/index/Game#get:startminisecondtime
  call $assembly/index/Game#set:passedminisecondtime
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/Game#shot (param $this i32)
  (local $1 i32)
  (local $_boss i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  block $break|0
   block $case4|0
    block $case3|0
     block $case2|0
      block $case1|0
       block $case0|0
        local.get $this
        local.set $3
        global.get $~lib/memory/__stack_pointer
        local.get $3
        i32.store
        local.get $3
        call $assembly/index/Game#get:stage
        local.set $1
        local.get $1
        global.get $assembly/index/Stage.gameclear
        i32.eq
        br_if $case0|0
        local.get $1
        global.get $assembly/index/Stage.gameover
        i32.eq
        br_if $case1|0
        local.get $1
        global.get $assembly/index/Stage.openning
        i32.eq
        br_if $case2|0
        local.get $1
        global.get $assembly/index/Stage.playing
        i32.eq
        br_if $case3|0
        br $case4|0
       end
       local.get $this
       local.set $3
       global.get $~lib/memory/__stack_pointer
       local.get $3
       i32.store
       local.get $3
       global.get $assembly/index/Stage.playing
       call $assembly/index/Game#set:stage
       local.get $this
       local.set $3
       global.get $~lib/memory/__stack_pointer
       local.get $3
       i32.store
       local.get $3
       call $assembly/index/Game#reset
       br $break|0
      end
      local.get $this
      local.set $3
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store
      local.get $3
      call $assembly/index/Game#reset
      br $break|0
     end
     local.get $this
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=4
     local.get $3
     call $assembly/index/Game#get:bosses
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store
     local.get $3
     call $~lib/array/Array<assembly/index/Boss>#get:length
     i32.const 0
     i32.eq
     if
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      f32.const 180
      f32.const 60
      f32.const 1
      f32.const 0
      global.get $assembly/index/BOSS_WIDTH
      global.get $assembly/index/BOSS_HEIGHT
      global.get $assembly/index/BOSS_MAX_HP
      call $assembly/index/Boss#constructor
      local.tee $_boss
      i32.store offset=8
      local.get $this
      local.set $3
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store offset=12
      local.get $3
      call $assembly/index/Game#get:bosses
      local.set $3
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store
      local.get $3
      local.get $_boss
      local.set $3
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store offset=4
      local.get $3
      call $~lib/array/Array<assembly/index/Boss>#push
      drop
     end
     local.get $this
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store
     local.get $3
     global.get $assembly/index/Stage.playing
     call $assembly/index/Game#set:stage
     br $break|0
    end
    local.get $this
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    local.get $3
    i32.const 0
    call $assembly/index/Game#set:wait_time
    local.get $this
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    local.get $3
    local.get $this
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=4
    local.get $3
    call $assembly/index/Game#get:shooting
    if (result i32)
     i32.const 0
    else
     i32.const 1
    end
    call $assembly/index/Game#set:shooting
    br $break|0
   end
   br $break|0
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/shot
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $assembly/index/game
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/index/Game#shot
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/Ship#move (param $this i32) (param $offset_x f32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $offset_x
  call $assembly/index/Ship#set:mouse_x
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/move (param $offsetx f32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $assembly/index/game
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $assembly/index/Game#get:ship
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  local.get $offsetx
  call $assembly/index/Ship#move
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/SuperShot#draw (param $this i32)
  (local $_x f32)
  (local $_y f32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $assembly/index/Shot#get:x
  global.get $assembly/index/SUPER_SHOT_WIDTH
  f32.const 2
  f32.div
  f32.sub
  local.set $_x
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $assembly/index/Shot#get:y
  local.set $_y
  call $assembly/index/jsBeginPath
  global.get $assembly/index/DEFAULT_COLOR
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $assembly/index/jsSetFillStyle
  local.get $_x
  local.get $_y
  global.get $assembly/index/SUPER_SHOT_HEIGHT
  f32.sub
  call $assembly/index/jsMoveTo
  local.get $_x
  global.get $assembly/index/SUPER_SHOT_WIDTH
  f32.add
  local.get $_y
  global.get $assembly/index/SUPER_SHOT_HEIGHT
  f32.sub
  call $assembly/index/jsLineTo
  local.get $_x
  global.get $assembly/index/SUPER_SHOT_WIDTH
  f32.add
  local.get $_y
  call $assembly/index/jsLineTo
  local.get $_x
  local.get $_y
  call $assembly/index/jsLineTo
  call $assembly/index/jsClosePath
  call $assembly/index/jsFill
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/draw_super_ship (param $x f32) (param $y f32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  call $assembly/index/jsBeginPath
  global.get $assembly/index/LIGHT_YELLOR_GREEN
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $assembly/index/jsSetFillStyle
  f32.const 17
  local.get $x
  f32.add
  f32.const 0
  local.get $y
  f32.add
  call $assembly/index/jsMoveTo
  f32.const 25
  local.get $x
  f32.add
  f32.const 0
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 25
  local.get $x
  f32.add
  f32.const 17
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 30
  local.get $x
  f32.add
  f32.const 17
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 30
  local.get $x
  f32.add
  f32.const 26
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 42
  local.get $x
  f32.add
  f32.const 47
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 0
  local.get $x
  f32.add
  f32.const 47
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 12
  local.get $x
  f32.add
  f32.const 26
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 12
  local.get $x
  f32.add
  f32.const 17
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 17
  local.get $x
  f32.add
  f32.const 17
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  call $assembly/index/jsClosePath
  call $assembly/index/jsFill
  call $assembly/index/jsBeginPath
  global.get $assembly/index/DEFAULT_COLOR
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $assembly/index/jsSetFillStyle
  f32.const 17
  local.get $x
  f32.add
  f32.const 27
  local.get $y
  f32.add
  call $assembly/index/jsMoveTo
  f32.const 24
  local.get $x
  f32.add
  f32.const 27
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 24
  local.get $x
  f32.add
  f32.const 45
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 17
  local.get $x
  f32.add
  f32.const 45
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  call $assembly/index/jsClosePath
  call $assembly/index/jsFill
  call $assembly/index/jsBeginPath
  global.get $assembly/index/LIGHT_GREEN_COLOR
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $assembly/index/jsSetFillStyle
  f32.const 11
  local.get $x
  f32.add
  f32.const 47
  local.get $y
  f32.add
  call $assembly/index/jsMoveTo
  f32.const 17
  local.get $x
  f32.add
  f32.const 47
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 14
  local.get $x
  f32.add
  f32.const 56
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  call $assembly/index/jsClosePath
  call $assembly/index/jsFill
  call $assembly/index/jsBeginPath
  global.get $assembly/index/LIGHT_GREEN_COLOR
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $assembly/index/jsSetFillStyle
  f32.const 26
  local.get $x
  f32.add
  f32.const 47
  local.get $y
  f32.add
  call $assembly/index/jsMoveTo
  f32.const 32
  local.get $x
  f32.add
  f32.const 47
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  f32.const 29
  local.get $x
  f32.add
  f32.const 56
  local.get $y
  f32.add
  call $assembly/index/jsLineTo
  call $assembly/index/jsClosePath
  call $assembly/index/jsFill
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/SuperShip#draw (param $this i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $assembly/index/Ship#get:x
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $assembly/index/Ship#get:y
  call $assembly/index/draw_super_ship
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<assembly/index/Boss>#__visit (param $this i32) (param $cookie i32)
  (local $cur i32)
  (local $end i32)
  (local $val i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 1
  drop
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<assembly/index/Boss>#get:dataStart
  local.set $cur
  local.get $cur
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<assembly/index/Boss>#get:length_
  i32.const 2
  i32.shl
  i32.add
  local.set $end
  loop $while-continue|0
   local.get $cur
   local.get $end
   i32.lt_u
   if
    local.get $cur
    i32.load
    local.set $val
    local.get $val
    if
     local.get $val
     local.get $cookie
     call $~lib/rt/itcms/__visit
    end
    local.get $cur
    i32.const 4
    i32.add
    local.set $cur
    br $while-continue|0
   end
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<assembly/index/Boss>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<assembly/index/Bullet>#__visit (param $this i32) (param $cookie i32)
  (local $cur i32)
  (local $end i32)
  (local $val i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 1
  drop
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<assembly/index/Bullet>#get:dataStart
  local.set $cur
  local.get $cur
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<assembly/index/Bullet>#get:length_
  i32.const 2
  i32.shl
  i32.add
  local.set $end
  loop $while-continue|0
   local.get $cur
   local.get $end
   i32.lt_u
   if
    local.get $cur
    i32.load
    local.set $val
    local.get $val
    if
     local.get $val
     local.get $cookie
     call $~lib/rt/itcms/__visit
    end
    local.get $cur
    i32.const 4
    i32.add
    local.set $cur
    br $while-continue|0
   end
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<assembly/index/Bullet>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<assembly/index/Shot>#__visit (param $this i32) (param $cookie i32)
  (local $cur i32)
  (local $end i32)
  (local $val i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 1
  drop
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<assembly/index/Shot>#get:dataStart
  local.set $cur
  local.get $cur
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<assembly/index/Shot>#get:length_
  i32.const 2
  i32.shl
  i32.add
  local.set $end
  loop $while-continue|0
   local.get $cur
   local.get $end
   i32.lt_u
   if
    local.get $cur
    i32.load
    local.set $val
    local.get $val
    if
     local.get $val
     local.get $cookie
     call $~lib/rt/itcms/__visit
    end
    local.get $cur
    i32.const 4
    i32.add
    local.set $cur
    br $while-continue|0
   end
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<assembly/index/Shot>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<i32>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  drop
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/array/Array<i32>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/rt/__newArray (param $length i32) (param $alignLog2 i32) (param $id i32) (param $data i32) (result i32)
  (local $bufferSize i32)
  (local $buffer i32)
  (local $array i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $length
  local.get $alignLog2
  i32.shl
  local.set $bufferSize
  global.get $~lib/memory/__stack_pointer
  local.get $bufferSize
  i32.const 1
  local.get $data
  call $~lib/rt/__newBuffer
  local.tee $buffer
  i32.store
  i32.const 16
  local.get $id
  call $~lib/rt/itcms/__new
  local.set $array
  local.get $array
  local.get $buffer
  i32.store
  local.get $array
  local.get $buffer
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $array
  local.get $buffer
  i32.store offset=4
  local.get $array
  local.get $bufferSize
  i32.store offset=8
  local.get $array
  local.get $length
  i32.store offset=12
  local.get $array
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
  return
 )
 (func $~lib/util/number/itoa32 (param $value i32) (param $radix i32) (result i32)
  (local $sign i32)
  (local $out i32)
  (local $decimals i32)
  (local $buffer i32)
  (local $num i32)
  (local $offset i32)
  (local $decimals|8 i32)
  (local $buffer|9 i32)
  (local $num|10 i32)
  (local $offset|11 i32)
  (local $val32 i32)
  (local $decimals|13 i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $radix
  i32.const 2
  i32.lt_s
  if (result i32)
   i32.const 1
  else
   local.get $radix
   i32.const 36
   i32.gt_s
  end
  if
   i32.const 1344
   i32.const 1472
   i32.const 373
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $value
  i32.eqz
  if
   i32.const 1536
   local.set $14
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $14
   return
  end
  local.get $value
  i32.const 31
  i32.shr_u
  i32.const 1
  i32.shl
  local.set $sign
  local.get $sign
  if
   i32.const 0
   local.get $value
   i32.sub
   local.set $value
  end
  local.get $radix
  i32.const 10
  i32.eq
  if
   local.get $value
   call $~lib/util/number/decimalCount32
   local.set $decimals
   global.get $~lib/memory/__stack_pointer
   local.get $decimals
   i32.const 1
   i32.shl
   local.get $sign
   i32.add
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $out
   i32.store
   local.get $out
   local.get $sign
   i32.add
   local.set $buffer
   local.get $value
   local.set $num
   local.get $decimals
   local.set $offset
   i32.const 0
   i32.const 1
   i32.ge_s
   drop
   local.get $buffer
   local.get $num
   local.get $offset
   call $~lib/util/number/utoa32_dec_lut
  else
   local.get $radix
   i32.const 16
   i32.eq
   if
    i32.const 31
    local.get $value
    i32.clz
    i32.sub
    i32.const 2
    i32.shr_s
    i32.const 1
    i32.add
    local.set $decimals|8
    global.get $~lib/memory/__stack_pointer
    local.get $decimals|8
    i32.const 1
    i32.shl
    local.get $sign
    i32.add
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $out
    i32.store
    local.get $out
    local.get $sign
    i32.add
    local.set $buffer|9
    local.get $value
    local.set $num|10
    local.get $decimals|8
    local.set $offset|11
    i32.const 0
    i32.const 1
    i32.ge_s
    drop
    local.get $buffer|9
    local.get $num|10
    i64.extend_i32_u
    local.get $offset|11
    call $~lib/util/number/utoa_hex_lut
   else
    local.get $value
    local.set $val32
    local.get $val32
    i64.extend_i32_u
    local.get $radix
    call $~lib/util/number/ulog_base
    local.set $decimals|13
    global.get $~lib/memory/__stack_pointer
    local.get $decimals|13
    i32.const 1
    i32.shl
    local.get $sign
    i32.add
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $out
    i32.store
    local.get $out
    local.get $sign
    i32.add
    local.get $val32
    i64.extend_i32_u
    local.get $decimals|13
    local.get $radix
    call $~lib/util/number/utoa64_any_core
   end
  end
  local.get $sign
  if
   local.get $out
   i32.const 45
   i32.store16
  end
  local.get $out
  local.set $14
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $14
  return
 )
)
