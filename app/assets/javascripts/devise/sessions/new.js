$(".sessions.new").ready(function() {
  function toggleElementsExistens(addElem, removeElem) {
    addElem.addClass("search--disable");
    removeElem.removeClass("search--disable");
  }

  const eyeClosed = $("#eye_closed_pass");
  const eyeOpened = $("#eye_open_pass");
  const pass = $("#pass");

  eyeClosed.on("click", function() {
    toggleElementsExistens(eyeClosed, eyeOpened);
    pass.attr("type","text");
  });

  eyeOpened.on("click", function() {
    toggleElementsExistens(eyeOpened, eyeClosed);
    pass.attr("type","password");
  });
});
