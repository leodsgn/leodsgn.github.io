path = require 'path'

root = path.resolve(__dirname, "../")

module.exports =

  root: root

  pug:
    src: path.resolve(root, "src/views")
    build: root

  coffee:
    src: path.resolve(root, "src/coffee")
    build: path.resolve(root, "dist/js")

  stylus:
    src: path.resolve(root, "src/style")
    build: path.resolve(root, "dist/style")


  image:
    src: path.resolve(root, "src/img")
    build: path.resolve(root, "dist/img")