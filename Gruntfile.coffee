module.exports = (grunt) ->

  # Project configuration.
  grunt.initConfig
    coffee:
      app:
        expand: true
        cwd: 'src'
        src: ['**/*.coffee']
        dest: 'lib'
        ext: '.js'
    watch:
      app:
        files: '**/*.coffee'
        tasks: ['coffee']
    release:
      options:
        npm: false
        github:
          repo: 'NixOS/npm2nix'
          usernameVar: 'GITHUB_USERNAME'
          passwordVar: 'GITHUB_PASSWORD'

  # These plugins provide necessary tasks.
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-release'

  # Default task.
  grunt.registerTask 'default', ['coffee']
