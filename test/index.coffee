# Dependencies
pixelBitmap= require '../src'
fixture= (require 'fixture-images').still.bmp

# Specs
describe 'pixelBitmap',->
  it '.parse', (done)->
    pixelBitmap.parse fixture
    .then (images)->
      image= images[0]

      expect(image.width).toBe 128
      expect(image.height).toBe 128
      expect(image.data?.length).toBe image.width*image.height*4

      done()