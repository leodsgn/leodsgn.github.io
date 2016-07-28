gulp = require 'gulp'
browserSync = require 'browser-sync'

path = require '../../path'

gulp.task 'serve', ()->
  browserSync.init({
    files: [
      path.coffee.build + "/index.js",
      path.pug.build + "/index.html",
      path.stylus.build + "/index.css"
      path.image.build + "/**"
    ],
    server: {
      baseDir: "./"
    }
  })