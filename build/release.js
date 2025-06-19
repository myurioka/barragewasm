async function instantiate(module, imports = {}) {
  const adaptedImports = {
    env: Object.assign(Object.create(globalThis), imports.env || {}, {
      abort(message, fileName, lineNumber, columnNumber) {
        // ~lib/builtins/abort(~lib/string/String | null?, ~lib/string/String | null?, u32?, u32?) => void
        message = __liftString(message >>> 0);
        fileName = __liftString(fileName >>> 0);
        lineNumber = lineNumber >>> 0;
        columnNumber = columnNumber >>> 0;
        (() => {
          // @external.js
          throw Error(`${message} in ${fileName}:${lineNumber}:${columnNumber}`);
        })();
      },
      seed() {
        // ~lib/builtins/seed() => f64
        return (() => {
          // @external.js
          return Date.now() * Math.random();
        })();
      },
      jsSetFillStyle(fillStylePtr) {
        // assembly/index/jsSetFillStyle(~lib/string/String) => void
        fillStylePtr = __liftString(fillStylePtr >>> 0);
        jsSetFillStyle(fillStylePtr);
      },
      jsSetStrokeStyle(strokeStylePtr) {
        // assembly/index/jsSetStrokeStyle(~lib/string/String) => void
        strokeStylePtr = __liftString(strokeStylePtr >>> 0);
        jsSetStrokeStyle(strokeStylePtr);
      },
      jsSetFont(fontPtr) {
        // assembly/index/jsSetFont(~lib/string/String) => void
        fontPtr = __liftString(fontPtr >>> 0);
        jsSetFont(fontPtr);
      },
      jsFillText(text, x, y) {
        // assembly/index/jsFillText(~lib/string/String, f32, f32) => void
        text = __liftString(text >>> 0);
        jsFillText(text, x, y);
      },
    }),
  };
  const { exports } = await WebAssembly.instantiate(module, adaptedImports);
  const memory = exports.memory || imports.env.memory;
  function __liftString(pointer) {
    if (!pointer) return null;
    const
      end = pointer + new Uint32Array(memory.buffer)[pointer - 4 >>> 2] >>> 1,
      memoryU16 = new Uint16Array(memory.buffer);
    let
      start = pointer >>> 1,
      string = "";
    while (end - start > 1024) string += String.fromCharCode(...memoryU16.subarray(start, start += 1024));
    return string + String.fromCharCode(...memoryU16.subarray(start, end));
  }
  return exports;
}
export const {
  memory,
  animationFrameHandler,
  startAnimation,
  shot,
  move,
} = await (async url => instantiate(
  await (async () => {
    const isNodeOrBun = typeof process != "undefined" && process.versions != null && (process.versions.node != null || process.versions.bun != null);
    if (isNodeOrBun) { return globalThis.WebAssembly.compile(await (await import("node:fs/promises")).readFile(url)); }
    else { return await globalThis.WebAssembly.compileStreaming(globalThis.fetch(url)); }
  })(), {
  }
))(new URL("release.wasm", import.meta.url));
