# pixelBitmap [![NPM version][npm-image]][npm] [![Build Status][travis-image]][travis] [![Coverage Status][coveralls-image]][coveralls]

[![Sauce Test Status][sauce-image]][sauce]

> Parse Bitmap to ImageData in cross-platform.

## Installation
```bash
$ npm install pixel-bmp --save
```
```js
var pixelBitmap= require('pixel-bmp');
console.log(pixelBitmap); //object
```

# API

## pixelBitmap.parse(`file`) -> promise.then(`images`)

return `images` is Array contains one or more `ImageData`.
> Return the `object` instead of `ImageData` in Node.js

```js
var file= 'https://59naga.github.io/fixtures/still.BMP';

pixelBitmap.parse(file).then(function(images){
  console.log(images[0]);
});
// {width: 128, height: 128, data: <Uint8Array ..>}
```

# Unsupport
* __32bit bitmap__

# Related projects
* [pixel-util](https://github.com/59naga/pixel-util/)
* [pixel-gif](https://github.com/59naga/pixel-gif-/)
* [pixel-png](https://github.com/59naga/pixel-png/)
* [pixel-jpg](https://github.com/59naga/pixel-jpg/)
* __pixel-bmp__
* [pixel](https://github.com/59naga/pixel/)
* [pixel-to-ansi](https://github.com/59naga/pixel-to-ansi/)
* [pixel-to-svg](https://github.com/59naga/pixel-to-svg/)

License
---
[MIT][License]

[License]: http://59naga.mit-license.org/

[sauce-image]: http://soysauce.berabou.me/u/59798/pixel-bmp.svg?large
[sauce]: https://saucelabs.com/u/59798
[npm-image]:https://img.shields.io/npm/v/pixel-bmp.svg?style=flat-square
[npm]: https://npmjs.org/package/pixel-bmp
[travis-image]: http://img.shields.io/travis/59naga/pixel-bmp.svg?style=flat-square
[travis]: https://travis-ci.org/59naga/pixel-bmp
[coveralls-image]: http://img.shields.io/coveralls/59naga/pixel-bmp.svg?style=flat-square
[coveralls]: https://coveralls.io/r/59naga/pixel-bmp?branch=master