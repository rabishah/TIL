# Modules in Javascript

- Each module is a piece of code that is executed once it is loaded.
- In that code, there may be declarations (variable declarations, function declarations, etc.).
	- By default, these declarations stay local to the module.
	- You can mark some of them as exports, then other modules can import them.
- A module can import things from other modules.
- Modules are singletons. Even if a module is imported multiple times, only a single “instance” of it exists.

# WHAT IS ES6?
ECMAScript is a scripting language that is standardised by a company called [Ecma International](http://www.ecma-international.org/). JavaScript is an implementation of ECMAScript. ECMAScript 6 is simply the next version of the ECMAScript standard and, hence, the next version of JavaScript. 

## ECMAScript 5 Module Systems
- CommonJS Modules: The dominant implementation of this standard is in Node.js Characteristics:
	- Compact syntax
	- Designed for synchronous loading and servers
- Asynchronous Module Definition (AMD): The most popular implementation of this standard is RequireJS. Characteristics:
	- Slightly more complicated syntax, enabling AMD to work without eval() (or a compilation step)
	- Designed for asynchronous loading and browsers

## ECMAScript 6 Module Systems
*ES6 modules are stored in files. There is exactly one module per file and one file per module.*

### Exports
- Multiple Named Exports (several per module)

```
export const sqrt = Math.sqrt;
export function square(x) {
  return x * x;
}
export function diag(x, y) {
  return sqrt(square(x) + square(y));
}
```

- Single Default Export (one per module)

```
export default function () { ··· }
export default class () { …. }
```

Note that there is no semicolon at the end if you default-export a function or a class (which are anonymous declarations).

There are two styles of default exports:
- Labeling declarations

		export default function foo() {} // no semicolon!
		export default class Bar {} // no semicolon!
		export default function () {} // no semicolon!
		export default class {} // no semicolon!
	
- Default-exporting values directly
	
		export default 'abc';
		export default foo();
		export default /^xyz$/;
		export default 5 * 7;
		export default { no: false, yes: true };	

### Imports
- Re-exporting:
	- Re-export everything (except for the default export):
      ```export * from 'src/other_module’;```
	
	- Re-export via a clause:
	
	  ```
    export { foo as myFoo, bar } from 'src/other_module';
    export { default } from 'src/other_module';
    export { default as foo } from 'src/other_module';
    export { foo as default } from 'src/other_module';
	  ```
	
- Named exporting via a clause:

  ```
  export { MY_CONST as FOO, myFunc };
  export { foo as default };
  ```
  
- Inline named exports:
	- Variable declarations:
	
	  ```
    export var foo;
    export let foo;
    export const foo;
	  ```
	
	- Function declarations:
	
  	```
    export function myFunc() {}
    export function* myGenFunc() {}
	  ```
	
	- Class declarations:
  ```export class MyClass() {}```
  
- Default export:
	- Function declarations (can be anonymous here):
	```
	export default function myFunc() {}
  export default function () {}
  export default function* myGenFunc() {}
  export default function* () {}
  ```
- Class declarations (can be anonymous here):

  ```
  export default class MyClass() {}
  export default class () {}
	```
	
- Expressions: export values. Note the semicolons at the end.
	
	```
  export default foo;
  export default 'Hello world!';
  export default 3 * 7;
  export default (function () {});
  ```

References:
- [exploringjs.com](http://exploringjs.com/es6/ch_modules.html)
- [practival workflows for es6 modules](http://guybedford.com/practical-workflows-for-es6-modules)
