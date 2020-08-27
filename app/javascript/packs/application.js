// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start();
require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");
require("chartkick");
require("chart.js");

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
const newVariant = () => {
  const variantForm = document.getElementById("variant_form");
  variantForm.style.width = "250px";
};

function deleteVariant() {
  document.getElementById("variant_form").style.width = "0";
}

$(document).ready(() => {
  const AddVariant = document.getElementById("new_variant_btn");
  AddVariant.addEventListener("click", () => {
    newVariant();
    console.log("yo");
  });

  const closeVariant = document.getElementById("delete_variant_btn");
  closeVariant.addEventListener("click", () => {
    deleteVariant();
  });
});
