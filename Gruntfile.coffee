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
                    'docs/js/yawb.js': ['src/data/*.coffee','src/*.coffee']

        pug:
            compile:
                expand: true
                cwd: 'pug/'
                src: ['**/*.pug']
                dest: 'docs/'
                ext: '.html'
                options:
                    pretty: true


                
        uglify:
            my_target:
              files:
                'docs/js/yawb.min.js': ['build/coffee-compiled.js']


        watch:
            coffee:
                files: ['**/*.coffee']
                tasks: ['coffee']
            pug:
                files: ['**/*.pug']
                tasks: ['pug']

    grunt.loadNpmTasks 'grunt-contrib-coffee'
    grunt.loadNpmTasks 'grunt-contrib-watch'
    grunt.loadNpmTasks 'grunt-contrib-uglify'
    grunt.loadNpmTasks 'grunt-contrib-pug'

    grunt.registerTask 'default', [
        'build'
    ]


    grunt.registerTask 'build', [
        'coffee'
        'pug'
        'watch'
    ]


