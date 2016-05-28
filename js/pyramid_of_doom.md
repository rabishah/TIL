### Pyramid of Doom 

The pyramid of doom is a common problem that arises when a program uses many
levels of nested indentation to control access to a function.

[wiki](https://en.wikipedia.org/wiki/Pyramid_of_doom_\(programming\))

```
loadImage('martha-great-grandpa.jpg', imgContainger, function() {
  loadImage('martha-grand-father.jpg', imgContainger2, function() {
    loadImage('martha-father-vaction.jpg', imgContainger, function() {
      loadImage('martha-father-got-angry.jpg', imgContainger, function() {
        loadImage('martha-father-got-girl.jpg', imgContainger, function() {
          loadImage('martha-are-you-seriously-reading.jpg', imgContainger, function() {
            loadImage('martha-you-could-just-spend-time-in.jpg', imgContainger, function() {
              loadImage('service-workers-web-workers-mdn-wtf-omg-app.jpg', imgContainger, function() {
                /* rest is upto editor */
              });
            });
          });
        });
      });
    });
  });
})
```
