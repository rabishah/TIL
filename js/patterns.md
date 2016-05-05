##JS Design Pattern 

### IFFE (pronounced "iffy") 

Immediatey-Invoked Function Expression - wrap annonymous function in parenthesis and call it 
right away

e.g.
```
elm.addEventListener('click', (function(num) {
  return function(num) {
    console.log(num);
  }
})(num));
```
