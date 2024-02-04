const video = document.getElementById("myVideo");
const toggleButton = document.getElementById("toggleButton");

var scrollableDiv = document.getElementById("drop-sub-menu");
scrollableDiv.scrollTop = scrollableDiv.scrollHeight;

// Add a click event listener to the button
toggleButton.addEventListener("click", function () {
  // Check if the video is paused
  if (video.paused) {
    // If paused, play the video
    video.play();
    toggleButton.src = "./icons/pause.png";
  } else {
    // If playing, pause the video
    video.pause();
    toggleButton.src = "./icons/play.png";
  }
});
//blur-lg
const bluredElements = document.getElementsByClassName("blur-element");
// console.log(bluredElements);

function handleMouseOverFunctions(menuType, arrowType) {
  showdropdown(menuType);
  // toggleArrow(arrowType);
}

function toggleArrow(idname) {
  const arrow = document.getElementById(idname);
  if (arrow.classList.contains("fa-angle-down")) {
    arrow.classList.remove("fa-angle-down");
    arrow.classList.add("fa-angle-right");
  } else if (arrow.classList.contains("fa-angle-right")) {
    arrow.classList.remove("fa-angle-right");
    arrow.classList.add("fa-angle-down");
  }
}
const arrow = document.getElementById("arrow1");
const arrow2 = document.getElementById("arrow2");

function showdropdown(menuType) {
  document.getElementById("drop-menu").style.display = "block";

  const dropdownMenu = document.getElementById(menuType);

  arrow.classList.remove("fa-angle-down");
  arrow.classList.add("fa-angle-right");

  arrow2.classList.remove("fa-angle-right");
  arrow2.classList.add("fa-angle-down");

  if (menuType == "drop-sub-menu") {
    arrow2.classList.remove("fa-angle-down");
    arrow2.classList.add("fa-angle-right");
  }

  [...bluredElements].forEach((element) => {
    element.classList.add("blur-lg");
  });
  console.log(menuType);
  dropdownMenu.style.display = "block";
}

function hidedropdown(menuType) {
  document.getElementById("drop-menu").style.display = "none";

  const dropdownMenu = document.getElementById(menuType);
  arrow.classList.remove("fa-angle-right");
  arrow.classList.add("fa-angle-down");
  dropdownMenu.style.display = "none";
  [...bluredElements].forEach((element) => {
    element.classList.remove("blur-lg");
  });
}
