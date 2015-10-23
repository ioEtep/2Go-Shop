(function($) {

  $.fn.menumaker = function(options) {

      var menubar = $(this), settings = $.extend({
        title: "Menu",
        format: "dropdown",
        breakpoint: 768,
        sticky: false
      }, options);

      return this.each(function() {
        menubar.find('li ul').parent().addClass('has-sub');
        if (settings.format != 'select') {
          menubar.prepend('<div id="menu-button">' + settings.title + '</div>');
          $(this).find("#menu-button").on('click', function(){
            $(this).toggleClass('menu-opened');
            var mainmenu = $(this).next('ul');
            if (mainmenu.hasClass('open')) {
              mainmenu.hide().removeClass('open');
            }
            else {
              mainmenu.show().addClass('open');
              if (settings.format === "dropdown") {
                mainmenu.find('ul').show();
              }
            }
          });

          multiTg = function() {
            menubar.find(".has-sub").prepend('<span class="submenu-button"></span>');
            menubar.find('.submenu-button').on('click', function() {
              $(this).toggleClass('submenu-opened');
              if ($(this).siblings('ul').hasClass('open')) {
                $(this).siblings('ul').removeClass('open').hide();
              }
              else {
                $(this).siblings('ul').addClass('open').show();
              }
            });
          };

          if (settings.format === 'multitoggle') multiTg();
          else menubar.addClass('dropdown');
        }

        else if (settings.format === 'select')
        {
          menubar.append('<select style="width: 100%"/>').addClass('select-list');
          var selectList = menubar.find('select');
          selectList.append('<option>' + settings.title + '</option>', {
                                                         "selected": "selected",
                                                         "value": ""});
          menubar.find('a').each(function() {
            var element = $(this), indentation = "";
            for (i = 1; i < element.parents('ul').length; i++)
            {
              indentation += '-';
            }
            selectList.append('<option value="' + $(this).attr('href') + '">' + indentation + element.text() + '</option');
          });
          selectList.on('change', function() {
            window.location = $(this).find("option:selected").val();
          });
        }

        if (settings.sticky === true) menubar.css('position', 'fixed');

        resizeFix = function() {
          if ($(window).width() > settings.breakpoint) {
            menubar.find('ul').show();
            menubar.removeClass('small-screen');
            if (settings.format === 'select') {
              menubar.find('select').hide();
            }
            else {
              menubar.find("#menu-button").removeClass("menu-opened");
            }
          }

          if ($(window).width() <= settings.breakpoint && !menubar.hasClass("small-screen")) {
            menubar.find('ul').hide().removeClass('open');
            menubar.addClass('small-screen');
            if (settings.format === 'select') {
              menubar.find('select').show();
            }
          }
        };
        resizeFix();
        return $(window).on('resize', resizeFix);

      });
  };
})(jQuery);

(function($){
$(document).ready(function(){

$(window).load(function() {
  $("#menubar").menumaker({
    title: "Menu",
    format: "dropdown"
  });


$('#menubar').prepend("<div id='menu-indicator'></div>");

var foundActive = false, activeElement, indicatorPosition, indicator = $('#menubar #menu-indicator'), defaultPosition;

$("#menubar > ul > li").each(function() {
  if ($(this).hasClass('active')) {
    activeElement = $(this);
    foundActive = true;
  }
});

if (foundActive === false) {
  activeElement = $("#menubar > ul > li").first();
}

defaultPosition = indicatorPosition = activeElement.position().left + activeElement.width()/2 - 5;
console.log(activeElement);
console.log(activeElement.position().left);
console.log(activeElement.width());
indicator.css("left", indicatorPosition);

$("#menubar > ul > li").hover(function() {
  activeElement = $(this);
  indicatorPosition = activeElement.position().left + activeElement.width()/2 - 5;
  indicator.css("left", indicatorPosition);
},
function() {
  indicator.css("left", defaultPosition);
});

});

});
})(jQuery);
