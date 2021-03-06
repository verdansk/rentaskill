// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("select2")
require("jquery")
require("easy-autocomplete")

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";



// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
import { initMapbox } from '../plugins/init_mapbox';
import { placeholder } from 'packs/typed';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  initMapbox();
});

//reload on back
window.addEventListener( "pageshow", function ( event ) {
  var historyTraversal = event.persisted ||
                         ( typeof window.performance != "undefined" &&
                              window.performance.navigation.type === 2 );
  if ( historyTraversal ) {
    // Handle page restore.
    window.location.reload();
  }
});



const path = /^\/(?:|index\.aspx?)$/i.test(location.pathname)
if(path === true){
  document.querySelector("#nav-form").style.display = 'none';
}

document.querySelector(".navbar-brand").addEventListener("click", e => {
  window.location.assign("/");
});
// $(document).ready(function() {
//     $('.js-example-basic-single').select2();
// });

// $('#mainSelect').on('select2:select', (e) => {
//     var data = e.params.data;
//     console.log(data);
//     window.location.assign(`skills/search?search=${data.text}`);
// });
