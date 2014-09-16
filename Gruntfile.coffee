module.exports = (grunt) ->

  grunt.initConfig(
    pkg     : grunt.file.readJSON('package.json'),

    coffee:
      app:
        expand: true
        cwd: 'src/coffee'
        src: ['**/*.coffee']
        dest: 'src/js'
        ext: '.js'
      test:
        expand: true
        cwd: 'src/coffee/test'
        src: ['**/*.coffee']
        dest: 'src/js/test'
        ext: '.spec.js'

    watch:
      app:
        files: ['**/*.coffee', '**/*.scss']
        tasks: ['coffee', 'sass']
  )

  # Load the plugin that provides the "uglify" task.
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  # Default task(s).
  grunt.registerTask('default', ['coffee']);