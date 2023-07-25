// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

//= require jquery3
//= require popper
//= require bootstrap-sprockets

import "jquery"; // this import first

// NOTE: don't use relative imports: `import "./script"`
//       add `pin "script"` to `importmap.rb`

console.log($); // ok

$('#import-movie').click(function(){
    $("#import-movies-form").toggleClass('d-none')
  });
  $('#import-review').click(function(){
    $("#import-reviews-form").toggleClass('d-none')
  });
