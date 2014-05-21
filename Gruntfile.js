module.exports = function(grunt) {


  // Project configuration.
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    
    //compile the sass

    sass: {
      dist: { 
        files: {
          'themes/bindings/css/app.css' : 'themes/bindings/scss/app.scss'
        },                  // Target
        options: {              // Target options
          style: 'compressed',
          sourcemap: 'true',
          loadPath: ['themes/bindings/bower_components/foundation/scss']
        }
      }
    },

    //concat all the files into the build folder

    concat: {
      js:{
        src: [
          'themes/bindings/bower_components/modernizr/modernizr.js',
          'themes/bindings/bower_components/foundation/js/foundation.min.js',
          'themes/bindings/javascript/*.js'
        ],
        dest: 'themes/bindings/build/src/main_concat.js'
      }
    },

    //minify those concated files
    //toggle mangle to leave variable names intact

    uglify: {
      my_target:{
        files:{
        'themes/bindings/build/build.js': ['themes/bindings/build/src/main_concat.js'],
        }
      }
    },

    watch: {
      scripts: {
        files: ['themes/bindings/javascript/*.js', 'themes/bindings/javascript/**/*.js'],
        tasks: ['concat', 'uglify'],
        options: {
          spawn: true,
        }
      },
      css: {
        files: ['themes/bindings/scss/*.scss', 
                'themes/bindings/scss/**/*.scss'
                ],
        tasks: ['sass'],
        options: {
          spawn: true,
        }
      }
    },

  });

  // Load the plugin that provides the "uglify" task.
  grunt.loadNpmTasks('grunt-contrib-concat');
  grunt.loadNpmTasks('grunt-contrib-uglify');
  grunt.loadNpmTasks('grunt-contrib-sass');
  grunt.loadNpmTasks('grunt-contrib-imagemin');
  grunt.loadNpmTasks('grunt-contrib-watch');
  //grunt.loadNpmTasks('grunt-simple-watch');

  // Default task(s).
  // Note: order of tasks is very important
  grunt.registerTask('default', ['sass', 'concat', 'uglify', 'watch']);

};