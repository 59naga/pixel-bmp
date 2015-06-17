# Dependencies
PixelUtil= (require 'pixel-util').PixelUtil
bitmapJs= require 'bmp-js'

class PixelBitmap extends PixelUtil
  parse: (file)->
    @createBuffer file
    .then (buffer)=>
      bitmap= bitmapJs.decode buffer

      image= @createImageData bitmap.width,bitmap.height
      @set image,bitmap

      [image]

module.exports= new PixelBitmap
module.exports.PixelBitmap= PixelBitmap