(module
 (type $0 (func))
 (type $1 (func (param i32 f32)))
 (type $2 (func (param i32 i32)))
 (type $3 (func (param i32) (result i32)))
 (type $4 (func (param i32)))
 (type $5 (func (param i32 i32) (result i32)))
 (type $6 (func (result f64)))
 (type $7 (func (param i32 i32 f32)))
 (type $8 (func (param i32) (result f32)))
 (type $9 (func (param f64 f64)))
 (type $10 (func (param i32 i32 i32 i32)))
 (type $11 (func (param i64) (result i64)))
 (type $12 (func (param i64)))
 (type $13 (func (param i32 i32 i32)))
 (type $14 (func (param i32 i32) (result f32)))
 (type $15 (func (param f32 f32 f32 f32)))
 (type $16 (func (param f32 f32 f32 f32 f32)))
 (import "env" "jsLog" (func $assembly/index/jsLog (param i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "seed" (func $~lib/builtins/seed (result f64)))
 (import "env" "jsSetFillStyle" (func $assembly/index/jsSetFillStyle (param i32)))
 (import "env" "jsClearRect" (func $assembly/index/jsClearRect (param f32 f32 f32 f32)))
 (import "env" "jsBeginPath" (func $assembly/index/jsBeginPath))
 (import "env" "jsArc" (func $assembly/index/jsArc (param f32 f32 f32 f32 f32)))
 (import "env" "jsFill" (func $assembly/index/jsFill))
 (import "env" "jsMoveTo" (func $assembly/index/jsMoveTo (param f64 f64)))
 (import "env" "jsLineTo" (func $assembly/index/jsLineTo (param f64 f64)))
 (import "env" "jsClosePath" (func $assembly/index/jsClosePath))
 (import "env" "jsRequestAnimationFrame" (func $assembly/index/jsRequestAnimationFrame))
 (global $assembly/index/CIRCLE_PROPERTIMES_COUNT f32 (f32.const 5))
 (global $assembly/index/CANVAS_WIDTH f32 (f32.const 600))
 (global $assembly/index/CANVAS_HEIGHT f32 (f32.const 800))
 (global $assembly/index/BOSS_WIDTH f32 (f32.const 225))
 (global $assembly/index/MAX_BULLET_NUMBER f32 (f32.const 10))
 (global $assembly/index/BULLET_WIDTH f32 (f32.const 28))
 (global $assembly/index/SHIP_WIDTH f32 (f32.const 30))
 (global $assembly/index/SHIP_HEIGHT f32 (f32.const 50))
 (global $assembly/index/SHIP_SKIP_SIZE f32 (f32.const 5))
 (global $assembly/index/DEFAULT_SPEED_BOSS i32 (i32.const 1))
 (global $assembly/index/DEFAULT_COLOR i32 (i32.const 32))
 (global $assembly/index/GREEN_DARK_MIDDLE i32 (i32.const 96))
 (global $assembly/index/KIMIDORI_COLOR i32 (i32.const 160))
 (global $assembly/index/LIGHT_GREEN_COLOR i32 (i32.const 224))
 (global $assembly/index/GREEN_DARK_HEAVY i32 (i32.const 288))
 (global $assembly/index/GREEN_DARK_LIGHT i32 (i32.const 352))
 (global $assembly/index/LIGHTCYAN i32 (i32.const 352))
 (global $assembly/index/MAX_BULLET_GAGE i32 (i32.const 5))
 (global $~lib/math/NativeMath.PI f64 (f64.const 3.141592653589793))
 (global $~lib/math/NativeMathf.PI f32 (f32.const 3.1415927410125732))
 (global $assembly/index/PI2 f32 (f32.const 6.2831854820251465))
 (global $assembly/index/CIRCLE_PROPERTIES_COUNT i32 (i32.const 5))
 (global $assembly/index/circles (mut i32) (i32.const 0))
 (global $assembly/index/numCircles (mut i32) (i32.const 0))
 (global $assembly/index/canvasWidth (mut f32) (f32.const 0))
 (global $assembly/index/canvasHeight (mut f32) (f32.const 0))
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $assembly/index/boss (mut i32) (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Stub i32 (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Minimal i32 (i32.const 1))
 (global $~lib/shared/runtime/Runtime.Incremental i32 (i32.const 2))
 (global $~lib/native/ASC_RUNTIME i32 (i32.const 0))
 (global $~lib/math/random_seeded (mut i32) (i32.const 0))
 (global $~lib/math/random_state0_64 (mut i64) (i64.const 0))
 (global $~lib/math/random_state1_64 (mut i64) (i64.const 0))
 (global $~lib/math/random_state0_32 (mut i32) (i32.const 0))
 (global $~lib/math/random_state1_32 (mut i32) (i32.const 0))
 (global $~lib/memory/__heap_base i32 (i32.const 1052))
 (memory $0 1)
 (data $0 (i32.const 12) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00&\00\00\00r\00g\00b\00a\00(\000\00,\001\002\008\00,\00 \000\00,\00 \001\00.\000\00)\00\00\00\00\00\00\00")
 (data $1 (i32.const 76) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00r\00g\00b\00a\00(\001\005\00,\002\003\00,\001\005\00,\001\00.\000\00)\00\00\00\00\00\00\00\00\00")
 (data $2 (i32.const 140) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00&\00\00\00r\00g\00b\00a\00(\001\008\004\00,\002\001\000\00,\000\00,\001\00.\000\00)\00\00\00\00\00\00\00")
 (data $3 (i32.const 204) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00*\00\00\00r\00g\00b\00a\00(\002\002\006\00,\002\003\008\00,\001\009\007\00,\001\00.\000\00)\00\00\00")
 (data $4 (i32.const 268) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00 \00\00\00r\00g\00b\00a\00(\008\00,\001\003\00,\008\00,\001\00.\000\00)\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $5 (i32.const 332) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00r\00g\00b\00a\00(\001\007\00,\003\001\00,\001\007\00,\001\00.\000\00)\00\00\00\00\00\00\00\00\00")
 (data $6 (i32.const 396) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0e\00\00\00P\00A\00S\00S\00.\00.\00.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $7 (i32.const 444) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00\00\00\00\00")
 (data $8 (i32.const 508) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $9 (i32.const 572) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data $10 (i32.const 620) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00s\00t\00a\00t\00i\00c\00a\00r\00r\00a\00y\00.\00t\00s\00\00\00\00\00\00\00")
 (data $11 (i32.const 684) "|\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00^\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00n\00u\00l\00l\00\'\00 \00(\00n\00o\00t\00 \00a\00s\00s\00i\00g\00n\00e\00d\00 \00o\00r\00 \00f\00a\00i\00l\00e\00d\00 \00c\00a\00s\00t\00)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $12 (i32.const 812) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\"\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00d\00e\00x\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00")
 (data $13 (i32.const 876) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\00\00\00\00")
 (data $14 (i32.const 940) "L\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00.\00\00\00r\00g\00b\00a\00(\007\000\00,\00 \001\003\000\00,\00 \001\000\000\00,\00 \001\00.\000\00)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $15 (i32.const 1020) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\08\00\00\00P\00A\00S\00S\00\00\00\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "init" (func $assembly/index/init))
 (export "animationFrameHandler" (func $assembly/index/animationFrameHandler))
 (export "startAnimation" (func $assembly/index/startAnimation))
 (export "memory" (memory $0))
 (start $~start)
 (func $assembly/index/Boss#set:x (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store
 )
 (func $assembly/index/Boss#set:y (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=4
 )
 (func $assembly/index/Boss#set:dx (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=8
 )
 (func $assembly/index/Boss#set:dy (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=12
 )
 (func $assembly/index/Boss#set:d (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=16
 )
 (func $~lib/rt/stub/maybeGrowMemory (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  memory.size
  local.set $1
  local.get $1
  i32.const 16
  i32.shl
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $2
  local.get $0
  local.get $2
  i32.gt_u
  if
   local.get $0
   local.get $2
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $3
   local.get $1
   local.tee $4
   local.get $3
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
   local.set $6
   local.get $6
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
  end
  local.get $0
  global.set $~lib/rt/stub/offset
 )
 (func $~lib/rt/common/BLOCK#set:mmInfo (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/rt/stub/__alloc (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 464
   i32.const 528
   i32.const 33
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/stub/offset
  local.set $1
  global.get $~lib/rt/stub/offset
  i32.const 4
  i32.add
  local.set $2
  block $~lib/rt/stub/computeSize|inlined.0 (result i32)
   local.get $0
   local.set $3
   local.get $3
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
   br $~lib/rt/stub/computeSize|inlined.0
  end
  local.set $4
  local.get $2
  local.get $4
  i32.add
  call $~lib/rt/stub/maybeGrowMemory
  local.get $1
  local.get $4
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $2
  return
 )
 (func $~lib/rt/common/OBJECT#set:gcInfo (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/rt/common/OBJECT#set:gcInfo2 (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/rt/common/OBJECT#set:rtId (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/rt/common/OBJECT#set:rtSize (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/rt/stub/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741804
  i32.gt_u
  if
   i32.const 464
   i32.const 528
   i32.const 86
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 16
  local.get $0
  i32.add
  call $~lib/rt/stub/__alloc
  local.set $2
  local.get $2
  i32.const 4
  i32.sub
  local.set $3
  local.get $3
  i32.const 0
  call $~lib/rt/common/OBJECT#set:gcInfo
  local.get $3
  i32.const 0
  call $~lib/rt/common/OBJECT#set:gcInfo2
  local.get $3
  local.get $1
  call $~lib/rt/common/OBJECT#set:rtId
  local.get $3
  local.get $0
  call $~lib/rt/common/OBJECT#set:rtSize
  local.get $2
  i32.const 16
  i32.add
  return
 )
 (func $assembly/index/Boss#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 20
   i32.const 5
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  f32.const 0
  call $assembly/index/Boss#set:x
  local.get $0
  f32.const 0
  call $assembly/index/Boss#set:y
  local.get $0
  f32.const 0
  call $assembly/index/Boss#set:dx
  local.get $0
  f32.const 0
  call $assembly/index/Boss#set:dy
  local.get $0
  f32.const 0
  call $assembly/index/Boss#set:d
  local.get $0
  f32.const 100
  call $assembly/index/Boss#set:x
  local.get $0
  f32.const 100
  call $assembly/index/Boss#set:y
  local.get $0
  f32.const 1
  call $assembly/index/Boss#set:dx
  local.get $0
  f32.const 1
  call $assembly/index/Boss#set:dy
  local.get $0
  f32.const 1
  call $assembly/index/Boss#set:d
  local.get $0
 )
 (func $start:assembly/index
  i32.const 416
  call $assembly/index/jsLog
  global.get $~lib/memory/__heap_base
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
  global.set $~lib/rt/stub/startOffset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
  i32.const 0
  call $assembly/index/Boss#constructor
  global.set $assembly/index/boss
 )
 (func $~lib/staticarray/StaticArray<f32>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 592
   i32.const 640
   i32.const 51
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.shl
  local.set $2
  local.get $2
  i32.const 4
  call $~lib/rt/stub/__new
  local.set $3
  i32.const 0
  global.get $~lib/shared/runtime/Runtime.Incremental
  i32.ne
  drop
  local.get $3
  i32.const 0
  local.get $2
  memory.fill
  local.get $3
  return
 )
 (func $~lib/math/murmurHash3 (param $0 i64) (result i64)
  local.get $0
  local.get $0
  i64.const 33
  i64.shr_u
  i64.xor
  local.set $0
  local.get $0
  i64.const -49064778989728563
  i64.mul
  local.set $0
  local.get $0
  local.get $0
  i64.const 33
  i64.shr_u
  i64.xor
  local.set $0
  local.get $0
  i64.const -4265267296055464877
  i64.mul
  local.set $0
  local.get $0
  local.get $0
  i64.const 33
  i64.shr_u
  i64.xor
  local.set $0
  local.get $0
  return
 )
 (func $~lib/math/splitMix32 (param $0 i32) (result i32)
  local.get $0
  i32.const 1831565813
  i32.add
  local.set $0
  local.get $0
  local.get $0
  i32.const 15
  i32.shr_u
  i32.xor
  local.get $0
  i32.const 1
  i32.or
  i32.mul
  local.set $0
  local.get $0
  local.get $0
  local.get $0
  local.get $0
  i32.const 7
  i32.shr_u
  i32.xor
  local.get $0
  i32.const 61
  i32.or
  i32.mul
  i32.add
  i32.xor
  local.set $0
  local.get $0
  local.get $0
  i32.const 14
  i32.shr_u
  i32.xor
  return
 )
 (func $~lib/math/NativeMath.seedRandom (param $0 i64)
  local.get $0
  i64.const 0
  i64.eq
  if
   i64.const -7046029254386353131
   local.set $0
  end
  local.get $0
  call $~lib/math/murmurHash3
  global.set $~lib/math/random_state0_64
  global.get $~lib/math/random_state0_64
  i64.const -1
  i64.xor
  call $~lib/math/murmurHash3
  global.set $~lib/math/random_state1_64
  local.get $0
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
  (local $0 i64)
  (local $1 i64)
  (local $2 i64)
  global.get $~lib/math/random_seeded
  i32.eqz
  if
   call $~lib/builtins/seed
   i64.reinterpret_f64
   call $~lib/math/NativeMath.seedRandom
  end
  global.get $~lib/math/random_state0_64
  local.set $0
  global.get $~lib/math/random_state1_64
  local.set $1
  local.get $1
  global.set $~lib/math/random_state0_64
  local.get $0
  local.get $0
  i64.const 23
  i64.shl
  i64.xor
  local.set $0
  local.get $0
  local.get $0
  i64.const 17
  i64.shr_u
  i64.xor
  local.set $0
  local.get $0
  local.get $1
  i64.xor
  local.set $0
  local.get $0
  local.get $1
  i64.const 26
  i64.shr_u
  i64.xor
  local.set $0
  local.get $0
  global.set $~lib/math/random_state1_64
  local.get $1
  i64.const 12
  i64.shr_u
  i64.const 4607182418800017408
  i64.or
  local.set $2
  local.get $2
  f64.reinterpret_i64
  f64.const 1
  f64.sub
  return
 )
 (func $~lib/rt/common/OBJECT#get:rtSize (param $0 i32) (result i32)
  local.get $0
  i32.load offset=16
 )
 (func $~lib/staticarray/StaticArray<f32>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.const 20
  i32.sub
  call $~lib/rt/common/OBJECT#get:rtSize
  i32.const 2
  i32.shr_u
  return
 )
 (func $~lib/staticarray/StaticArray<f32>#__uset (param $0 i32) (param $1 i32) (param $2 f32)
  local.get $0
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  f32.store
  i32.const 0
  drop
 )
 (func $~lib/staticarray/StaticArray<f32>#__set (param $0 i32) (param $1 i32) (param $2 f32)
  local.get $1
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  i32.ge_u
  if
   i32.const 896
   i32.const 640
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/staticarray/StaticArray<f32>#__uset
 )
 (func $assembly/index/init (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  f32.convert_i32_s
  global.set $assembly/index/canvasWidth
  local.get $1
  f32.convert_i32_s
  global.set $assembly/index/canvasHeight
  local.get $2
  global.set $assembly/index/numCircles
  i32.const 0
  global.get $assembly/index/numCircles
  global.get $assembly/index/CIRCLE_PROPERTIES_COUNT
  i32.mul
  call $~lib/staticarray/StaticArray<f32>#constructor
  global.set $assembly/index/circles
  i32.const 0
  local.set $3
  loop $for-loop|0
   local.get $3
   global.get $assembly/index/numCircles
   i32.lt_s
   if
    call $~lib/math/NativeMath.random
    f64.const 10
    f64.mul
    f64.const 5
    f64.add
    local.set $4
    local.get $3
    global.get $assembly/index/CIRCLE_PROPERTIES_COUNT
    i32.mul
    local.set $5
    global.get $assembly/index/circles
    local.tee $6
    if (result i32)
     local.get $6
    else
     i32.const 704
     i32.const 832
     i32.const 125
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $5
    i32.const 0
    i32.add
    call $~lib/math/NativeMath.random
    global.get $assembly/index/canvasWidth
    f64.promote_f32
    local.get $4
    f64.const 2
    f64.mul
    f64.sub
    f64.mul
    local.get $4
    f64.add
    f32.demote_f64
    call $~lib/staticarray/StaticArray<f32>#__set
    global.get $assembly/index/circles
    local.tee $7
    if (result i32)
     local.get $7
    else
     i32.const 704
     i32.const 832
     i32.const 126
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $5
    i32.const 1
    i32.add
    call $~lib/math/NativeMath.random
    global.get $assembly/index/canvasHeight
    f64.promote_f32
    local.get $4
    f64.const 2
    f64.mul
    f64.sub
    f64.mul
    local.get $4
    f64.add
    f32.demote_f64
    call $~lib/staticarray/StaticArray<f32>#__set
    global.get $assembly/index/circles
    local.tee $8
    if (result i32)
     local.get $8
    else
     i32.const 704
     i32.const 832
     i32.const 127
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $5
    i32.const 2
    i32.add
    local.get $4
    f32.demote_f64
    call $~lib/staticarray/StaticArray<f32>#__set
    global.get $assembly/index/circles
    local.tee $9
    if (result i32)
     local.get $9
    else
     i32.const 704
     i32.const 832
     i32.const 128
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $5
    i32.const 3
    i32.add
    call $~lib/math/NativeMath.random
    f64.const 0.5
    f64.sub
    f64.const 3
    f64.mul
    f32.demote_f64
    call $~lib/staticarray/StaticArray<f32>#__set
    global.get $assembly/index/circles
    local.tee $10
    if (result i32)
     local.get $10
    else
     i32.const 704
     i32.const 832
     i32.const 129
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $5
    i32.const 4
    i32.add
    call $~lib/math/NativeMath.random
    f64.const 0.5
    f64.sub
    f64.const 3
    f64.mul
    f32.demote_f64
    call $~lib/staticarray/StaticArray<f32>#__set
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  i32.const 960
  call $assembly/index/jsSetFillStyle
 )
 (func $~lib/staticarray/StaticArray<f32>#__get (param $0 i32) (param $1 i32) (result f32)
  (local $2 f32)
  local.get $1
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  i32.ge_u
  if
   i32.const 896
   i32.const 640
   i32.const 78
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  f32.load
  local.set $2
  i32.const 0
  drop
  local.get $2
  return
 )
 (func $assembly/index/Boss#get:x (param $0 i32) (result f32)
  local.get $0
  f32.load
 )
 (func $assembly/index/Boss#get:y (param $0 i32) (result f32)
  local.get $0
  f32.load offset=4
 )
 (func $assembly/index/Boss#draw (param $0 i32)
  (local $1 f32)
  (local $2 f32)
  i32.const 1040
  call $assembly/index/jsLog
  local.get $0
  call $assembly/index/Boss#get:x
  local.set $1
  local.get $0
  call $assembly/index/Boss#get:y
  local.set $2
  call $assembly/index/jsBeginPath
  global.get $assembly/index/GREEN_DARK_LIGHT
  call $assembly/index/jsSetFillStyle
  f64.const 55
  local.get $1
  f64.promote_f32
  f64.add
  f64.const 0
  local.get $2
  f64.promote_f32
  f64.add
  call $assembly/index/jsMoveTo
  f64.const 165
  local.get $1
  f64.promote_f32
  f64.add
  f64.const 0
  local.get $2
  f64.promote_f32
  f64.add
  call $assembly/index/jsLineTo
  f64.const 225
  local.get $1
  f64.promote_f32
  f64.add
  f64.const 60
  local.get $2
  f64.promote_f32
  f64.add
  call $assembly/index/jsLineTo
  f64.const 225
  local.get $1
  f64.promote_f32
  f64.add
  f64.const 160
  local.get $2
  f64.promote_f32
  f64.add
  call $assembly/index/jsLineTo
  f64.const 160
  local.get $1
  f64.promote_f32
  f64.add
  f64.const 225
  local.get $2
  f64.promote_f32
  f64.add
  call $assembly/index/jsLineTo
  f64.const 55
  local.get $1
  f64.promote_f32
  f64.add
  f64.const 225
  local.get $2
  f64.promote_f32
  f64.add
  call $assembly/index/jsLineTo
  f64.const 0
  local.get $1
  f64.promote_f32
  f64.add
  f64.const 160
  local.get $2
  f64.promote_f32
  f64.add
  call $assembly/index/jsLineTo
  f64.const 0
  local.get $1
  f64.promote_f32
  f64.add
  f64.const 60
  local.get $2
  f64.promote_f32
  f64.add
  call $assembly/index/jsLineTo
  call $assembly/index/jsClosePath
  call $assembly/index/jsFill
 )
 (func $assembly/index/animationFrameHandler
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 i32)
  (local $6 f32)
  (local $7 i32)
  (local $8 f32)
  (local $9 i32)
  (local $10 f32)
  (local $11 i32)
  (local $12 f32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  global.get $assembly/index/circles
  local.tee $0
  if (result i32)
   local.get $0
  else
   i32.const 704
   i32.const 832
   i32.const 139
   i32.const 8
   call $~lib/builtins/abort
   unreachable
  end
  i32.eqz
  if (result i32)
   i32.const 1
  else
   global.get $assembly/index/numCircles
   i32.const 0
   i32.eq
  end
  if
   return
  end
  i32.const 0
  local.set $1
  loop $for-loop|0
   local.get $1
   global.get $assembly/index/numCircles
   i32.lt_s
   if
    local.get $1
    global.get $assembly/index/CIRCLE_PROPERTIES_COUNT
    i32.mul
    local.set $2
    global.get $assembly/index/circles
    local.tee $3
    if (result i32)
     local.get $3
    else
     i32.const 704
     i32.const 832
     i32.const 146
     i32.const 17
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 0
    i32.add
    call $~lib/staticarray/StaticArray<f32>#__get
    local.set $4
    global.get $assembly/index/circles
    local.tee $5
    if (result i32)
     local.get $5
    else
     i32.const 704
     i32.const 832
     i32.const 147
     i32.const 17
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    call $~lib/staticarray/StaticArray<f32>#__get
    local.set $6
    global.get $assembly/index/circles
    local.tee $7
    if (result i32)
     local.get $7
    else
     i32.const 704
     i32.const 832
     i32.const 148
     i32.const 24
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 2
    i32.add
    call $~lib/staticarray/StaticArray<f32>#__get
    local.set $8
    global.get $assembly/index/circles
    local.tee $9
    if (result i32)
     local.get $9
    else
     i32.const 704
     i32.const 832
     i32.const 149
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 3
    i32.add
    call $~lib/staticarray/StaticArray<f32>#__get
    local.set $10
    global.get $assembly/index/circles
    local.tee $11
    if (result i32)
     local.get $11
    else
     i32.const 704
     i32.const 832
     i32.const 150
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 4
    i32.add
    call $~lib/staticarray/StaticArray<f32>#__get
    local.set $12
    local.get $4
    local.get $10
    f32.add
    local.set $4
    local.get $6
    local.get $12
    f32.add
    local.set $6
    local.get $4
    local.get $8
    f32.sub
    f32.const 0
    f32.lt
    if
     local.get $8
     local.set $4
     local.get $10
     f32.neg
     local.set $10
    else
     local.get $4
     local.get $8
     f32.add
     global.get $assembly/index/canvasWidth
     f32.gt
     if
      global.get $assembly/index/canvasWidth
      local.get $8
      f32.sub
      local.set $4
      local.get $10
      f32.neg
      local.set $10
     end
    end
    local.get $6
    local.get $8
    f32.sub
    f32.const 0
    f32.lt
    if
     local.get $8
     local.set $6
     local.get $12
     f32.neg
     local.set $12
    else
     local.get $6
     local.get $8
     f32.add
     global.get $assembly/index/canvasHeight
     f32.gt
     if
      global.get $assembly/index/canvasHeight
      local.get $8
      f32.sub
      local.set $6
      local.get $12
      f32.neg
      local.set $12
     end
    end
    global.get $assembly/index/circles
    local.tee $13
    if (result i32)
     local.get $13
    else
     i32.const 704
     i32.const 832
     i32.const 172
     i32.const 9
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 0
    i32.add
    local.get $4
    call $~lib/staticarray/StaticArray<f32>#__set
    global.get $assembly/index/circles
    local.tee $14
    if (result i32)
     local.get $14
    else
     i32.const 704
     i32.const 832
     i32.const 173
     i32.const 9
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.get $6
    call $~lib/staticarray/StaticArray<f32>#__set
    global.get $assembly/index/circles
    local.tee $15
    if (result i32)
     local.get $15
    else
     i32.const 704
     i32.const 832
     i32.const 174
     i32.const 9
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 3
    i32.add
    local.get $10
    call $~lib/staticarray/StaticArray<f32>#__set
    global.get $assembly/index/circles
    local.tee $16
    if (result i32)
     local.get $16
    else
     i32.const 704
     i32.const 832
     i32.const 175
     i32.const 9
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 4
    i32.add
    local.get $12
    call $~lib/staticarray/StaticArray<f32>#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  f32.const 0
  f32.const 0
  global.get $assembly/index/canvasWidth
  global.get $assembly/index/canvasHeight
  call $assembly/index/jsClearRect
  i32.const 416
  call $assembly/index/jsLog
  i32.const 0
  local.set $17
  loop $for-loop|1
   local.get $17
   global.get $assembly/index/numCircles
   i32.lt_s
   if
    local.get $17
    global.get $assembly/index/CIRCLE_PROPERTIES_COUNT
    i32.mul
    local.set $18
    call $assembly/index/jsBeginPath
    global.get $assembly/index/circles
    local.tee $19
    if (result i32)
     local.get $19
    else
     i32.const 704
     i32.const 832
     i32.const 184
     i32.const 15
     call $~lib/builtins/abort
     unreachable
    end
    local.get $18
    i32.const 0
    i32.add
    call $~lib/staticarray/StaticArray<f32>#__get
    global.get $assembly/index/circles
    local.tee $20
    if (result i32)
     local.get $20
    else
     i32.const 704
     i32.const 832
     i32.const 184
     i32.const 33
     call $~lib/builtins/abort
     unreachable
    end
    local.get $18
    i32.const 1
    i32.add
    call $~lib/staticarray/StaticArray<f32>#__get
    global.get $assembly/index/circles
    local.tee $21
    if (result i32)
     local.get $21
    else
     i32.const 704
     i32.const 832
     i32.const 184
     i32.const 51
     call $~lib/builtins/abort
     unreachable
    end
    local.get $18
    i32.const 2
    i32.add
    call $~lib/staticarray/StaticArray<f32>#__get
    f32.const 0
    global.get $assembly/index/PI2
    call $assembly/index/jsArc
    call $assembly/index/jsFill
    local.get $17
    i32.const 1
    i32.add
    local.set $17
    br $for-loop|1
   end
  end
  global.get $assembly/index/boss
  call $assembly/index/Boss#draw
  call $assembly/index/jsRequestAnimationFrame
 )
 (func $assembly/index/startAnimation
  call $assembly/index/jsRequestAnimationFrame
 )
 (func $~start
  call $start:assembly/index
 )
)
