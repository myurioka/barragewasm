(module
 (type $0 (func))
 (type $1 (func (param i32)))
 (type $2 (func (param i32 i32) (result i32)))
 (type $3 (func (result i32)))
 (type $4 (func (param f32 f32)))
 (type $5 (func (param i32) (result i32)))
 (type $6 (func (param i32 i32)))
 (type $7 (func (result f64)))
 (type $8 (func (param f32)))
 (type $9 (func (param i32 i32 i32 i32)))
 (type $10 (func (param i32 i32 i64)))
 (type $11 (func (param i32 i32 i32)))
 (type $12 (func (param f32 f32 f32 f32)))
 (type $13 (func (param f32 f32 f32 f32 f32)))
 (type $14 (func (param i32 f32 f32)))
 (type $15 (func (param i32 f32 f32 f32 f32 f32 f32 i32 f32) (result i32)))
 (type $16 (func (param i32 f32 f32 f32 f32 i32) (result i32)))
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
 (global $assembly/index/last_frame (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $assembly/index/game (mut i32) (i32.const 0))
 (global $~lib/math/random_seeded (mut i32) (i32.const 0))
 (global $~lib/math/random_state0_64 (mut i64) (i64.const 0))
 (global $~lib/math/random_state1_64 (mut i64) (i64.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 37540))
 (memory $0 1)
 (data $0 (i32.const 1036) "<")
 (data $0.1 (i32.const 1048) "\02\00\00\00&\00\00\00r\00g\00b\00a\00(\000\00,\001\002\008\00,\00 \000\00,\00 \001\00.\000\00)")
 (data $1 (i32.const 1100) "<")
 (data $1.1 (i32.const 1112) "\02\00\00\00*\00\00\00r\00g\00b\00a\00(\002\002\006\00,\002\003\008\00,\001\009\007\00,\001\00.\000\00)")
 (data $2 (i32.const 1164) "<")
 (data $2.1 (i32.const 1176) "\02\00\00\00$\00\00\00r\00g\00b\00a\00(\001\007\00,\003\001\00,\001\007\00,\001\00.\000\00)")
 (data $3 (i32.const 1228) "<")
 (data $3.1 (i32.const 1240) "\02\00\00\00*\00\00\00r\00g\00b\00a\00(\001\006\008\00,\002\003\000\00,\002\000\007\00,\001\00.\000\00)")
 (data $4 (i32.const 1292) "<")
 (data $4.1 (i32.const 1304) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data $5 (i32.const 1356) "<")
 (data $5.1 (i32.const 1368) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data $8 (i32.const 1484) "<")
 (data $8.1 (i32.const 1496) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $9 (i32.const 1548) ",")
 (data $9.1 (i32.const 1560) "\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data $11 (i32.const 1628) "<")
 (data $11.1 (i32.const 1640) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data $12 (i32.const 1692) ",")
 (data $12.1 (i32.const 1704) "\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data $13 (i32.const 1740) ",")
 (data $13.1 (i32.const 1752) "\02\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $14 (i32.const 1788) "|")
 (data $14.1 (i32.const 1800) "\02\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data $15 (i32.const 1916) ",")
 (data $15.1 (i32.const 1928) "\02\00\00\00\16\00\00\006\000\00p\00x\00 \00m\00y\00f\00o\00n\00t")
 (data $16 (i32.const 1964) ",")
 (data $16.1 (i32.const 1976) "\02\00\00\00\0e\00\00\00B\00A\00R\00R\00A\00G\00E")
 (data $17 (i32.const 2012) ",")
 (data $17.1 (i32.const 2024) "\02\00\00\00\16\00\00\002\008\00p\00x\00 \00m\00y\00f\00o\00n\00t")
 (data $18 (i32.const 2060) "\1c")
 (data $18.1 (i32.const 2072) "\02\00\00\00\08\00\00\00W\00A\00S\00M")
 (data $19 (i32.const 2092) ",")
 (data $19.1 (i32.const 2104) "\02\00\00\00\16\00\00\00C\00l\00i\00c\00k\00 \00S\00t\00a\00r\00t")
 (data $20 (i32.const 2140) ",")
 (data $20.1 (i32.const 2152) "\02\00\00\00\12\00\00\00G\00A\00M\00E\00 \00O\00V\00E\00R")
 (data $21 (i32.const 2188) ",")
 (data $21.1 (i32.const 2200) "\02\00\00\00\1a\00\00\00C\00l\00i\00c\00k\00 \00R\00e\00S\00t\00a\00r\00t")
 (data $22 (i32.const 2236) ",")
 (data $22.1 (i32.const 2248) "\02\00\00\00\14\00\00\00G\00A\00M\00E\00 \00C\00L\00E\00A\00R")
 (data $23 (i32.const 2284) "<")
 (data $23.1 (i32.const 2296) "\02\00\00\00\1e\00\00\00C\00o\00n\00g\00r\00a\00t\00u\00a\00t\00i\00o\00n\00s\00!")
 (data $24 (i32.const 2348) "<")
 (data $24.1 (i32.const 2360) "\02\00\00\00\"\00\00\00Y\00o\00u\00r\00 \00c\00l\00e\00a\00r\00 \00t\00i\00m\00e\00:\00 ")
 (data $25 (i32.const 2412) "|")
 (data $25.1 (i32.const 2424) "\02\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data $26 (i32.const 2540) "<")
 (data $26.1 (i32.const 2552) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data $27 (i32.const 2604) "\1c")
 (data $27.1 (i32.const 2616) "\02\00\00\00\02\00\00\000")
 (data $28 (i32.const 2636) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data $29 (i32.const 3036) "\1c\04")
 (data $29.1 (i32.const 3048) "\02\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f")
 (data $30 (i32.const 4092) "\\")
 (data $30.1 (i32.const 4104) "\02\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data $31 (i32.const 4188) "\1c")
 (data $31.1 (i32.const 4200) "\02\00\00\00\04\00\00\000\000")
 (data $32 (i32.const 4220) "\1c")
 (data $32.1 (i32.const 4232) "\02")
 (data $33 (i32.const 4252) "\1c")
 (data $33.1 (i32.const 4264) "\02\00\00\00\02\00\00\00.")
 (data $34 (i32.const 4284) "\1c")
 (data $34.1 (i32.const 4296) "\02\00\00\00\06\00\00\00 \00s\00.")
 (data $35 (i32.const 4316) "<")
 (data $35.1 (i32.const 4328) "\02\00\00\00\"\00\00\00m\00a\00x\00 \00u\00p\00d\00a\00t\00e\00 \00t\00i\00m\00e\00:\00 ")
 (data $36 (i32.const 4380) "\1c")
 (data $36.1 (i32.const 4392) "\02\00\00\00\08\00\00\00 \00m\00s\00.")
 (data $37 (i32.const 4412) "<")
 (data $37.1 (i32.const 4424) "\02\00\00\00$\00\00\00m\00a\00x\00 \00d\00r\00a\00w\00 \00t\00i\00m\00e\00:\00 \00 \00 \00 ")
 (data $38 (i32.const 4476) "\1c")
 (data $38.1 (i32.const 4488) "\02\00\00\00\06\00\00\00 \00/\00 ")
 (data $39 (i32.const 4508) "\1c\00\00\00\03\00\00\00\00\00\00\00\13\00\00\00\0c\00\00\00\00\00\00\00\90\11")
 (data $40 (i32.const 4540) ",")
 (data $40.1 (i32.const 4552) "\02\00\00\00\16\00\00\001\002\00p\00x\00 \00m\00y\00f\00o\00n\00t")
 (data $41 (i32.const 4588) ",")
 (data $41.1 (i32.const 4600) "\02\00\00\00\16\00\00\001\008\00p\00x\00 \00m\00y\00f\00o\00n\00t")
 (data $42 (i32.const 4636) ",")
 (data $42.1 (i32.const 4648) "\02\00\00\00\12\00\00\00B\00u\00l\00l\00e\00t\00s\00:\00 ")
 (data $43 (i32.const 4688) "\14\00\00\00 \00\00\00 \00\00\00 ")
 (data $43.1 (i32.const 4712) " \00\00\00 \00\00\00\02A\00\00 \00\00\00\02A\00\00\02A\00\00 \00\00\00\02A\00\00\02A\00\00 \00\00\00\02A\00\00\02\t\00\00 \00\00\00 \00\00\00\04A")
 (export "animationFrameHandler" (func $assembly/index/animationFrameHandler))
 (export "startAnimation" (func $assembly/index/startAnimation))
 (export "shot" (func $assembly/index/shot))
 (export "move" (func $assembly/index/move))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  i32.const 1056
  call $~lib/rt/itcms/__visit
  i32.const 1120
  call $~lib/rt/itcms/__visit
  i32.const 1184
  call $~lib/rt/itcms/__visit
  i32.const 1248
  call $~lib/rt/itcms/__visit
  global.get $assembly/index/game
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  i32.const 1504
  call $~lib/rt/itcms/__visit
  i32.const 1712
  call $~lib/rt/itcms/__visit
  i32.const 1808
  call $~lib/rt/itcms/__visit
  i32.const 1312
  call $~lib/rt/itcms/__visit
  i32.const 3056
  call $~lib/rt/itcms/__visit
  i32.const 4112
  call $~lib/rt/itcms/__visit
  global.get $~lib/rt/itcms/pinSpace
  local.tee $1
  i32.load offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $1
   i32.ne
   if
    local.get $0
    i32.load offset=4
    i32.const 3
    i32.and
    i32.const 3
    i32.ne
    if
     i32.const 0
     i32.const 1376
     i32.const 160
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 20
    i32.add
    call $~lib/rt/__visit_members
    local.get $0
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#makeGray (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $0
   i32.load offset=8
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1376
    i32.const 148
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   global.set $~lib/rt/itcms/iter
  end
  block $__inlined_func$~lib/rt/itcms/Object#unlink$599
   local.get $0
   i32.load offset=4
   i32.const -4
   i32.and
   local.tee $1
   i32.eqz
   if
    local.get $0
    i32.load offset=8
    i32.eqz
    local.get $0
    i32.const 37540
    i32.lt_u
    i32.and
    i32.eqz
    if
     i32.const 0
     i32.const 1376
     i32.const 128
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    br $__inlined_func$~lib/rt/itcms/Object#unlink$599
   end
   local.get $0
   i32.load offset=8
   local.tee $2
   i32.eqz
   if
    i32.const 0
    i32.const 1376
    i32.const 132
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   local.get $2
   i32.store offset=8
   local.get $2
   local.get $1
   local.get $2
   i32.load offset=4
   i32.const 3
   i32.and
   i32.or
   i32.store offset=4
  end
  global.get $~lib/rt/itcms/toSpace
  local.set $2
  local.get $0
  i32.load offset=12
  local.tee $1
  i32.const 2
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 4688
   i32.load
   i32.gt_u
   if
    i32.const 1504
    i32.const 1568
    i32.const 21
    i32.const 28
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 2
   i32.shl
   i32.const 4692
   i32.add
   i32.load
   i32.const 32
   i32.and
  end
  local.set $3
  local.get $2
  i32.load offset=8
  local.set $1
  local.get $0
  global.get $~lib/rt/itcms/white
  i32.eqz
  i32.const 2
  local.get $3
  select
  local.get $2
  i32.or
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $1
  local.get $0
  local.get $1
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store offset=4
  local.get $2
  local.get $0
  i32.store offset=8
 )
 (func $~lib/rt/itcms/__visit (param $0 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  global.get $~lib/rt/itcms/white
  local.get $0
  i32.const 20
  i32.sub
  local.tee $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1648
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.tee $3
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1648
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1073741820
   local.get $3
   local.get $3
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $3
   i32.clz
   i32.sub
   local.tee $4
   i32.const 7
   i32.sub
   local.set $2
   local.get $3
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $3
  i32.const 16
  i32.lt_u
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1648
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.set $5
  local.get $1
  i32.load offset=4
  local.tee $4
  if
   local.get $4
   local.get $5
   i32.store offset=8
  end
  local.get $5
  if
   local.get $5
   local.get $4
   i32.store offset=4
  end
  local.get $1
  local.get $0
  local.get $2
  i32.const 4
  i32.shl
  local.get $3
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.tee $1
  i32.load offset=96
  i32.eq
  if
   local.get $1
   local.get $5
   i32.store offset=96
   local.get $5
   i32.eqz
   if
    local.get $0
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    local.tee $1
    i32.load offset=4
    i32.const -2
    local.get $3
    i32.rotl
    i32.and
    local.set $3
    local.get $1
    local.get $3
    i32.store offset=4
    local.get $3
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const -2
     local.get $2
     i32.rotl
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 1648
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1648
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $4
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $3
   i32.const 4
   i32.add
   local.get $2
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $4
   i32.load
   local.set $2
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $1
   i32.load
   local.tee $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1648
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $6
   i32.const 4
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store
  end
  local.get $4
  local.get $2
  i32.const 2
  i32.or
  i32.store
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1648
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $1
  i32.const 4
  i32.add
  local.get $2
  i32.add
  i32.ne
  if
   i32.const 0
   i32.const 1648
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1073741820
   local.get $2
   local.get $2
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $2
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $5
   local.get $2
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $2
  i32.const 16
  i32.lt_u
  local.get $5
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1648
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $5
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $3
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $3
  i32.store offset=8
  local.get $3
  if
   local.get $3
   local.get $1
   i32.store offset=4
  end
  local.get $0
  local.get $5
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $5
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.get $5
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 1
  local.get $2
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $2
  local.get $1
  i64.extend_i32_u
  i64.lt_u
  if
   i32.const 0
   i32.const 1648
   i32.const 382
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.set $1
  local.get $0
  i32.load offset=1568
  local.tee $3
  if
   local.get $3
   i32.const 4
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 1648
    i32.const 389
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   local.get $1
   i32.const 16
   i32.sub
   local.tee $5
   i32.eq
   if
    local.get $3
    i32.load
    local.set $4
    local.get $5
    local.set $1
   end
  else
   local.get $0
   i32.const 1572
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 1648
    i32.const 402
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  i32.wrap_i64
  i32.const -16
  i32.and
  local.get $1
  i32.sub
  local.tee $3
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $4
  i32.const 2
  i32.and
  local.get $3
  i32.const 8
  i32.sub
  local.tee $3
  i32.const 1
  i32.or
  i32.or
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 4
  i32.add
  local.get $3
  i32.add
  local.tee $3
  i32.const 2
  i32.store
  local.get $0
  local.get $3
  i32.store offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  memory.size
  local.tee $1
  i32.const 0
  i32.le_s
  if (result i32)
   i32.const 1
   local.get $1
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
  i32.const 37552
  i32.const 0
  i32.store
  i32.const 39120
  i32.const 0
  i32.store
  loop $for-loop|0
   local.get $0
   i32.const 23
   i32.lt_u
   if
    local.get $0
    i32.const 2
    i32.shl
    i32.const 37552
    i32.add
    i32.const 0
    i32.store offset=4
    i32.const 0
    local.set $1
    loop $for-loop|1
     local.get $1
     i32.const 16
     i32.lt_u
     if
      local.get $0
      i32.const 4
      i32.shl
      local.get $1
      i32.add
      i32.const 2
      i32.shl
      i32.const 37552
      i32.add
      i32.const 0
      i32.store offset=96
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|1
     end
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  i32.const 37552
  i32.const 39124
  memory.size
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 37552
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      br_table $case0|0 $case1|0 $case2|0 $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $1
    global.get $~lib/rt/itcms/iter
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    loop $while-continue|1
     local.get $0
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     if
      local.get $0
      global.set $~lib/rt/itcms/iter
      local.get $1
      local.get $0
      i32.load offset=4
      local.tee $2
      i32.const 3
      i32.and
      i32.ne
      if
       local.get $0
       local.get $2
       i32.const -4
       i32.and
       local.get $1
       i32.or
       i32.store offset=4
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $0
       i32.const 20
       i32.add
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       return
      end
      local.get $0
      i32.load offset=4
      i32.const -4
      i32.and
      local.set $0
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/toSpace
    global.get $~lib/rt/itcms/iter
    i32.load offset=4
    i32.const -4
    i32.and
    i32.eq
    if
     global.get $~lib/memory/__stack_pointer
     local.set $0
     loop $while-continue|0
      local.get $0
      i32.const 37540
      i32.lt_u
      if
       local.get $0
       i32.load
       call $~lib/rt/itcms/__visit
       local.get $0
       i32.const 4
       i32.add
       local.set $0
       br $while-continue|0
      end
     end
     global.get $~lib/rt/itcms/iter
     i32.load offset=4
     i32.const -4
     i32.and
     local.set $0
     loop $while-continue|2
      local.get $0
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      if
       local.get $1
       local.get $0
       i32.load offset=4
       local.tee $2
       i32.const 3
       i32.and
       i32.ne
       if
        local.get $0
        local.get $2
        i32.const -4
        i32.and
        local.get $1
        i32.or
        i32.store offset=4
        local.get $0
        i32.const 20
        i32.add
        call $~lib/rt/__visit_members
       end
       local.get $0
       i32.load offset=4
       i32.const -4
       i32.and
       local.set $0
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $0
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $0
     global.set $~lib/rt/itcms/toSpace
     local.get $1
     global.set $~lib/rt/itcms/white
     local.get $0
     i32.load offset=4
     i32.const -4
     i32.and
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    return
   end
   global.get $~lib/rt/itcms/iter
   local.tee $0
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $0
    i32.load offset=4
    local.tee $1
    i32.const -4
    i32.and
    global.set $~lib/rt/itcms/iter
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.get $1
    i32.const 3
    i32.and
    i32.ne
    if
     i32.const 0
     i32.const 1376
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 37540
    i32.lt_u
    if
     local.get $0
     i32.const 0
     i32.store offset=4
     local.get $0
     i32.const 0
     i32.store offset=8
    else
     global.get $~lib/rt/itcms/total
     local.get $0
     i32.load
     i32.const -4
     i32.and
     i32.const 4
     i32.add
     i32.sub
     global.set $~lib/rt/itcms/total
     local.get $0
     i32.const 4
     i32.add
     local.tee $0
     i32.const 37540
     i32.ge_u
     if
      global.get $~lib/rt/tlsf/ROOT
      i32.eqz
      if
       call $~lib/rt/tlsf/initialize
      end
      global.get $~lib/rt/tlsf/ROOT
      local.set $1
      local.get $0
      i32.const 4
      i32.sub
      local.set $2
      local.get $0
      i32.const 15
      i32.and
      i32.const 1
      local.get $0
      select
      if (result i32)
       i32.const 1
      else
       local.get $2
       i32.load
       i32.const 1
       i32.and
      end
      if
       i32.const 0
       i32.const 1648
       i32.const 562
       i32.const 3
       call $~lib/builtins/abort
       unreachable
      end
      local.get $2
      local.get $2
      i32.load
      i32.const 1
      i32.or
      i32.store
      local.get $1
      local.get $2
      call $~lib/rt/tlsf/insertBlock
     end
    end
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   i32.store offset=4
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   i32.store offset=8
   i32.const 0
   global.set $~lib/rt/itcms/state
  end
  i32.const 0
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $1
  else
   local.get $1
   i32.const 536870910
   i32.lt_u
   if
    local.get $1
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    i32.add
    i32.const 1
    i32.sub
    local.set $1
   end
   local.get $1
   i32.const 31
   local.get $1
   i32.clz
   i32.sub
   local.tee $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $1
   local.get $2
   i32.const 7
   i32.sub
   local.set $2
  end
  local.get $1
  i32.const 16
  i32.lt_u
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1648
   i32.const 334
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $0
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
  else
   local.get $0
   i32.load
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $0
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 1648
     i32.const 347
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 1312
   i32.const 1376
   i32.const 261
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   block $__inlined_func$~lib/rt/itcms/interrupt$69
    i32.const 2048
    local.set $2
    loop $do-loop|0
     local.get $2
     call $~lib/rt/itcms/step
     i32.sub
     local.set $2
     global.get $~lib/rt/itcms/state
     i32.eqz
     if
      global.get $~lib/rt/itcms/total
      i64.extend_i32_u
      i64.const 200
      i64.mul
      i64.const 100
      i64.div_u
      i32.wrap_i64
      i32.const 1024
      i32.add
      global.set $~lib/rt/itcms/threshold
      br $__inlined_func$~lib/rt/itcms/interrupt$69
     end
     local.get $2
     i32.const 0
     i32.gt_s
     br_if $do-loop|0
    end
    global.get $~lib/rt/itcms/total
    global.get $~lib/rt/itcms/total
    global.get $~lib/rt/itcms/threshold
    i32.sub
    i32.const 1024
    i32.lt_u
    i32.const 10
    i32.shl
    i32.add
    global.set $~lib/rt/itcms/threshold
   end
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.set $4
  local.get $0
  i32.const 16
  i32.add
  local.tee $2
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1312
   i32.const 1648
   i32.const 461
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $2
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $2
   i32.const 19
   i32.add
   i32.const -16
   i32.and
   i32.const 4
   i32.sub
  end
  local.tee $5
  call $~lib/rt/tlsf/searchBlock
  local.tee $2
  i32.eqz
  if
   memory.size
   local.tee $2
   local.get $5
   i32.const 256
   i32.ge_u
   if (result i32)
    local.get $5
    i32.const 536870910
    i32.lt_u
    if (result i32)
     local.get $5
     i32.const 1
     i32.const 27
     local.get $5
     i32.clz
     i32.sub
     i32.shl
     i32.add
     i32.const 1
     i32.sub
    else
     local.get $5
    end
   else
    local.get $5
   end
   i32.const 4
   local.get $4
   i32.load offset=1568
   local.get $2
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   i32.ne
   i32.shl
   i32.add
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $3
   local.get $2
   local.get $3
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $3
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $4
   local.get $2
   i32.const 16
   i32.shl
   memory.size
   i64.extend_i32_s
   i64.const 16
   i64.shl
   call $~lib/rt/tlsf/addMemory
   local.get $4
   local.get $5
   call $~lib/rt/tlsf/searchBlock
   local.tee $2
   i32.eqz
   if
    i32.const 0
    i32.const 1648
    i32.const 499
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $5
  local.get $2
  i32.load
  i32.const -4
  i32.and
  i32.gt_u
  if
   i32.const 0
   i32.const 1648
   i32.const 501
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $2
  call $~lib/rt/tlsf/removeBlock
  local.get $2
  i32.load
  local.set $6
  local.get $5
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1648
   i32.const 361
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.const -4
  i32.and
  local.get $5
  i32.sub
  local.tee $3
  i32.const 16
  i32.ge_u
  if
   local.get $2
   local.get $5
   local.get $6
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $2
   i32.const 4
   i32.add
   local.get $5
   i32.add
   local.tee $5
   local.get $3
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $4
   local.get $5
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $2
   local.get $6
   i32.const -2
   i32.and
   i32.store
   local.get $2
   i32.const 4
   i32.add
   local.get $2
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   local.get $3
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
  local.get $2
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $0
  i32.store offset=16
  global.get $~lib/rt/itcms/fromSpace
  local.tee $1
  i32.load offset=8
  local.set $3
  local.get $2
  local.get $1
  global.get $~lib/rt/itcms/white
  i32.or
  i32.store offset=4
  local.get $2
  local.get $3
  i32.store offset=8
  local.get $3
  local.get $2
  local.get $3
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store offset=4
  local.get $1
  local.get $2
  i32.store offset=8
  global.get $~lib/rt/itcms/total
  local.get $2
  i32.load
  i32.const -4
  i32.and
  i32.const 4
  i32.add
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $2
  i32.const 20
  i32.add
  local.tee $1
  i32.const 0
  local.get $0
  memory.fill
  local.get $1
 )
 (func $~lib/rt/itcms/__link (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  i32.eqz
  if
   return
  end
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 1376
   i32.const 295
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/white
  local.get $1
  i32.const 20
  i32.sub
  local.tee $1
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $0
   i32.load offset=4
   i32.const 3
   i32.and
   local.tee $3
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $0
    local.get $1
    local.get $2
    select
    call $~lib/rt/itcms/Object#makeGray
   else
    global.get $~lib/rt/itcms/state
    i32.const 1
    i32.eq
    local.get $3
    i32.const 3
    i32.eq
    i32.and
    if
     local.get $1
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
 (func $~lib/math/NativeMath.random (result f64)
  (local $0 i64)
  (local $1 i64)
  global.get $~lib/math/random_seeded
  i32.eqz
  if
   call $~lib/builtins/seed
   i64.reinterpret_f64
   local.tee $0
   i64.eqz
   if
    i64.const -7046029254386353131
    local.set $0
   end
   local.get $0
   local.get $0
   i64.const 33
   i64.shr_u
   i64.xor
   i64.const -49064778989728563
   i64.mul
   local.tee $0
   i64.const 33
   i64.shr_u
   local.get $0
   i64.xor
   i64.const -4265267296055464877
   i64.mul
   local.tee $0
   i64.const 33
   i64.shr_u
   local.get $0
   i64.xor
   global.set $~lib/math/random_state0_64
   global.get $~lib/math/random_state0_64
   i64.const -1
   i64.xor
   local.tee $0
   i64.const 33
   i64.shr_u
   local.get $0
   i64.xor
   i64.const -49064778989728563
   i64.mul
   local.tee $0
   i64.const 33
   i64.shr_u
   local.get $0
   i64.xor
   i64.const -4265267296055464877
   i64.mul
   local.tee $0
   i64.const 33
   i64.shr_u
   local.get $0
   i64.xor
   global.set $~lib/math/random_state1_64
   i32.const 1
   global.set $~lib/math/random_seeded
  end
  global.get $~lib/math/random_state0_64
  local.set $1
  global.get $~lib/math/random_state1_64
  local.tee $0
  global.set $~lib/math/random_state0_64
  local.get $0
  local.get $1
  local.get $1
  i64.const 23
  i64.shl
  i64.xor
  local.tee $1
  i64.const 17
  i64.shr_u
  local.get $1
  i64.xor
  i64.xor
  local.get $0
  i64.const 26
  i64.shr_u
  i64.xor
  global.set $~lib/math/random_state1_64
  local.get $0
  i64.const 12
  i64.shr_u
  i64.const 4607182418800017408
  i64.or
  f64.reinterpret_i64
  f64.const -1
  f64.add
 )
 (func $~lib/number/I32#toString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4772
  i32.lt_s
  if
   i32.const 37568
   i32.const 37616
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $__inlined_func$~lib/util/number/itoa32$81
   local.get $0
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 2624
    local.set $2
    br $__inlined_func$~lib/util/number/itoa32$81
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   local.get $0
   i32.sub
   local.get $0
   local.get $0
   i32.const 31
   i32.shr_u
   i32.const 1
   i32.shl
   local.tee $3
   select
   local.tee $0
   i32.const 100000
   i32.lt_u
   if (result i32)
    local.get $0
    i32.const 100
    i32.lt_u
    if (result i32)
     local.get $0
     i32.const 10
     i32.ge_u
     i32.const 1
     i32.add
    else
     local.get $0
     i32.const 10000
     i32.ge_u
     i32.const 3
     i32.add
     local.get $0
     i32.const 1000
     i32.ge_u
     i32.add
    end
   else
    local.get $0
    i32.const 10000000
    i32.lt_u
    if (result i32)
     local.get $0
     i32.const 1000000
     i32.ge_u
     i32.const 6
     i32.add
    else
     local.get $0
     i32.const 1000000000
     i32.ge_u
     i32.const 8
     i32.add
     local.get $0
     i32.const 100000000
     i32.ge_u
     i32.add
    end
   end
   local.tee $1
   i32.const 1
   i32.shl
   local.get $3
   i32.add
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store
   local.get $2
   local.get $3
   i32.add
   local.set $5
   loop $while-continue|0
    local.get $0
    i32.const 10000
    i32.ge_u
    if
     local.get $0
     i32.const 10000
     i32.rem_u
     local.set $4
     local.get $0
     i32.const 10000
     i32.div_u
     local.set $0
     local.get $5
     local.get $1
     i32.const 4
     i32.sub
     local.tee $1
     i32.const 1
     i32.shl
     i32.add
     local.get $4
     i32.const 100
     i32.div_u
     i32.const 2
     i32.shl
     i32.const 2636
     i32.add
     i64.load32_u
     local.get $4
     i32.const 100
     i32.rem_u
     i32.const 2
     i32.shl
     i32.const 2636
     i32.add
     i64.load32_u
     i64.const 32
     i64.shl
     i64.or
     i64.store
     br $while-continue|0
    end
   end
   local.get $0
   i32.const 100
   i32.ge_u
   if
    local.get $5
    local.get $1
    i32.const 2
    i32.sub
    local.tee $1
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    i32.const 100
    i32.rem_u
    i32.const 2
    i32.shl
    i32.const 2636
    i32.add
    i32.load
    i32.store
    local.get $0
    i32.const 100
    i32.div_u
    local.set $0
   end
   local.get $0
   i32.const 10
   i32.ge_u
   if
    local.get $5
    local.get $1
    i32.const 2
    i32.sub
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    i32.const 2
    i32.shl
    i32.const 2636
    i32.add
    i32.load
    i32.store
   else
    local.get $5
    local.get $1
    i32.const 1
    i32.sub
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    i32.const 48
    i32.add
    i32.store16
   end
   local.get $3
   if
    local.get $2
    i32.const 45
    i32.store16
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
  end
  local.get $2
 )
 (func $assembly/index/startAnimation
  call $assembly/index/jsRequestAnimationFrame
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $folding-inner1
   block $folding-inner0
    block $invalid
     block $~lib/staticarray/StaticArray<~lib/string/String>
      block $assembly/index/SuperShip
       block $assembly/index/SuperShot
        block $~lib/array/Array<i32>
         block $assembly/index/Shot
          block $assembly/index/Bullet
           block $assembly/index/Boss
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
                   br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $assembly/index/Game $assembly/index/Ship $assembly/index/Character $folding-inner0 $assembly/index/Boss $folding-inner1 $folding-inner0 $assembly/index/Bullet $folding-inner1 $folding-inner0 $assembly/index/Shot $folding-inner1 $~lib/array/Array<i32> $assembly/index/SuperShot $assembly/index/SuperShip $~lib/staticarray/StaticArray<~lib/string/String> $invalid
                  end
                  return
                 end
                 return
                end
                return
               end
               local.get $0
               i32.load
               local.tee $0
               if
                local.get $0
                call $~lib/rt/itcms/__visit
               end
               return
              end
              local.get $0
              i32.load offset=16
              local.tee $1
              if
               local.get $1
               call $~lib/rt/itcms/__visit
              end
              local.get $0
              i32.load offset=20
              local.tee $1
              if
               local.get $1
               call $~lib/rt/itcms/__visit
              end
              local.get $0
              i32.load offset=24
              local.tee $1
              if
               local.get $1
               call $~lib/rt/itcms/__visit
              end
              local.get $0
              i32.load offset=28
              local.tee $0
              if
               local.get $0
               call $~lib/rt/itcms/__visit
              end
              return
             end
             return
            end
            return
           end
           return
          end
          return
         end
         return
        end
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.sub
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        i32.const 4772
        i32.lt_s
        if
         i32.const 37568
         i32.const 37616
         i32.const 1
         i32.const 1
         call $~lib/builtins/abort
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        i32.const 0
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store
        local.get $0
        i32.load
        call $~lib/rt/itcms/__visit
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.add
        global.set $~lib/memory/__stack_pointer
        return
       end
       return
      end
      return
     end
     local.get $0
     local.get $0
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.add
     local.set $1
     loop $while-continue|0
      local.get $0
      local.get $1
      i32.lt_u
      if
       local.get $0
       i32.load
       local.tee $2
       if
        local.get $2
        call $~lib/rt/itcms/__visit
       end
       local.get $0
       i32.const 4
       i32.add
       local.set $0
       br $while-continue|0
      end
     end
     return
    end
    unreachable
   end
   local.get $0
   call $~lib/array/Array<assembly/index/Boss>#__visit
   return
  end
  local.get $0
  call $~lib/array/Array<assembly/index/Boss>#__visit
 )
 (func $~start
  call $assembly/index/jsDatenow
  global.set $assembly/index/last_frame
  memory.size
  i32.const 16
  i32.shl
  i32.const 37540
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 1428
  i32.const 1424
  i32.store
  i32.const 1432
  i32.const 1424
  i32.store
  i32.const 1424
  global.set $~lib/rt/itcms/pinSpace
  i32.const 1460
  i32.const 1456
  i32.store
  i32.const 1464
  i32.const 1456
  i32.store
  i32.const 1456
  global.set $~lib/rt/itcms/toSpace
  i32.const 1604
  i32.const 1600
  i32.store
  i32.const 1608
  i32.const 1600
  i32.store
  i32.const 1600
  global.set $~lib/rt/itcms/fromSpace
  call $assembly/index/Game#constructor
  global.set $assembly/index/game
 )
 (func $assembly/index/Ship#constructor (param $0 i32) (param $1 f32) (param $2 f32) (param $3 f32) (param $4 f32) (param $5 f32) (param $6 f32) (param $7 i32) (param $8 f32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4772
  i32.lt_s
  if
   i32.const 37568
   i32.const 37616
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  f32.const 0
  f32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  f32.const 0
  f32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  f32.const 0
  f32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  f32.const 0
  f32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  f32.const 0
  f32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  f32.const 0
  f32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  f32.const 0
  f32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $1
  f32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $2
  f32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $3
  f32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $4
  f32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $5
  f32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $6
  f32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $7
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $8
  f32.store offset=28
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/index/BossArray#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 4772
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 7
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4772
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store offset=8
   local.get $0
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.const 9
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   local.get $0
   local.get $1
   i32.store
   local.get $0
   local.get $1
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 32
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 37568
  i32.const 37616
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/index/BulletArray#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 4772
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 10
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4772
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store offset=8
   local.get $0
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.const 12
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   local.get $0
   local.get $1
   i32.store
   local.get $0
   local.get $1
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 32
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 37568
  i32.const 37616
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/index/ShotArray#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 4772
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 13
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4772
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store offset=8
   local.get $0
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.const 15
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   local.get $0
   local.get $1
   i32.store
   local.get $0
   local.get $1
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 32
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 37568
  i32.const 37616
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/index/Boss#constructor (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4772
  i32.lt_s
  if
   i32.const 37568
   i32.const 37616
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.const 8
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  f32.const 0
  f32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  f32.const 0
  f32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  f32.const 0
  f32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  f32.const 0
  f32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  f32.const 0
  f32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  f32.const 0
  f32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  f32.const 0
  f32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  f32.const 180
  f32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  f32.const 60
  f32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  f32.const 1
  f32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  f32.const 0
  f32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  f32.const 225
  f32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  f32.const 225
  f32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 999
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  f32.const 1
  f32.store offset=28
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<assembly/index/Boss>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 4772
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load offset=12
   local.tee $6
   i32.const 1
   i32.add
   local.tee $5
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4772
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $2
   local.get $0
   i32.load offset=8
   local.tee $3
   i32.const 2
   i32.shr_u
   i32.gt_u
   if
    local.get $2
    i32.const 268435455
    i32.gt_u
    if
     i32.const 1712
     i32.const 1760
     i32.const 19
     i32.const 48
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    block $__inlined_func$~lib/rt/itcms/__renew$562
     i32.const 1073741820
     local.get $3
     i32.const 1
     i32.shl
     local.tee $3
     local.get $3
     i32.const 1073741820
     i32.ge_u
     select
     local.tee $3
     i32.const 8
     local.get $2
     local.get $2
     i32.const 8
     i32.le_u
     select
     i32.const 2
     i32.shl
     local.tee $2
     local.get $2
     local.get $3
     i32.lt_u
     select
     local.tee $4
     local.get $0
     i32.load
     local.tee $3
     i32.const 20
     i32.sub
     local.tee $7
     i32.load
     i32.const -4
     i32.and
     i32.const 16
     i32.sub
     i32.le_u
     if
      local.get $7
      local.get $4
      i32.store offset=16
      local.get $3
      local.set $2
      br $__inlined_func$~lib/rt/itcms/__renew$562
     end
     local.get $4
     local.get $7
     i32.load offset=12
     call $~lib/rt/itcms/__new
     local.tee $2
     local.get $3
     local.get $4
     local.get $7
     i32.load offset=16
     local.tee $7
     local.get $4
     local.get $7
     i32.lt_u
     select
     memory.copy
    end
    local.get $2
    local.get $3
    i32.ne
    if
     local.get $0
     local.get $2
     i32.store
     local.get $0
     local.get $2
     i32.store offset=4
     local.get $0
     local.get $2
     i32.const 0
     call $~lib/rt/itcms/__link
    end
    local.get $0
    local.get $4
    i32.store offset=8
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load offset=4
   local.get $6
   i32.const 2
   i32.shl
   i32.add
   local.get $1
   i32.store
   local.get $0
   local.get $1
   i32.const 1
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   local.get $5
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 37568
  i32.const 37616
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/index/Game#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4772
  i32.lt_s
  if
   i32.const 37568
   i32.const 37616
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.const 4
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store8 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=20
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=24
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=28
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=36
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=40
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=44
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=48
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=52
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store8 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  i32.const 0
  f32.const 380
  f32.const 940
  f32.const 1
  f32.const 0
  f32.const 40
  f32.const 50
  i32.const 1
  f32.const 380
  call $assembly/index/Ship#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.store offset=16
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  call $assembly/index/BossArray#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.store offset=20
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  call $assembly/index/BulletArray#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.store offset=24
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  call $assembly/index/ShotArray#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.store offset=28
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  call $assembly/index/jsDatenow
  i32.const 1000
  i32.div_s
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  call $assembly/index/jsDatenow
  i32.store offset=36
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  local.get $0
  i32.load offset=36
  i32.store offset=40
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  local.get $0
  i32.load offset=36
  i32.store offset=44
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=48
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=52
  global.get $~lib/memory/__stack_pointer
  call $assembly/index/Boss#constructor
  local.tee $2
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=20
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $1
  local.get $2
  call $~lib/array/Array<assembly/index/Boss>#push
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<assembly/index/Bullet>#get:length (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4772
  i32.lt_s
  if
   i32.const 37568
   i32.const 37616
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=12
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<assembly/index/Boss>#__get (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4772
  i32.lt_s
  if
   i32.const 37568
   i32.const 37616
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1504
   i32.const 1760
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.store offset=4
  local.get $0
  i32.eqz
  if
   i32.const 1808
   i32.const 1760
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/index/Shot#constructor (param $0 i32) (param $1 f32) (param $2 f32) (param $3 f32) (param $4 f32) (param $5 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4772
  i32.lt_s
  if
   i32.const 37568
   i32.const 37616
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.const 14
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  f32.const 0
  f32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  f32.const 0
  f32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  f32.const 0
  f32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  f32.const 0
  f32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  f32.const 0
  f32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  f32.const 0
  f32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $1
  f32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $2
  f32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  f32.const 0
  f32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  f32.const 10
  f32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $3
  f32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $4
  f32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $5
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/index/overap (param $0 i32) (param $1 i32) (result i32)
  (local $2 f32)
  (local $3 f32)
  (local $4 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4772
  i32.lt_s
  if
   i32.const 37568
   i32.const 37616
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  block $__inlined_func$assembly/index/Character#get:x@override$563
   block $default
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    i32.const 5
    i32.sub
    br_table $__inlined_func$assembly/index/Character#get:x@override$563 $default $default $__inlined_func$assembly/index/Character#get:x@override$563 $default $default $__inlined_func$assembly/index/Character#get:x@override$563 $default $default $__inlined_func$assembly/index/Character#get:x@override$563 $default $default $__inlined_func$assembly/index/Character#get:x@override$563 $__inlined_func$assembly/index/Character#get:x@override$563 $default
   end
   unreachable
  end
  local.get $0
  f32.load
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  block $__inlined_func$assembly/index/Character#get:x@override$564
   block $default0
    local.get $1
    i32.const 8
    i32.sub
    i32.load
    i32.const 5
    i32.sub
    br_table $__inlined_func$assembly/index/Character#get:x@override$564 $default0 $default0 $__inlined_func$assembly/index/Character#get:x@override$564 $default0 $default0 $__inlined_func$assembly/index/Character#get:x@override$564 $default0 $default0 $__inlined_func$assembly/index/Character#get:x@override$564 $default0 $default0 $__inlined_func$assembly/index/Character#get:x@override$564 $__inlined_func$assembly/index/Character#get:x@override$564 $default0
   end
   unreachable
  end
  local.get $2
  local.get $1
  f32.load
  f32.max
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  block $__inlined_func$assembly/index/Character#get:x@override$565
   block $default1
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    i32.const 5
    i32.sub
    br_table $__inlined_func$assembly/index/Character#get:x@override$565 $default1 $default1 $__inlined_func$assembly/index/Character#get:x@override$565 $default1 $default1 $__inlined_func$assembly/index/Character#get:x@override$565 $default1 $default1 $__inlined_func$assembly/index/Character#get:x@override$565 $default1 $default1 $__inlined_func$assembly/index/Character#get:x@override$565 $__inlined_func$assembly/index/Character#get:x@override$565 $default1
   end
   unreachable
  end
  local.get $0
  f32.load
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  block $__inlined_func$assembly/index/Character#get:w@override$566
   block $default2
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    i32.const 5
    i32.sub
    br_table $__inlined_func$assembly/index/Character#get:w@override$566 $default2 $default2 $__inlined_func$assembly/index/Character#get:w@override$566 $default2 $default2 $__inlined_func$assembly/index/Character#get:w@override$566 $default2 $default2 $__inlined_func$assembly/index/Character#get:w@override$566 $default2 $default2 $__inlined_func$assembly/index/Character#get:w@override$566 $__inlined_func$assembly/index/Character#get:w@override$566 $default2
   end
   unreachable
  end
  local.get $3
  local.get $0
  f32.load offset=16
  f32.add
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  block $__inlined_func$assembly/index/Character#get:x@override$567
   block $default3
    local.get $1
    i32.const 8
    i32.sub
    i32.load
    i32.const 5
    i32.sub
    br_table $__inlined_func$assembly/index/Character#get:x@override$567 $default3 $default3 $__inlined_func$assembly/index/Character#get:x@override$567 $default3 $default3 $__inlined_func$assembly/index/Character#get:x@override$567 $default3 $default3 $__inlined_func$assembly/index/Character#get:x@override$567 $default3 $default3 $__inlined_func$assembly/index/Character#get:x@override$567 $__inlined_func$assembly/index/Character#get:x@override$567 $default3
   end
   unreachable
  end
  local.get $1
  f32.load
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  block $__inlined_func$assembly/index/Character#get:w@override$568
   block $default4
    local.get $1
    i32.const 8
    i32.sub
    i32.load
    i32.const 5
    i32.sub
    br_table $__inlined_func$assembly/index/Character#get:w@override$568 $default4 $default4 $__inlined_func$assembly/index/Character#get:w@override$568 $default4 $default4 $__inlined_func$assembly/index/Character#get:w@override$568 $default4 $default4 $__inlined_func$assembly/index/Character#get:w@override$568 $default4 $default4 $__inlined_func$assembly/index/Character#get:w@override$568 $__inlined_func$assembly/index/Character#get:w@override$568 $default4
   end
   unreachable
  end
  local.get $2
  local.get $3
  local.get $4
  local.get $1
  f32.load offset=16
  f32.add
  f32.min
  f32.lt
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   block $__inlined_func$assembly/index/Character#get:y@override$569
    block $default5
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     i32.const 5
     i32.sub
     br_table $__inlined_func$assembly/index/Character#get:y@override$569 $default5 $default5 $__inlined_func$assembly/index/Character#get:y@override$569 $default5 $default5 $__inlined_func$assembly/index/Character#get:y@override$569 $default5 $default5 $__inlined_func$assembly/index/Character#get:y@override$569 $default5 $default5 $__inlined_func$assembly/index/Character#get:y@override$569 $__inlined_func$assembly/index/Character#get:y@override$569 $default5
    end
    unreachable
   end
   local.get $0
   f32.load offset=4
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   block $__inlined_func$assembly/index/Character#get:y@override$570
    block $default6
     local.get $1
     i32.const 8
     i32.sub
     i32.load
     i32.const 5
     i32.sub
     br_table $__inlined_func$assembly/index/Character#get:y@override$570 $default6 $default6 $__inlined_func$assembly/index/Character#get:y@override$570 $default6 $default6 $__inlined_func$assembly/index/Character#get:y@override$570 $default6 $default6 $__inlined_func$assembly/index/Character#get:y@override$570 $default6 $default6 $__inlined_func$assembly/index/Character#get:y@override$570 $__inlined_func$assembly/index/Character#get:y@override$570 $default6
    end
    unreachable
   end
   local.get $2
   local.get $1
   f32.load offset=4
   f32.max
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   block $__inlined_func$assembly/index/Character#get:y@override$571
    block $default7
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     i32.const 5
     i32.sub
     br_table $__inlined_func$assembly/index/Character#get:y@override$571 $default7 $default7 $__inlined_func$assembly/index/Character#get:y@override$571 $default7 $default7 $__inlined_func$assembly/index/Character#get:y@override$571 $default7 $default7 $__inlined_func$assembly/index/Character#get:y@override$571 $default7 $default7 $__inlined_func$assembly/index/Character#get:y@override$571 $__inlined_func$assembly/index/Character#get:y@override$571 $default7
    end
    unreachable
   end
   local.get $0
   f32.load offset=4
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   block $__inlined_func$assembly/index/Character#get:h@override$572
    block $default8
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     i32.const 5
     i32.sub
     br_table $__inlined_func$assembly/index/Character#get:h@override$572 $default8 $default8 $__inlined_func$assembly/index/Character#get:h@override$572 $default8 $default8 $__inlined_func$assembly/index/Character#get:h@override$572 $default8 $default8 $__inlined_func$assembly/index/Character#get:h@override$572 $default8 $default8 $__inlined_func$assembly/index/Character#get:h@override$572 $__inlined_func$assembly/index/Character#get:h@override$572 $default8
    end
    unreachable
   end
   local.get $3
   local.get $0
   f32.load offset=20
   f32.add
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   block $__inlined_func$assembly/index/Character#get:y@override$573
    block $default9
     local.get $1
     i32.const 8
     i32.sub
     i32.load
     i32.const 5
     i32.sub
     br_table $__inlined_func$assembly/index/Character#get:y@override$573 $default9 $default9 $__inlined_func$assembly/index/Character#get:y@override$573 $default9 $default9 $__inlined_func$assembly/index/Character#get:y@override$573 $default9 $default9 $__inlined_func$assembly/index/Character#get:y@override$573 $default9 $default9 $__inlined_func$assembly/index/Character#get:y@override$573 $__inlined_func$assembly/index/Character#get:y@override$573 $default9
    end
    unreachable
   end
   local.get $1
   f32.load offset=4
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   block $__inlined_func$assembly/index/Character#get:h@override$574
    block $default10
     local.get $1
     i32.const 8
     i32.sub
     i32.load
     i32.const 5
     i32.sub
     br_table $__inlined_func$assembly/index/Character#get:h@override$574 $default10 $default10 $__inlined_func$assembly/index/Character#get:h@override$574 $default10 $default10 $__inlined_func$assembly/index/Character#get:h@override$574 $default10 $default10 $__inlined_func$assembly/index/Character#get:h@override$574 $default10 $default10 $__inlined_func$assembly/index/Character#get:h@override$574 $__inlined_func$assembly/index/Character#get:h@override$574 $default10
    end
    unreachable
   end
   local.get $2
   local.get $3
   local.get $4
   local.get $1
   f32.load offset=20
   f32.add
   f32.min
   f32.lt
  else
   i32.const 0
  end
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1
  else
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 0
  end
 )
 (func $assembly/index/Bullet#hit (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4772
  i32.lt_s
  if
   i32.const 37568
   i32.const 37616
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $assembly/index/overap
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=24
   i32.const 1
   i32.sub
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $assembly/index/Game#update (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f32)
  (local $4 i32)
  (local $5 f32)
  (local $6 f32)
  (local $7 f32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 f32)
  (local $14 f32)
  (local $15 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 4772
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 28
   memory.fill
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
   i32.const 1
   i32.eq
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    call $assembly/index/jsDatenow
    i32.const 1000
    i32.div_s
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    local.get $0
    local.get $1
    local.get $0
    i32.load offset=32
    i32.sub
    i32.store offset=40
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    call $assembly/index/jsDatenow
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    local.get $0
    local.get $1
    local.get $0
    i32.load offset=36
    i32.sub
    i32.store offset=44
    call $assembly/index/jsDatenow
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=24
    local.tee $1
    i32.store
    local.get $1
    call $~lib/array/Array<assembly/index/Bullet>#get:length
    i32.const 500
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=20
     local.tee $1
     i32.store offset=4
     local.get $1
     i32.const 0
     call $~lib/array/Array<assembly/index/Boss>#__get
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     f32.load
     f32.const 112.5
     f32.add
     f32.const -14
     f32.add
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=20
     local.tee $1
     i32.store offset=4
     local.get $1
     i32.const 0
     call $~lib/array/Array<assembly/index/Boss>#__get
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     f32.load offset=4
     f32.const 112.5
     f32.add
     f32.const -14
     f32.add
     local.set $5
     call $~lib/math/NativeMath.random
     f64.const -0.5
     f64.add
     f64.const 4
     f64.mul
     f32.demote_f64
     local.set $6
     call $~lib/math/NativeMath.random
     f64.const -0.5
     f64.add
     f64.const 4
     f64.mul
     f32.demote_f64
     local.set $7
     global.get $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 4772
     i32.lt_s
     br_if $folding-inner1
     global.get $~lib/memory/__stack_pointer
     i64.const 0
     i64.store
     global.get $~lib/memory/__stack_pointer
     i32.const 28
     i32.const 11
     call $~lib/rt/itcms/__new
     local.tee $1
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     local.get $1
     f32.const 0
     f32.store
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     local.get $1
     f32.const 0
     f32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     local.get $1
     f32.const 0
     f32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     local.get $1
     f32.const 0
     f32.store offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     local.get $1
     f32.const 0
     f32.store offset=16
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     local.get $1
     f32.const 0
     f32.store offset=20
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     local.get $1
     i32.const 0
     i32.store offset=24
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     local.get $1
     local.get $3
     f32.store
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     local.get $1
     local.get $5
     f32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     local.get $1
     local.get $6
     f32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     local.get $1
     local.get $7
     f32.store offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     local.get $1
     f32.const 28
     f32.store offset=16
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     local.get $1
     f32.const 28
     f32.store offset=20
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     local.get $1
     i32.const 2
     i32.store offset=24
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=24
     local.tee $8
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     local.get $8
     local.get $1
     call $~lib/array/Array<assembly/index/Boss>#push
    end
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=24
     local.tee $1
     i32.store
     local.get $1
     call $~lib/array/Array<assembly/index/Bullet>#get:length
     local.get $2
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=8
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=24
      local.tee $1
      i32.store offset=4
      local.get $1
      local.get $2
      call $~lib/array/Array<assembly/index/Boss>#__get
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      global.get $~lib/memory/__stack_pointer
      i32.const 8
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 4772
      i32.lt_s
      br_if $folding-inner1
      global.get $~lib/memory/__stack_pointer
      i64.const 0
      i64.store
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=4
      local.get $1
      f32.load
      local.set $3
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=4
      local.get $1
      local.get $3
      local.get $1
      f32.load offset=8
      f32.add
      f32.store
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=4
      local.get $1
      f32.load offset=4
      local.set $3
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=4
      local.get $1
      local.get $3
      local.get $1
      f32.load offset=12
      f32.add
      f32.store offset=4
      global.get $~lib/memory/__stack_pointer
      i32.const 8
      i32.add
      global.set $~lib/memory/__stack_pointer
      block $__inlined_func$assembly/index/Bullet#exit$576 (result i32)
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store offset=8
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.load offset=24
       local.tee $1
       i32.store offset=4
       local.get $1
       local.get $2
       call $~lib/array/Array<assembly/index/Boss>#__get
       local.set $1
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.sub
       global.set $~lib/memory/__stack_pointer
       global.get $~lib/memory/__stack_pointer
       i32.const 4772
       i32.lt_s
       br_if $folding-inner1
       global.get $~lib/memory/__stack_pointer
       i32.const 0
       i32.store
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store
       local.get $1
       f32.load
       f32.const 28
       f32.add
       f32.const 800
       f32.gt
       if
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.add
        global.set $~lib/memory/__stack_pointer
        i32.const 1
        br $__inlined_func$assembly/index/Bullet#exit$576
       end
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store
       local.get $1
       f32.load
       f32.const 0
       f32.lt
       if
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.add
        global.set $~lib/memory/__stack_pointer
        i32.const 1
        br $__inlined_func$assembly/index/Bullet#exit$576
       end
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store
       local.get $1
       f32.load offset=4
       f32.const 1e3
       f32.gt
       if
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.add
        global.set $~lib/memory/__stack_pointer
        i32.const 1
        br $__inlined_func$assembly/index/Bullet#exit$576
       end
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store
       local.get $1
       f32.load offset=4
       f32.const 0
       f32.lt
       if
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.add
        global.set $~lib/memory/__stack_pointer
        i32.const 1
        br $__inlined_func$assembly/index/Bullet#exit$576
       end
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       i32.const 0
      end
      if (result i32)
       i32.const 1
      else
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store offset=8
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.load offset=24
       local.tee $1
       i32.store offset=4
       local.get $1
       local.get $2
       call $~lib/array/Array<assembly/index/Boss>#__get
       local.set $1
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store
       local.get $1
       i32.load offset=24
       i32.const 0
       i32.le_s
      end
      if
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store offset=4
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.load offset=24
       local.tee $1
       i32.store
       global.get $~lib/memory/__stack_pointer
       i32.const 8
       i32.sub
       global.set $~lib/memory/__stack_pointer
       global.get $~lib/memory/__stack_pointer
       i32.const 4772
       i32.lt_s
       br_if $folding-inner1
       global.get $~lib/memory/__stack_pointer
       i64.const 0
       i64.store
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store
       global.get $~lib/memory/__stack_pointer
       i32.const 1
       local.get $1
       i32.load offset=12
       local.tee $8
       local.get $2
       i32.const 0
       i32.lt_s
       if (result i32)
        local.get $2
        local.get $8
        i32.add
        local.tee $9
        i32.const 0
        local.get $9
        i32.const 0
        i32.gt_s
        select
       else
        local.get $2
        local.get $8
        local.get $2
        local.get $8
        i32.lt_s
        select
       end
       local.tee $9
       i32.sub
       local.tee $10
       local.get $10
       i32.const 1
       i32.gt_s
       select
       local.tee $10
       i32.const 0
       local.get $10
       i32.const 0
       i32.gt_s
       select
       local.tee $10
       i32.const 12
       call $~lib/rt/__newArray
       local.tee $11
       i32.store offset=4
       global.get $~lib/memory/__stack_pointer
       local.get $11
       i32.store
       local.get $11
       i32.load offset=4
       local.set $11
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store
       local.get $11
       local.get $1
       i32.load offset=4
       local.tee $11
       local.get $9
       i32.const 2
       i32.shl
       i32.add
       local.tee $12
       local.get $10
       i32.const 2
       i32.shl
       memory.copy
       local.get $9
       local.get $10
       i32.add
       local.tee $9
       local.get $8
       i32.ne
       if
        local.get $12
        local.get $11
        local.get $9
        i32.const 2
        i32.shl
        i32.add
        local.get $8
        local.get $9
        i32.sub
        i32.const 2
        i32.shl
        memory.copy
       end
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store
       local.get $1
       local.get $8
       local.get $10
       i32.sub
       i32.store offset=12
       global.get $~lib/memory/__stack_pointer
       i32.const 8
       i32.add
       global.set $~lib/memory/__stack_pointer
      end
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|1
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    i32.load8_u offset=4
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=16
     local.tee $1
     i32.store
     local.get $1
     f32.load
     f32.const 20
     f32.add
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=16
     local.tee $1
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     local.get $3
     local.get $1
     f32.load offset=4
     local.tee $5
     f32.const 5
     f32.const 5
     i32.const 1
     call $assembly/index/Shot#constructor
     local.tee $2
     i32.store offset=16
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     i32.load offset=12
     i32.const 0
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.set $1
      global.get $~lib/memory/__stack_pointer
      i32.const 8
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 4772
      i32.lt_s
      br_if $folding-inner1
      global.get $~lib/memory/__stack_pointer
      i64.const 0
      i64.store
      global.get $~lib/memory/__stack_pointer
      i32.const 28
      i32.const 17
      call $~lib/rt/itcms/__new
      local.tee $2
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $2
      local.get $3
      f32.const -50
      f32.add
      local.get $5
      f32.const 100
      f32.const 40
      i32.const 3
      call $assembly/index/Shot#constructor
      local.tee $2
      i32.store
      global.get $~lib/memory/__stack_pointer
      i32.const 8
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $1
      local.get $2
      i32.store offset=16
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=4
      local.get $0
      local.get $0
      i32.load offset=12
      i32.const 1
      i32.sub
      i32.store offset=12
     end
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=28
     local.tee $1
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=4
     local.get $1
     local.get $2
     call $~lib/array/Array<assembly/index/Boss>#push
    end
    i32.const 0
    local.set $2
    loop $for-loop|2
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=28
     local.tee $1
     i32.store
     local.get $1
     call $~lib/array/Array<assembly/index/Bullet>#get:length
     local.get $2
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=8
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=28
      local.tee $1
      i32.store offset=4
      local.get $1
      local.get $2
      call $~lib/array/Array<assembly/index/Boss>#__get
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      global.get $~lib/memory/__stack_pointer
      i32.const 8
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 4772
      i32.lt_s
      br_if $folding-inner1
      global.get $~lib/memory/__stack_pointer
      i64.const 0
      i64.store
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=4
      local.get $1
      f32.load offset=4
      local.set $3
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=4
      local.get $1
      local.get $3
      local.get $1
      f32.load offset=12
      f32.sub
      f32.store offset=4
      global.get $~lib/memory/__stack_pointer
      i32.const 8
      i32.add
      global.set $~lib/memory/__stack_pointer
      block $__inlined_func$assembly/index/Shot#exit$580 (result i32)
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store offset=8
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.load offset=28
       local.tee $1
       i32.store offset=4
       local.get $1
       local.get $2
       call $~lib/array/Array<assembly/index/Boss>#__get
       local.set $1
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.sub
       global.set $~lib/memory/__stack_pointer
       global.get $~lib/memory/__stack_pointer
       i32.const 4772
       i32.lt_s
       br_if $folding-inner1
       global.get $~lib/memory/__stack_pointer
       i32.const 0
       i32.store
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store
       local.get $1
       f32.load offset=4
       f32.const 0
       f32.lt
       if
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.add
        global.set $~lib/memory/__stack_pointer
        i32.const 1
        br $__inlined_func$assembly/index/Shot#exit$580
       end
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       i32.const 0
      end
      if (result i32)
       i32.const 1
      else
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store offset=8
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.load offset=28
       local.tee $1
       i32.store offset=4
       local.get $1
       local.get $2
       call $~lib/array/Array<assembly/index/Boss>#__get
       local.set $1
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store
       local.get $1
       i32.load offset=24
       i32.const 0
       i32.le_s
      end
      if
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store offset=4
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.load offset=28
       local.tee $1
       i32.store
       global.get $~lib/memory/__stack_pointer
       i32.const 8
       i32.sub
       global.set $~lib/memory/__stack_pointer
       global.get $~lib/memory/__stack_pointer
       i32.const 4772
       i32.lt_s
       br_if $folding-inner1
       global.get $~lib/memory/__stack_pointer
       i64.const 0
       i64.store
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store
       global.get $~lib/memory/__stack_pointer
       i32.const 1
       local.get $1
       i32.load offset=12
       local.tee $8
       local.get $2
       i32.const 0
       i32.lt_s
       if (result i32)
        local.get $2
        local.get $8
        i32.add
        local.tee $9
        i32.const 0
        local.get $9
        i32.const 0
        i32.gt_s
        select
       else
        local.get $2
        local.get $8
        local.get $2
        local.get $8
        i32.lt_s
        select
       end
       local.tee $9
       i32.sub
       local.tee $10
       local.get $10
       i32.const 1
       i32.gt_s
       select
       local.tee $10
       i32.const 0
       local.get $10
       i32.const 0
       i32.gt_s
       select
       local.tee $10
       i32.const 15
       call $~lib/rt/__newArray
       local.tee $11
       i32.store offset=4
       global.get $~lib/memory/__stack_pointer
       local.get $11
       i32.store
       local.get $11
       i32.load offset=4
       local.set $11
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store
       local.get $11
       local.get $1
       i32.load offset=4
       local.tee $11
       local.get $9
       i32.const 2
       i32.shl
       i32.add
       local.tee $12
       local.get $10
       i32.const 2
       i32.shl
       memory.copy
       local.get $9
       local.get $10
       i32.add
       local.tee $9
       local.get $8
       i32.ne
       if
        local.get $12
        local.get $11
        local.get $9
        i32.const 2
        i32.shl
        i32.add
        local.get $8
        local.get $9
        i32.sub
        i32.const 2
        i32.shl
        memory.copy
       end
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store
       local.get $1
       local.get $8
       local.get $10
       i32.sub
       i32.store offset=12
       global.get $~lib/memory/__stack_pointer
       i32.const 8
       i32.add
       global.set $~lib/memory/__stack_pointer
      end
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|2
     end
    end
    i32.const 0
    local.set $2
    loop $for-loop|3
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=24
     local.tee $1
     i32.store
     local.get $1
     call $~lib/array/Array<assembly/index/Bullet>#get:length
     local.get $2
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=20
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=24
      local.tee $1
      i32.store offset=8
      local.get $1
      local.get $2
      call $~lib/array/Array<assembly/index/Boss>#__get
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=8
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=16
      local.tee $8
      i32.store offset=4
      local.get $1
      local.get $8
      call $assembly/index/Bullet#hit
      if
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store
       local.get $0
       i32.const 2
       i32.store
      end
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|3
     end
    end
    i32.const 0
    local.set $2
    loop $for-loop|4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=24
     local.tee $1
     i32.store
     local.get $1
     call $~lib/array/Array<assembly/index/Bullet>#get:length
     local.get $2
     i32.gt_s
     if
      i32.const 0
      local.set $1
      loop $for-loop|5
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store offset=4
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.load offset=28
       local.tee $8
       i32.store
       local.get $8
       call $~lib/array/Array<assembly/index/Bullet>#get:length
       local.get $1
       i32.gt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=20
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.load offset=24
        local.tee $8
        i32.store offset=8
        local.get $8
        local.get $2
        call $~lib/array/Array<assembly/index/Boss>#__get
        local.set $8
        global.get $~lib/memory/__stack_pointer
        local.get $8
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=20
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.load offset=28
        local.tee $9
        i32.store offset=8
        local.get $9
        local.get $1
        call $~lib/array/Array<assembly/index/Boss>#__get
        local.set $9
        global.get $~lib/memory/__stack_pointer
        local.get $9
        i32.store offset=4
        local.get $8
        local.get $9
        call $assembly/index/Bullet#hit
        if
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.store offset=8
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.load offset=28
         local.tee $8
         i32.store offset=4
         local.get $8
         local.get $1
         call $~lib/array/Array<assembly/index/Boss>#__get
         local.set $8
         global.get $~lib/memory/__stack_pointer
         local.get $8
         i32.store
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.store offset=20
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.load offset=28
         local.tee $9
         i32.store offset=8
         local.get $9
         local.get $1
         call $~lib/array/Array<assembly/index/Boss>#__get
         local.set $9
         global.get $~lib/memory/__stack_pointer
         local.get $9
         i32.store offset=4
         local.get $8
         local.get $9
         i32.load offset=24
         i32.const 1
         i32.sub
         i32.store offset=24
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.store offset=8
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.load offset=24
         local.tee $8
         i32.store offset=4
         local.get $8
         local.get $2
         call $~lib/array/Array<assembly/index/Boss>#__get
         local.set $8
         global.get $~lib/memory/__stack_pointer
         local.get $8
         i32.store
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.store offset=20
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.load offset=24
         local.tee $9
         i32.store offset=8
         local.get $9
         local.get $2
         call $~lib/array/Array<assembly/index/Boss>#__get
         local.set $9
         global.get $~lib/memory/__stack_pointer
         local.get $9
         i32.store offset=4
         local.get $8
         local.get $9
         i32.load offset=24
         i32.const 1
         i32.sub
         i32.store offset=24
        end
        local.get $1
        i32.const 1
        i32.add
        local.set $1
        br $for-loop|5
       end
      end
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|4
     end
    end
    i32.const 0
    local.set $2
    loop $for-loop|6
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=20
     local.tee $1
     i32.store
     local.get $1
     call $~lib/array/Array<assembly/index/Bullet>#get:length
     local.get $2
     i32.gt_s
     if
      i32.const 0
      local.set $1
      loop $for-loop|7
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store offset=4
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.load offset=28
       local.tee $8
       i32.store
       local.get $8
       call $~lib/array/Array<assembly/index/Bullet>#get:length
       local.get $1
       i32.gt_s
       if
        block $__inlined_func$assembly/index/Boss#hit$582 (result i32)
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.store offset=20
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.load offset=20
         local.tee $8
         i32.store offset=8
         local.get $8
         local.get $2
         call $~lib/array/Array<assembly/index/Boss>#__get
         local.set $8
         global.get $~lib/memory/__stack_pointer
         local.get $8
         i32.store
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.store offset=20
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.load offset=28
         local.tee $9
         i32.store offset=8
         local.get $9
         local.get $1
         call $~lib/array/Array<assembly/index/Boss>#__get
         local.set $9
         global.get $~lib/memory/__stack_pointer
         local.get $9
         i32.store offset=4
         global.get $~lib/memory/__stack_pointer
         i32.const 8
         i32.sub
         global.set $~lib/memory/__stack_pointer
         global.get $~lib/memory/__stack_pointer
         i32.const 4772
         i32.lt_s
         br_if $folding-inner1
         global.get $~lib/memory/__stack_pointer
         i64.const 0
         i64.store
         global.get $~lib/memory/__stack_pointer
         local.get $8
         i32.store
         global.get $~lib/memory/__stack_pointer
         local.get $9
         i32.store offset=4
         local.get $8
         local.get $9
         call $assembly/index/overap
         if
          global.get $~lib/memory/__stack_pointer
          i32.const 8
          i32.add
          global.set $~lib/memory/__stack_pointer
          i32.const 1
          br $__inlined_func$assembly/index/Boss#hit$582
         end
         global.get $~lib/memory/__stack_pointer
         i32.const 8
         i32.add
         global.set $~lib/memory/__stack_pointer
         i32.const 0
        end
        if
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.store offset=8
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.load offset=28
         local.tee $8
         i32.store offset=4
         local.get $8
         local.get $1
         call $~lib/array/Array<assembly/index/Boss>#__get
         local.set $8
         global.get $~lib/memory/__stack_pointer
         local.get $8
         i32.store
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.store offset=20
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.load offset=28
         local.tee $9
         i32.store offset=8
         local.get $9
         local.get $1
         call $~lib/array/Array<assembly/index/Boss>#__get
         local.set $9
         global.get $~lib/memory/__stack_pointer
         local.get $9
         i32.store offset=4
         local.get $8
         local.get $9
         i32.load offset=24
         i32.const 1
         i32.sub
         i32.store offset=24
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.store offset=8
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.load offset=20
         local.tee $8
         i32.store offset=4
         local.get $8
         local.get $2
         call $~lib/array/Array<assembly/index/Boss>#__get
         local.set $8
         global.get $~lib/memory/__stack_pointer
         local.get $8
         i32.store
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.store offset=20
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.load offset=20
         local.tee $9
         i32.store offset=8
         local.get $9
         local.get $2
         call $~lib/array/Array<assembly/index/Boss>#__get
         local.set $9
         global.get $~lib/memory/__stack_pointer
         local.get $9
         i32.store offset=4
         local.get $8
         local.get $9
         i32.load offset=24
         i32.const 1
         i32.sub
         i32.store offset=24
        end
        local.get $1
        i32.const 1
        i32.add
        local.set $1
        br $for-loop|7
       end
      end
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|6
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=16
    local.tee $1
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 4772
    i32.lt_s
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    i64.const 0
    i64.store
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    local.get $1
    f32.load offset=28
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    local.get $3
    local.get $1
    f32.load
    f32.lt
    if
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     local.get $1
     f32.load
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     local.get $1
     local.get $3
     local.get $1
     f32.load offset=8
     f32.sub
     f32.store
    else
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     f32.load offset=28
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $3
     local.get $1
     f32.load
     f32.const 40
     f32.add
     f32.gt
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=4
      local.get $1
      f32.load
      local.set $3
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=4
      local.get $1
      local.get $3
      local.get $1
      f32.load offset=8
      f32.add
      f32.store
     end
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=20
    local.tee $1
    i32.store offset=4
    local.get $1
    i32.const 0
    call $~lib/array/Array<assembly/index/Boss>#__get
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 4772
    i32.lt_s
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    i64.const 0
    i64.store
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    local.get $1
    f32.load
    f32.const 0
    f32.lt
    if (result i32)
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     f32.load offset=28
     f32.const -1
     f32.eq
    else
     i32.const 0
    end
    if
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     f32.const 1
     f32.store offset=28
    end
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    local.get $1
    f32.load
    f32.const 575
    f32.gt
    if (result i32)
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     f32.load offset=28
     f32.const 1
     f32.eq
    else
     i32.const 0
    end
    if
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     f32.const -1
     f32.store offset=28
    end
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    local.get $1
    f32.load
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    local.get $1
    f32.load offset=28
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    local.get $1
    local.get $3
    local.get $5
    local.get $1
    f32.load offset=8
    f32.mul
    f32.add
    f32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=20
    local.tee $1
    i32.store offset=4
    local.get $1
    i32.const 0
    call $~lib/array/Array<assembly/index/Boss>#__get
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    local.get $1
    i32.load offset=24
    i32.const 0
    i32.le_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=20
     local.tee $1
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 4772
     i32.lt_s
     br_if $folding-inner1
     global.get $~lib/memory/__stack_pointer
     i64.const 0
     i64.store
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     i32.load offset=12
     local.tee $2
     i32.const 0
     local.get $2
     i32.const 0
     i32.le_s
     select
     local.set $8
     global.get $~lib/memory/__stack_pointer
     i32.const 1
     local.get $2
     local.get $8
     i32.sub
     local.tee $9
     local.get $9
     i32.const 1
     i32.gt_s
     select
     local.tee $9
     i32.const 0
     local.get $9
     i32.const 0
     i32.gt_s
     select
     local.tee $9
     i32.const 9
     call $~lib/rt/__newArray
     local.tee $10
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store
     local.get $10
     i32.load offset=4
     local.set $10
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $10
     local.get $1
     i32.load offset=4
     local.tee $10
     local.get $8
     i32.const 2
     i32.shl
     i32.add
     local.tee $11
     local.get $9
     i32.const 2
     i32.shl
     memory.copy
     local.get $8
     local.get $9
     i32.add
     local.tee $8
     local.get $2
     i32.ne
     if
      local.get $11
      local.get $10
      local.get $8
      i32.const 2
      i32.shl
      i32.add
      local.get $2
      local.get $8
      i32.sub
      i32.const 2
      i32.shl
      memory.copy
     end
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     local.get $2
     local.get $9
     i32.sub
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=20
     local.tee $1
     i32.store
     local.get $1
     call $~lib/array/Array<assembly/index/Bullet>#get:length
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      i32.const 3
      i32.store
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    i32.load8_u offset=4
    if (result i32)
     i32.const 1
    else
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     i32.load offset=12
    end
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     local.get $0
     local.get $0
     i32.load offset=8
     i32.const 1
     i32.add
     i32.store offset=8
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    i32.load offset=8
    i32.const 200
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     i32.const 200
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=16
     local.tee $1
     i32.store offset=24
     local.get $1
     if (result i32)
      local.get $1
      i32.const 8
      i32.sub
      i32.load
      i32.const 18
      i32.eq
     else
      i32.const 0
     end
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=20
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=16
      local.tee $1
      i32.store offset=8
      local.get $1
      f32.load
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=20
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=16
      local.tee $1
      i32.store offset=8
      local.get $1
      f32.load offset=4
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=20
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=16
      local.tee $1
      i32.store offset=8
      local.get $1
      f32.load offset=8
      local.set $7
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=20
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=16
      local.tee $1
      i32.store offset=8
      local.get $1
      f32.load offset=12
      local.set $13
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=20
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=16
      local.tee $1
      i32.store offset=8
      local.get $1
      f32.load offset=16
      local.set $14
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=20
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=16
      local.tee $1
      i32.store offset=8
      local.get $1
      f32.load offset=20
      local.set $3
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=20
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=16
      local.tee $1
      i32.store offset=8
      local.get $1
      i32.load offset=24
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=20
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=16
      local.tee $2
      i32.store offset=8
      local.get $2
      f32.load offset=28
      local.set $15
      global.get $~lib/memory/__stack_pointer
      i32.const 8
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 4772
      i32.lt_s
      br_if $folding-inner1
      global.get $~lib/memory/__stack_pointer
      i64.const 0
      i64.store
      global.get $~lib/memory/__stack_pointer
      i32.const 32
      i32.const 18
      call $~lib/rt/itcms/__new
      local.tee $2
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $2
      local.get $5
      local.get $6
      local.get $7
      local.get $13
      local.get $14
      local.get $3
      local.get $1
      local.get $15
      call $assembly/index/Ship#constructor
      local.tee $1
      i32.store
      global.get $~lib/memory/__stack_pointer
      i32.const 8
      i32.add
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=4
      local.get $0
      local.get $1
      i32.store offset=16
      local.get $0
      local.get $1
      i32.const 0
      call $~lib/rt/itcms/__link
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    i32.load offset=12
    i32.const 1
    i32.eq
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=20
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=16
     local.tee $1
     i32.store offset=8
     local.get $1
     f32.load
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=20
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=16
     local.tee $1
     i32.store offset=8
     local.get $1
     f32.load offset=4
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=20
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=16
     local.tee $1
     i32.store offset=8
     local.get $1
     f32.load offset=8
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=20
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=16
     local.tee $1
     i32.store offset=8
     local.get $1
     f32.load offset=12
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=20
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=16
     local.tee $1
     i32.store offset=8
     local.get $1
     f32.load offset=16
     local.set $13
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=20
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=16
     local.tee $1
     i32.store offset=8
     local.get $1
     f32.load offset=20
     local.set $14
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=20
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=16
     local.tee $1
     i32.store offset=8
     local.get $1
     i32.load offset=24
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=20
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=16
     local.tee $2
     i32.store offset=8
     i32.const 0
     local.get $3
     local.get $5
     local.get $6
     local.get $7
     local.get $13
     local.get $14
     local.get $1
     local.get $2
     f32.load offset=28
     call $assembly/index/Ship#constructor
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     local.get $0
     local.get $1
     i32.store offset=16
     local.get $0
     local.get $1
     i32.const 0
     call $~lib/rt/itcms/__link
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    i32.load8_u offset=4
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     i32.const 0
     i32.store offset=8
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    call $assembly/index/jsDatenow
    local.get $4
    i32.sub
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    local.get $0
    local.get $1
    local.get $0
    i32.load offset=48
    local.tee $0
    local.get $0
    local.get $1
    i32.lt_s
    select
    i32.store offset=48
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 37568
  i32.const 37616
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/index/draw_boss (param $0 f32) (param $1 f32)
  (local $2 f32)
  (local $3 f32)
  (local $4 f32)
  (local $5 f32)
  (local $6 f32)
  (local $7 f32)
  (local $8 f32)
  (local $9 f32)
  (local $10 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4772
  i32.lt_s
  if
   i32.const 37568
   i32.const 37616
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  call $assembly/index/jsBeginPath
  global.get $~lib/memory/__stack_pointer
  i32.const 1184
  i32.store
  i32.const 1184
  call $assembly/index/jsSetFillStyle
  local.get $0
  f32.const 55
  f32.add
  local.tee $5
  local.get $1
  f32.const 0
  f32.add
  local.tee $6
  call $assembly/index/jsMoveTo
  local.get $0
  f32.const 165
  f32.add
  local.tee $7
  local.get $6
  call $assembly/index/jsLineTo
  local.get $0
  f32.const 225
  f32.add
  local.tee $8
  local.get $1
  f32.const 60
  f32.add
  local.tee $2
  call $assembly/index/jsLineTo
  local.get $8
  local.get $1
  f32.const 160
  f32.add
  local.tee $3
  call $assembly/index/jsLineTo
  local.get $0
  f32.const 160
  f32.add
  local.tee $9
  local.get $1
  f32.const 225
  f32.add
  local.tee $4
  call $assembly/index/jsLineTo
  local.get $5
  local.get $4
  call $assembly/index/jsLineTo
  local.get $0
  f32.const 0
  f32.add
  local.tee $10
  local.get $3
  call $assembly/index/jsLineTo
  local.get $10
  local.get $2
  call $assembly/index/jsLineTo
  call $assembly/index/jsClosePath
  call $assembly/index/jsFill
  call $assembly/index/jsBeginPath
  global.get $~lib/memory/__stack_pointer
  i32.const 1184
  i32.store
  i32.const 1184
  call $assembly/index/jsSetFillStyle
  local.get $5
  local.get $6
  call $assembly/index/jsMoveTo
  local.get $7
  local.get $6
  call $assembly/index/jsLineTo
  local.get $8
  local.get $2
  call $assembly/index/jsLineTo
  local.get $8
  local.get $3
  call $assembly/index/jsLineTo
  local.get $9
  local.get $4
  call $assembly/index/jsLineTo
  local.get $5
  local.get $4
  call $assembly/index/jsLineTo
  local.get $10
  local.get $3
  call $assembly/index/jsLineTo
  local.get $10
  local.get $2
  call $assembly/index/jsLineTo
  call $assembly/index/jsClosePath
  call $assembly/index/jsFill
  call $assembly/index/jsBeginPath
  global.get $~lib/memory/__stack_pointer
  i32.const 1184
  i32.store
  i32.const 1184
  call $assembly/index/jsSetFillStyle
  local.get $5
  local.get $1
  f32.const 30
  f32.add
  local.tee $4
  call $assembly/index/jsMoveTo
  local.get $7
  local.get $4
  call $assembly/index/jsLineTo
  local.get $0
  f32.const 195
  f32.add
  local.tee $4
  local.get $2
  call $assembly/index/jsLineTo
  local.get $4
  local.get $3
  call $assembly/index/jsLineTo
  local.get $9
  local.get $1
  f32.const 195
  f32.add
  local.tee $4
  call $assembly/index/jsLineTo
  local.get $5
  local.get $4
  call $assembly/index/jsLineTo
  local.get $0
  f32.const 26
  f32.add
  local.tee $4
  local.get $3
  call $assembly/index/jsLineTo
  local.get $4
  local.get $2
  call $assembly/index/jsLineTo
  call $assembly/index/jsClosePath
  call $assembly/index/jsStroke
  call $assembly/index/jsBeginPath
  global.get $~lib/memory/__stack_pointer
  i32.const 1056
  i32.store
  i32.const 1056
  call $assembly/index/jsSetStrokeStyle
  f32.const 2
  call $assembly/index/jsLineWidth
  local.get $0
  f32.const 85
  f32.add
  local.tee $2
  local.get $1
  f32.const 85
  f32.add
  local.tee $3
  call $assembly/index/jsMoveTo
  local.get $0
  f32.const 140
  f32.add
  local.tee $4
  local.get $3
  call $assembly/index/jsLineTo
  local.get $4
  local.get $1
  f32.const 140
  f32.add
  local.tee $5
  call $assembly/index/jsLineTo
  local.get $2
  local.get $5
  call $assembly/index/jsLineTo
  call $assembly/index/jsClosePath
  call $assembly/index/jsStroke
  call $assembly/index/jsBeginPath
  global.get $~lib/memory/__stack_pointer
  i32.const 1056
  i32.store
  i32.const 1056
  call $assembly/index/jsSetFillStyle
  local.get $0
  f32.const 112
  f32.add
  local.tee $2
  local.get $1
  f32.const 112
  f32.add
  local.tee $6
  f32.const 25
  f32.const 0
  f32.const 6.2831854820251465
  call $assembly/index/jsArc
  call $assembly/index/jsClosePath
  call $assembly/index/jsFill
  call $assembly/index/jsBeginPath
  global.get $~lib/memory/__stack_pointer
  i32.const 1120
  i32.store
  i32.const 1120
  call $assembly/index/jsSetFillStyle
  local.get $2
  local.get $6
  f32.const 20
  f32.const 0
  f32.const 6.2831854820251465
  call $assembly/index/jsArc
  call $assembly/index/jsClosePath
  call $assembly/index/jsFill
  call $assembly/index/jsBeginPath
  global.get $~lib/memory/__stack_pointer
  i32.const 1056
  i32.store
  i32.const 1056
  call $assembly/index/jsSetFillStyle
  f32.const 2
  call $assembly/index/jsLineWidth
  local.get $0
  f32.const 70
  f32.add
  local.get $1
  f32.const 40
  f32.add
  local.tee $2
  call $assembly/index/jsMoveTo
  local.get $0
  f32.const 152
  f32.add
  local.tee $6
  local.get $2
  call $assembly/index/jsLineTo
  local.get $4
  local.get $1
  f32.const 77
  f32.add
  local.tee $2
  call $assembly/index/jsLineTo
  local.get $0
  f32.const 80
  f32.add
  local.tee $7
  local.get $2
  call $assembly/index/jsLineTo
  call $assembly/index/jsClosePath
  call $assembly/index/jsFill
  call $assembly/index/jsBeginPath
  global.get $~lib/memory/__stack_pointer
  i32.const 1056
  i32.store
  i32.const 1056
  call $assembly/index/jsSetFillStyle
  f32.const 2
  call $assembly/index/jsLineWidth
  local.get $0
  f32.const 84
  f32.add
  local.get $1
  f32.const 145
  f32.add
  local.tee $2
  call $assembly/index/jsMoveTo
  local.get $4
  local.get $2
  call $assembly/index/jsLineTo
  local.get $6
  local.get $1
  f32.const 180
  f32.add
  local.tee $2
  call $assembly/index/jsLineTo
  local.get $0
  f32.const 72
  f32.add
  local.get $2
  call $assembly/index/jsLineTo
  call $assembly/index/jsClosePath
  call $assembly/index/jsFill
  call $assembly/index/jsBeginPath
  global.get $~lib/memory/__stack_pointer
  i32.const 1056
  i32.store
  i32.const 1056
  call $assembly/index/jsSetFillStyle
  f32.const 2
  call $assembly/index/jsLineWidth
  local.get $0
  f32.const 147
  f32.add
  local.tee $2
  local.get $3
  call $assembly/index/jsMoveTo
  local.get $0
  f32.const 183
  f32.add
  local.tee $4
  local.get $1
  f32.const 70
  f32.add
  local.tee $6
  call $assembly/index/jsLineTo
  local.get $4
  local.get $1
  f32.const 155
  f32.add
  local.tee $1
  call $assembly/index/jsLineTo
  local.get $2
  local.get $5
  call $assembly/index/jsLineTo
  call $assembly/index/jsClosePath
  call $assembly/index/jsFill
  call $assembly/index/jsBeginPath
  global.get $~lib/memory/__stack_pointer
  i32.const 1056
  i32.store
  i32.const 1056
  call $assembly/index/jsSetFillStyle
  f32.const 2
  call $assembly/index/jsLineWidth
  local.get $7
  local.get $3
  call $assembly/index/jsMoveTo
  local.get $7
  local.get $5
  call $assembly/index/jsLineTo
  local.get $0
  f32.const 40
  f32.add
  local.tee $0
  local.get $1
  call $assembly/index/jsLineTo
  local.get $0
  local.get $6
  call $assembly/index/jsLineTo
  call $assembly/index/jsClosePath
  call $assembly/index/jsFill
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/draw_ship (param $0 f32) (param $1 f32)
  (local $2 f32)
  (local $3 f32)
  (local $4 f32)
  (local $5 f32)
  (local $6 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4772
  i32.lt_s
  if
   i32.const 37568
   i32.const 37616
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  call $assembly/index/jsBeginPath
  global.get $~lib/memory/__stack_pointer
  i32.const 1056
  i32.store
  i32.const 1056
  call $assembly/index/jsSetFillStyle
  local.get $0
  f32.const 17
  f32.add
  local.tee $2
  local.get $1
  f32.const 0
  f32.add
  local.tee $3
  call $assembly/index/jsMoveTo
  local.get $0
  f32.const 25
  f32.add
  local.tee $4
  local.get $3
  call $assembly/index/jsLineTo
  local.get $4
  local.get $1
  f32.const 17
  f32.add
  local.tee $5
  call $assembly/index/jsLineTo
  local.get $0
  f32.const 30
  f32.add
  local.tee $3
  local.get $5
  call $assembly/index/jsLineTo
  local.get $3
  local.get $1
  f32.const 26
  f32.add
  local.tee $3
  call $assembly/index/jsLineTo
  local.get $0
  f32.const 42
  f32.add
  local.get $1
  f32.const 47
  f32.add
  local.tee $4
  call $assembly/index/jsLineTo
  local.get $0
  f32.const 0
  f32.add
  local.get $4
  call $assembly/index/jsLineTo
  local.get $0
  f32.const 12
  f32.add
  local.tee $6
  local.get $3
  call $assembly/index/jsLineTo
  local.get $6
  local.get $5
  call $assembly/index/jsLineTo
  local.get $2
  local.get $5
  call $assembly/index/jsLineTo
  call $assembly/index/jsClosePath
  call $assembly/index/jsFill
  call $assembly/index/jsBeginPath
  global.get $~lib/memory/__stack_pointer
  i32.const 1120
  i32.store
  i32.const 1120
  call $assembly/index/jsSetFillStyle
  local.get $2
  local.get $1
  f32.const 27
  f32.add
  local.tee $3
  call $assembly/index/jsMoveTo
  local.get $0
  f32.const 24
  f32.add
  local.tee $5
  local.get $3
  call $assembly/index/jsLineTo
  local.get $5
  local.get $1
  f32.const 45
  f32.add
  local.tee $3
  call $assembly/index/jsLineTo
  local.get $2
  local.get $3
  call $assembly/index/jsLineTo
  call $assembly/index/jsClosePath
  call $assembly/index/jsFill
  call $assembly/index/jsBeginPath
  global.get $~lib/memory/__stack_pointer
  i32.const 1120
  i32.store
  i32.const 1120
  call $assembly/index/jsSetFillStyle
  local.get $0
  f32.const 11
  f32.add
  local.get $4
  call $assembly/index/jsMoveTo
  local.get $2
  local.get $4
  call $assembly/index/jsLineTo
  local.get $0
  f32.const 14
  f32.add
  local.get $1
  f32.const 56
  f32.add
  local.tee $1
  call $assembly/index/jsLineTo
  call $assembly/index/jsClosePath
  call $assembly/index/jsFill
  call $assembly/index/jsBeginPath
  global.get $~lib/memory/__stack_pointer
  i32.const 1120
  i32.store
  i32.const 1120
  call $assembly/index/jsSetFillStyle
  local.get $0
  f32.const 26
  f32.add
  local.get $4
  call $assembly/index/jsMoveTo
  local.get $0
  f32.const 32
  f32.add
  local.get $4
  call $assembly/index/jsLineTo
  local.get $0
  f32.const 29
  f32.add
  local.get $1
  call $assembly/index/jsLineTo
  call $assembly/index/jsClosePath
  call $assembly/index/jsFill
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/string/String.__concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 4772
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4772
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   local.tee $2
   i32.store
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const -2
   i32.and
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   block $__inlined_func$~lib/string/String#concat$606
    local.get $1
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const -2
    i32.and
    local.tee $4
    local.get $3
    i32.add
    local.tee $0
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 4240
     local.set $0
     br $__inlined_func$~lib/string/String#concat$606
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store offset=4
    local.get $0
    local.get $2
    local.get $3
    memory.copy
    local.get $0
    local.get $3
    i32.add
    local.get $1
    local.get $4
    memory.copy
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 37568
  i32.const 37616
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/string/String#slice@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 4772
   i32.lt_s
   br_if $folding-inner0
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
    i32.const 2147483647
    local.set $2
   end
   block $__inlined_func$~lib/string/String#slice$607 (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 4772
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i64.const 0
    i64.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $2
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.tee $3
    local.get $2
    local.get $3
    i32.lt_s
    select
    local.get $1
    i32.const 0
    i32.lt_s
    if (result i32)
     local.get $1
     local.get $3
     i32.add
     local.tee $1
     i32.const 0
     local.get $1
     i32.const 0
     i32.gt_s
     select
    else
     local.get $1
     local.get $3
     local.get $1
     local.get $3
     i32.lt_s
     select
    end
    local.tee $1
    i32.sub
    local.tee $2
    i32.const 0
    i32.le_s
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 4240
     br $__inlined_func$~lib/string/String#slice$607
    end
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.const 1
    i32.shl
    local.tee $2
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $3
    i32.store offset=4
    local.get $3
    local.get $0
    local.get $1
    i32.const 1
    i32.shl
    i32.add
    local.get $2
    memory.copy
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $3
   end
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 37568
  i32.const 37616
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/index/Game#getpassedtime (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4772
  i32.lt_s
  if
   i32.const 37568
   i32.const 37616
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 36
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=40
  call $~lib/number/I32#toString
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=44
  call $~lib/number/I32#toString
  local.tee $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4208
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=16
  i32.const 4208
  local.get $1
  call $~lib/string/String.__concat
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  i32.const 1
  global.set $~argumentsLength
  local.get $2
  local.get $1
  i32.const -2
  call $~lib/string/String#slice@varargs
  local.tee $1
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 2624
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  i32.const 2624
  local.get $0
  call $~lib/string/String.__concat
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  i32.const 1
  global.set $~argumentsLength
  local.get $2
  local.get $0
  i32.const -1
  call $~lib/string/String#slice@varargs
  local.tee $0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 4272
  i32.store offset=28
  local.get $1
  i32.const 4272
  call $~lib/string/String.__concat
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  local.get $2
  local.get $1
  local.get $0
  call $~lib/string/String.__concat
  local.tee $0
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/util/string/joinStringArray (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4772
  i32.lt_s
  if
   i32.const 37568
   i32.const 37616
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $0
  i32.const 1
  i32.sub
  local.tee $3
  i32.const 0
  i32.lt_s
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 4240
   return
  end
  local.get $3
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4528
   i32.load
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   i32.const 4240
   local.get $0
   select
   return
  end
  loop $for-loop|0
   local.get $0
   local.get $2
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.const 2
    i32.shl
    i32.const 4528
    i32.add
    i32.load
    local.tee $4
    i32.store offset=4
    local.get $4
    if
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=8
     local.get $1
     local.get $4
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const 1
     i32.shr_u
     i32.add
     local.set $1
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4240
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  local.get $3
  i32.const 4236
  i32.load
  i32.const 1
  i32.shr_u
  local.tee $0
  i32.mul
  i32.add
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $4
  i32.store offset=12
  i32.const 0
  local.set $1
  loop $for-loop|1
   local.get $1
   local.get $3
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.const 2
    i32.shl
    i32.const 4528
    i32.add
    i32.load
    local.tee $5
    i32.store offset=4
    local.get $5
    if
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=8
     local.get $4
     local.get $2
     i32.const 1
     i32.shl
     i32.add
     local.get $5
     local.get $5
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const 1
     i32.shr_u
     local.tee $5
     i32.const 1
     i32.shl
     memory.copy
     local.get $2
     local.get $5
     i32.add
     local.set $2
    end
    local.get $0
    if
     local.get $4
     local.get $2
     i32.const 1
     i32.shl
     i32.add
     i32.const 4240
     local.get $0
     i32.const 1
     i32.shl
     memory.copy
     local.get $0
     local.get $2
     i32.add
     local.set $2
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.const 2
  i32.shl
  i32.const 4528
  i32.add
  i32.load
  local.tee $0
  i32.store offset=4
  local.get $0
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $4
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $0
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const -2
   i32.and
   memory.copy
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $assembly/index/Game#draw (param $0 i32)
  (local $1 f32)
  (local $2 i32)
  (local $3 f32)
  (local $4 f32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 f32)
  (local $11 f32)
  (local $12 f32)
  (local $13 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner2
   global.get $~lib/memory/__stack_pointer
   i32.const 4772
   i32.lt_s
   br_if $folding-inner2
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 32
   memory.fill
   f32.const 0
   f32.const 0
   f32.const 800
   f32.const 1e3
   call $assembly/index/jsClearRect
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   block $break|0
    block $case3|0
     block $case2|0
      block $case1|0
       block $case0|0
        local.get $0
        i32.load
        br_table $case0|0 $case3|0 $case1|0 $case2|0 $break|0
       end
       f32.const 130
       f32.const 20
       call $assembly/index/draw_boss
       global.get $~lib/memory/__stack_pointer
       i32.const 1936
       i32.store
       i32.const 1936
       call $assembly/index/jsSetFont
       global.get $~lib/memory/__stack_pointer
       i32.const 1984
       i32.store
       i32.const 1984
       f32.const 220
       f32.const 360
       call $assembly/index/jsFillText
       global.get $~lib/memory/__stack_pointer
       i32.const 1120
       i32.store
       i32.const 1120
       call $assembly/index/jsSetFillStyle
       global.get $~lib/memory/__stack_pointer
       i32.const 2032
       i32.store
       i32.const 2032
       call $assembly/index/jsSetFont
       global.get $~lib/memory/__stack_pointer
       i32.const 2080
       i32.store
       i32.const 2080
       f32.const 340
       f32.const 420
       call $assembly/index/jsFillText
       global.get $~lib/memory/__stack_pointer
       i32.const 1056
       i32.store
       i32.const 1056
       call $assembly/index/jsSetFillStyle
       global.get $~lib/memory/__stack_pointer
       i32.const 2032
       i32.store
       i32.const 2032
       call $assembly/index/jsSetFont
       global.get $~lib/memory/__stack_pointer
       i32.const 2112
       i32.store
       i32.const 2112
       f32.const 300
       f32.const 490
       call $assembly/index/jsFillText
       f32.const 380
       f32.const 940
       call $assembly/index/draw_ship
       br $break|0
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 1936
      i32.store
      i32.const 1936
      call $assembly/index/jsSetFont
      global.get $~lib/memory/__stack_pointer
      i32.const 2160
      i32.store
      i32.const 2160
      f32.const 180
      f32.const 360
      call $assembly/index/jsFillText
      global.get $~lib/memory/__stack_pointer
      i32.const 2032
      i32.store
      i32.const 2032
      call $assembly/index/jsSetFont
      global.get $~lib/memory/__stack_pointer
      i32.const 1056
      i32.store
      i32.const 1056
      call $assembly/index/jsSetFillStyle
      global.get $~lib/memory/__stack_pointer
      i32.const 2208
      i32.store
      i32.const 2208
      f32.const 300
      f32.const 420
      call $assembly/index/jsFillText
      br $break|0
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 1056
     i32.store
     i32.const 1056
     call $assembly/index/jsSetFillStyle
     global.get $~lib/memory/__stack_pointer
     i32.const 1936
     i32.store
     i32.const 1936
     call $assembly/index/jsSetFont
     global.get $~lib/memory/__stack_pointer
     i32.const 2256
     i32.store
     i32.const 2256
     f32.const 150
     f32.const 360
     call $assembly/index/jsFillText
     global.get $~lib/memory/__stack_pointer
     i32.const 1056
     i32.store
     i32.const 1056
     call $assembly/index/jsSetFillStyle
     global.get $~lib/memory/__stack_pointer
     i32.const 2032
     i32.store
     i32.const 2032
     call $assembly/index/jsSetFont
     global.get $~lib/memory/__stack_pointer
     i32.const 2304
     i32.store
     i32.const 2304
     f32.const 260
     f32.const 420
     call $assembly/index/jsFillText
     global.get $~lib/memory/__stack_pointer
     i32.const 2368
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=20
     local.get $0
     call $assembly/index/Game#getpassedtime
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=16
     i32.const 2368
     local.get $2
     call $~lib/string/String.__concat
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     i32.const 4304
     i32.store offset=8
     local.get $2
     i32.const 4304
     call $~lib/string/String.__concat
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store
     local.get $2
     f32.const 200
     f32.const 500
     call $assembly/index/jsFillText
     global.get $~lib/memory/__stack_pointer
     i32.const 1120
     i32.store
     i32.const 1120
     call $assembly/index/jsSetFillStyle
     global.get $~lib/memory/__stack_pointer
     i32.const 4336
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=20
     local.get $0
     i32.load offset=48
     call $~lib/number/I32#toString
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=16
     i32.const 4336
     local.get $2
     call $~lib/string/String.__concat
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     i32.const 4400
     i32.store offset=8
     local.get $2
     i32.const 4400
     call $~lib/string/String.__concat
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store
     local.get $2
     f32.const 180
     f32.const 600
     call $assembly/index/jsFillText
     global.get $~lib/memory/__stack_pointer
     i32.const 4432
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=20
     local.get $0
     i32.load offset=52
     call $~lib/number/I32#toString
     local.set $0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=16
     i32.const 4432
     local.get $0
     call $~lib/string/String.__concat
     local.set $0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     i32.const 4400
     i32.store offset=8
     local.get $0
     i32.const 4400
     call $~lib/string/String.__concat
     local.set $0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     f32.const 180
     f32.const 650
     call $assembly/index/jsFillText
     br $break|0
    end
    call $assembly/index/jsDatenow
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=20
    local.tee $6
    i32.store offset=4
    local.get $6
    i32.const 0
    call $~lib/array/Array<assembly/index/Boss>#__get
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 20
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 4772
    i32.lt_s
    br_if $folding-inner2
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 20
    memory.fill
    global.get $~lib/memory/__stack_pointer
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.load offset=24
    call $~lib/number/I32#toString
    local.tee $8
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    i32.const 999
    call $~lib/number/I32#toString
    local.tee $9
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 4528
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=12
    i32.const 4528
    local.get $8
    i32.store
    i32.const 4528
    local.get $8
    i32.const 1
    call $~lib/rt/itcms/__link
    global.get $~lib/memory/__stack_pointer
    i32.const 4528
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store offset=12
    i32.const 4536
    local.get $9
    i32.store
    i32.const 4528
    local.get $9
    i32.const 1
    call $~lib/rt/itcms/__link
    global.get $~lib/memory/__stack_pointer
    i32.const 4528
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 4240
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 4772
    i32.lt_s
    br_if $folding-inner2
    global.get $~lib/memory/__stack_pointer
    i64.const 0
    i64.store
    global.get $~lib/memory/__stack_pointer
    i32.const 4528
    i32.store offset=4
    i32.const 4524
    i32.load
    i32.const 2
    i32.shr_u
    local.set $8
    global.get $~lib/memory/__stack_pointer
    i32.const 4240
    i32.store
    local.get $8
    call $~lib/util/string/joinStringArray
    local.set $8
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $6
    local.get $8
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    i32.const 4560
    i32.store
    i32.const 4560
    call $assembly/index/jsSetFont
    global.get $~lib/memory/__stack_pointer
    i32.const 1120
    i32.store
    i32.const 1120
    call $assembly/index/jsSetFillStyle
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=12
    local.get $7
    f32.load
    f32.const 70
    f32.add
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=12
    local.get $8
    local.get $1
    local.get $7
    f32.load offset=4
    f32.const -10
    f32.add
    call $assembly/index/jsFillText
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store
    local.get $7
    f32.load
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store
    local.get $1
    local.get $7
    f32.load offset=4
    call $assembly/index/draw_boss
    global.get $~lib/memory/__stack_pointer
    i32.const 20
    i32.add
    global.set $~lib/memory/__stack_pointer
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=24
     local.tee $6
     i32.store
     local.get $6
     call $~lib/array/Array<assembly/index/Bullet>#get:length
     local.get $2
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=8
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=24
      local.tee $6
      i32.store offset=4
      local.get $6
      local.get $2
      call $~lib/array/Array<assembly/index/Boss>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 4772
      i32.lt_s
      br_if $folding-inner2
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      local.get $6
      f32.load
      f32.const 14
      f32.add
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      local.get $6
      f32.load offset=4
      f32.const 14
      f32.add
      local.set $3
      call $assembly/index/jsBeginPath
      global.get $~lib/memory/__stack_pointer
      i32.const 1056
      i32.store
      i32.const 1056
      call $assembly/index/jsSetFillStyle
      local.get $1
      local.get $3
      f32.const 14
      f32.const 0
      f32.const 6.2831854820251465
      call $assembly/index/jsArc
      call $assembly/index/jsClosePath
      call $assembly/index/jsFill
      call $assembly/index/jsBeginPath
      global.get $~lib/memory/__stack_pointer
      i32.const 1120
      i32.store
      i32.const 1120
      call $assembly/index/jsSetFillStyle
      local.get $1
      local.get $3
      f32.const 7
      f32.const 0
      f32.const 6.2831854820251465
      call $assembly/index/jsArc
      call $assembly/index/jsClosePath
      call $assembly/index/jsFill
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|1
     end
    end
    i32.const 0
    local.set $2
    loop $for-loop|2
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=28
     local.tee $6
     i32.store
     local.get $6
     call $~lib/array/Array<assembly/index/Bullet>#get:length
     local.get $2
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=8
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=28
      local.tee $6
      i32.store offset=4
      local.get $6
      local.get $2
      call $~lib/array/Array<assembly/index/Boss>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      block $__inlined_func$assembly/index/Shot#draw@override$8
       local.get $6
       i32.const 8
       i32.sub
       i32.load
       i32.const 17
       i32.eq
       if
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.sub
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        i32.const 4772
        i32.lt_s
        br_if $folding-inner2
        global.get $~lib/memory/__stack_pointer
        i32.const 0
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store
        local.get $6
        f32.load
        local.set $1
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store
        local.get $6
        f32.load offset=4
        local.set $3
        call $assembly/index/jsBeginPath
        global.get $~lib/memory/__stack_pointer
        i32.const 1248
        i32.store
        i32.const 1248
        call $assembly/index/jsSetFillStyle
        local.get $1
        local.get $3
        f32.const -40
        f32.add
        local.tee $10
        call $assembly/index/jsMoveTo
        local.get $1
        f32.const 100
        f32.add
        local.tee $4
        local.get $10
        call $assembly/index/jsLineTo
        br $__inlined_func$assembly/index/Shot#draw@override$8
       end
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.sub
       global.set $~lib/memory/__stack_pointer
       global.get $~lib/memory/__stack_pointer
       i32.const 4772
       i32.lt_s
       br_if $folding-inner2
       global.get $~lib/memory/__stack_pointer
       i32.const 0
       i32.store
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store
       local.get $6
       f32.load
       local.set $1
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store
       local.get $6
       f32.load offset=4
       local.set $3
       call $assembly/index/jsBeginPath
       global.get $~lib/memory/__stack_pointer
       i32.const 1056
       i32.store
       i32.const 1056
       call $assembly/index/jsSetFillStyle
       local.get $1
       local.get $3
       f32.const -5
       f32.add
       local.tee $10
       call $assembly/index/jsMoveTo
       local.get $1
       f32.const 5
       f32.add
       local.tee $4
       local.get $10
       call $assembly/index/jsLineTo
      end
      local.get $4
      local.get $3
      call $assembly/index/jsLineTo
      local.get $1
      local.get $3
      call $assembly/index/jsLineTo
      call $assembly/index/jsClosePath
      call $assembly/index/jsFill
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|2
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=16
    local.tee $2
    i32.store
    block $__inlined_func$assembly/index/Ship#draw@override$609
     local.get $2
     i32.const 8
     i32.sub
     i32.load
     i32.const 18
     i32.eq
     if
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 4772
      i32.lt_s
      br_if $folding-inner2
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store
      local.get $2
      f32.load
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store
      local.get $2
      f32.load offset=4
      local.set $10
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 4772
      i32.lt_s
      br_if $folding-inner2
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.store
      call $assembly/index/jsBeginPath
      global.get $~lib/memory/__stack_pointer
      i32.const 1248
      i32.store
      i32.const 1248
      call $assembly/index/jsSetFillStyle
      local.get $4
      f32.const 17
      f32.add
      local.tee $11
      local.get $10
      f32.const 0
      f32.add
      local.tee $1
      call $assembly/index/jsMoveTo
      local.get $4
      f32.const 25
      f32.add
      local.tee $3
      local.get $1
      call $assembly/index/jsLineTo
      local.get $3
      local.get $10
      f32.const 17
      f32.add
      local.tee $12
      call $assembly/index/jsLineTo
      local.get $4
      f32.const 30
      f32.add
      local.tee $1
      local.get $12
      call $assembly/index/jsLineTo
      local.get $1
      local.get $10
      f32.const 26
      f32.add
      local.tee $1
      call $assembly/index/jsLineTo
      local.get $4
      f32.const 42
      f32.add
      local.get $10
      f32.const 47
      f32.add
      local.tee $3
      call $assembly/index/jsLineTo
      local.get $4
      f32.const 0
      f32.add
      local.get $3
      call $assembly/index/jsLineTo
      local.get $4
      f32.const 12
      f32.add
      local.tee $13
      local.get $1
      call $assembly/index/jsLineTo
      local.get $13
      local.get $12
      call $assembly/index/jsLineTo
      local.get $11
      local.get $12
      call $assembly/index/jsLineTo
      call $assembly/index/jsClosePath
      call $assembly/index/jsFill
      call $assembly/index/jsBeginPath
      global.get $~lib/memory/__stack_pointer
      i32.const 1056
      i32.store
      i32.const 1056
      call $assembly/index/jsSetFillStyle
      local.get $11
      local.get $10
      f32.const 27
      f32.add
      local.tee $1
      call $assembly/index/jsMoveTo
      local.get $4
      f32.const 24
      f32.add
      local.tee $12
      local.get $1
      call $assembly/index/jsLineTo
      local.get $12
      local.get $10
      f32.const 45
      f32.add
      local.tee $1
      call $assembly/index/jsLineTo
      local.get $11
      local.get $1
      call $assembly/index/jsLineTo
      call $assembly/index/jsClosePath
      call $assembly/index/jsFill
      call $assembly/index/jsBeginPath
      global.get $~lib/memory/__stack_pointer
      i32.const 1120
      i32.store
      i32.const 1120
      call $assembly/index/jsSetFillStyle
      local.get $4
      f32.const 11
      f32.add
      local.get $3
      call $assembly/index/jsMoveTo
      local.get $11
      local.get $3
      call $assembly/index/jsLineTo
      local.get $4
      f32.const 14
      f32.add
      local.get $10
      f32.const 56
      f32.add
      local.tee $1
      call $assembly/index/jsLineTo
      call $assembly/index/jsClosePath
      call $assembly/index/jsFill
      call $assembly/index/jsBeginPath
      global.get $~lib/memory/__stack_pointer
      i32.const 1120
      i32.store
      i32.const 1120
      call $assembly/index/jsSetFillStyle
      local.get $4
      f32.const 26
      f32.add
      local.get $3
      call $assembly/index/jsMoveTo
      local.get $4
      f32.const 32
      f32.add
      local.get $3
      call $assembly/index/jsLineTo
      local.get $4
      f32.const 29
      f32.add
      local.get $1
      call $assembly/index/jsLineTo
      call $assembly/index/jsClosePath
      call $assembly/index/jsFill
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      br $__inlined_func$assembly/index/Ship#draw@override$609
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 4772
     i32.lt_s
     br_if $folding-inner2
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store
     local.get $2
     f32.load
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store
     local.get $1
     local.get $2
     f32.load offset=4
     call $assembly/index/draw_ship
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 2032
    i32.store
    i32.const 2032
    call $assembly/index/jsSetFont
    global.get $~lib/memory/__stack_pointer
    i32.const 1120
    i32.store
    i32.const 1120
    call $assembly/index/jsSetFillStyle
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $assembly/index/Game#getpassedtime
    local.tee $2
    i32.store offset=24
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store
    local.get $2
    f32.const 30
    f32.const 50
    call $assembly/index/jsFillText
    global.get $~lib/memory/__stack_pointer
    i32.const 4608
    i32.store
    i32.const 4608
    call $assembly/index/jsSetFont
    global.get $~lib/memory/__stack_pointer
    i32.const 1120
    i32.store
    i32.const 1120
    call $assembly/index/jsSetFillStyle
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=24
    local.tee $2
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $2
    call $~lib/array/Array<assembly/index/Bullet>#get:length
    call $~lib/number/I32#toString
    local.tee $2
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    i32.const 4656
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=8
    i32.const 4656
    local.get $2
    call $~lib/string/String.__concat
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store
    local.get $2
    f32.const 30
    f32.const 90
    call $assembly/index/jsFillText
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    call $assembly/index/jsDatenow
    local.get $5
    i32.sub
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    local.get $0
    local.get $2
    local.get $0
    i32.load offset=52
    local.tee $0
    local.get $0
    local.get $2
    i32.lt_s
    select
    i32.store offset=52
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 37568
  i32.const 37616
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/index/animationFrameHandler
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4772
  i32.lt_s
  if
   i32.const 37568
   i32.const 37616
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  call $assembly/index/jsDatenow
  local.tee $1
  global.get $assembly/index/last_frame
  i32.sub
  local.set $0
  loop $while-continue|0
   local.get $0
   i32.const 0
   i32.ge_s
   if
    global.get $~lib/memory/__stack_pointer
    global.get $assembly/index/game
    local.tee $2
    i32.store
    local.get $2
    call $assembly/index/Game#update
    local.get $0
    i32.const 16
    i32.sub
    local.set $0
    br $while-continue|0
   end
  end
  f32.const 0
  f32.const 0
  f32.const 800
  f32.const 1e3
  call $assembly/index/jsClearRect
  global.get $~lib/memory/__stack_pointer
  global.get $assembly/index/game
  local.tee $0
  i32.store
  local.get $0
  call $assembly/index/Game#draw
  local.get $1
  global.set $assembly/index/last_frame
  call $assembly/index/jsRequestAnimationFrame
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/Game#reset (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4772
  i32.lt_s
  if
   i32.const 37568
   i32.const 37616
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  i32.store8 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  i32.const 0
  f32.const 380
  f32.const 940
  f32.const 1
  f32.const 0
  f32.const 40
  f32.const 50
  i32.const 1
  f32.const 380
  call $assembly/index/Ship#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=16
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  call $assembly/index/BossArray#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=20
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  call $assembly/index/Boss#constructor
  local.tee $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=20
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $2
  local.get $1
  call $~lib/array/Array<assembly/index/Boss>#push
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  i32.store8 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  call $assembly/index/BulletArray#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=24
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  call $assembly/index/ShotArray#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=28
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/index/jsDatenow
  i32.const 1000
  i32.div_s
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/index/jsDatenow
  i32.store offset=36
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $0
  i32.load offset=36
  i32.store offset=40
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $0
  i32.load offset=36
  i32.store offset=44
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=48
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=52
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
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 4772
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $assembly/index/game
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4772
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   block $break|0
    block $case3|0
     block $case2|0
      block $case1|0
       block $case0|0
        local.get $0
        i32.load
        br_table $case2|0 $case3|0 $case1|0 $case0|0 $break|0
       end
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store
       local.get $0
       i32.const 1
       i32.store
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store
       local.get $0
       call $assembly/index/Game#reset
       br $break|0
      end
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      call $assembly/index/Game#reset
      br $break|0
     end
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     i32.const 1
     i32.store
     br $break|0
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    i32.const 0
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    local.get $0
    local.get $0
    i32.load8_u offset=4
    i32.eqz
    i32.store8 offset=4
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 37568
  i32.const 37616
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/index/move (param $0 f32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 4772
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   global.get $assembly/index/game
   local.tee $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=16
   local.tee $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4772
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   local.get $0
   f32.store offset=28
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 37568
  i32.const 37616
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/array/Array<assembly/index/Boss>#__visit (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4772
  i32.lt_s
  if
   i32.const 37568
   i32.const 37616
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $2
  loop $while-continue|0
   local.get $1
   local.get $2
   i32.lt_u
   if
    local.get $1
    i32.load
    local.tee $3
    if
     local.get $3
     call $~lib/rt/itcms/__visit
    end
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4772
  i32.lt_s
  if
   i32.const 37568
   i32.const 37616
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 2
  i32.shl
  local.tee $3
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  i32.const 16
  local.get $1
  call $~lib/rt/itcms/__new
  local.tee $1
  local.get $2
  i32.store
  local.get $1
  local.get $2
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $1
  local.get $2
  i32.store offset=4
  local.get $1
  local.get $3
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
)
