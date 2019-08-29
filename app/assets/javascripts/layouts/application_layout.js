document.addEventListener("turbolinks:load", function(){
  $(document.body).ready(function() {
    const searchIcon = $("#search_icon");

    if (searchIcon) {
      const searchToggle = $("#search_toggle");
      const searchClose = $("#search_close");
      const query = $("#query");

      function flip(clickElem, addElem, removeElem, ...args) {
        clickElem.on("click", function() {
          addElem.addClass("search--disable");
          removeElem.removeClass("search--disable");
          args[0].focus();
        });
      }

      flip(searchClose, searchToggle, searchIcon);
      flip(searchIcon, searchIcon, searchToggle, query);
    }
  });
});
