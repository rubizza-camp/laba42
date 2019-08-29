$("#hook").ready(function() {
  const searchIcon = $("#search_icon");

  function toggleElementsExistens(addElem, removeElem) {
    addElem.addClass("search--disable");
    removeElem.removeClass("search--disable");
  }

  if (searchIcon) {
    const searchToggle = $("#search_toggle");
    const searchClose = $("#search_close");
    const query = $("#query");

    searchClose.on("click", function() {
      toggleElementsExistens(searchToggle, searchIcon);
    });

    searchIcon.on("click", function() {
      toggleElementsExistens(searchIcon, searchToggle);
      query.focus();
    });
  }
});
