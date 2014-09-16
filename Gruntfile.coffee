module.exports = (grunt) ->

  grunt.initConfig(
    pkg     : grunt.file.readJSON('package.json'),

    coffee:
      app:
        expand: true
        cwd: 'src/coffee'
        src: ['**/*.coffee']
        dest: 'bin'
        ext: '.js'

    watch:
      app:
        files: ['**/*.coffee']
        tasks: ['coffee']
  )

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.registerTask('default', ['coffee']);