document.addEventListener("DOMContentLoaded", function () {
  var filterTrigger = document.getElementById("filter-trigger");
  var filterDiv = document.getElementById("filter-div");
  var closeIcon = document.getElementById("close-icon");

  filterTrigger.addEventListener("click", function () {
    filterDiv.style.display = "block";
  });

  closeIcon.addEventListener("click", function () {
    filterDiv.style.display = "none";
  });
});
