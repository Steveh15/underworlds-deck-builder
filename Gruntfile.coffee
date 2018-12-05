module.exports = (grunt) ->
    grunt.initConfig
        coffee:
            compile:
                options:
                    bare: true
                    join: true
                    runtime: 'window'
                    sourceMap: true
                files:
                    'build/coffee-compiled.js': ['src/*.coffee']


        watch:
            files: ['**/*.coffee']
            tasks: ['coffee']


        uglify:
            my_target:
              files:
                'docs/js/yawb.min.js': ['build/coffee-compiled.js']


        pug:
            compile:
                expand: true
                cwd: 'pug/'
                src: ['**/*.pug']
                dest: 'docs/'
                ext: '.html'
                options:
                    pretty: true

    grunt.loadNpmTasks 'grunt-contrib-coffee'
    grunt.loadNpmTasks 'grunt-contrib-watch'
    grunt.loadNpmTasks 'grunt-contrib-uglify'
    grunt.loadNpmTasks 'grunt-contrib-pug'

    grunt.registerTask 'default', [
        'coffee'
        'uglify'
        'pug'
    ]


    grunt.registerTask 'build', [
        'coffee'
        

    ]


