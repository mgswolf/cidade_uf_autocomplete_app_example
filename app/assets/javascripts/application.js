// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require_tree .

$(function() {
  $( "#user_cidade_nome" ).autocomplete({
    source: '/users/list_cidades.json',
   	minLength: 3,
		select: function(event, ui) {
      //adiciona o id da cidade a variavel v
      var v = ui.item.id;
      //subistitui o valor do campo hidden pela id da cidade
      $('#user_cidade_id').attr('value', v);
      //muda o valor do campo text field do autocomplete
      this.value = ui.item.label;
      return false;
		}
	});
});
