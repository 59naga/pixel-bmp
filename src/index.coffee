# Dependencies
PixelUtil= (require 'pixel-util').PixelUtil
bitmapJs= require 'bmp-js'

class pixelBitmap extends PixelUtil
  parse: (file)->
    @createBuffer file
    .then (buffer)=>
      bitmap= bitmapJs.decode buffer

      image= @createImageData bitmap.width,bitmap.height
      image.data.set bitmap.data

      [image]

module.exports= new pixelBitmap
module.exports.pixelBitmap= pixelBitmap