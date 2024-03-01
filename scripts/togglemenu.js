const video = document.getElementById("myVideo");
const toggleButton = document.getElementById("toggleButton");

// var scrollableDiv = document.getElementById("drop-sub-menu");
// scrollableDiv.scrollTop = scrollableDiv.scrollHeight;

var resmenu = document.getElementById("mobile-menu-2");

// Get references to the icons
var openMenuIcon = document.getElementById("open-menu");
var closeMenuIcon = document.getElementById("close-menu");

// Add click event listeners to each icon
// openMenuIcon.addEventListener("click", function () {
//
// });

// closeMenuIcon.addEventListener("click", function () {
//   closeMenuIcon.classList.add("!hidden"); // Hide close-menu icon
//   openMenuIcon.classList.remove("!hidden"); // Show open-menu icon
// });

resmenu.classList.add("hidden");

openMenuIcon.addEventListener("click", function () {
  navOpenClose();
});

closeMenuIcon.addEventListener("click", function () {
  navOpenClose();
});

function navOpenClose() {
  resmenu.classList.toggle("hidden");
  if (resmenu.classList.contains("hidden")) {
    console.log("contains");
    closeMenuIcon.classList.add("!hidden"); // Hide close-menu icon
    openMenuIcon.classList.remove("!hidden"); // Show open-menu
  } else {
    console.log("does not");
    openMenuIcon.classList.add("!hidden"); // Hide open-menu icon
    closeMenuIcon.classList.remove("!hidden"); // Show close-menu icon
  }
}
//blur-lg
// const bluredElements = document.getElementsByClassName("blur-element");
// console.log(bluredElements);

// function handleMouseOverFunctions(menuType, arrowType) {
//   showdropdown(menuType);
//   // toggleArrow(arrowType);
// }

// Add a click event listener to the button
toggleButton.addEventListener("click", function () {
  console.log("click");
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

// function toggleArrow(idname) {
//   const arrow = document.getElementById(idname);
//   if (arrow.classList.contains("fa-angle-down")) {
//     arrow.classList.remove("fa-angle-down");
//     arrow.classList.add("fa-angle-right");
//   } else if (arrow.classList.contains("fa-angle-right")) {
//     arrow.classList.remove("fa-angle-right");
//     arrow.classList.add("fa-angle-down");
//   }
// }
// const arrow = document.getElementById("arrow1");
// const arrow2 = document.getElementById("arrow2");

// function showdropdown(menuType) {
//   document.getElementById("drop-menu").style.display = "block";

//   const dropdownMenu = document.getElementById(menuType);

//   arrow.classList.remove("fa-angle-down");
//   arrow.classList.add("fa-angle-right");

//   arrow2.classList.remove("fa-angle-right");
//   arrow2.classList.add("fa-angle-down");

//   if (menuType == "drop-sub-menu") {
//     arrow2.classList.remove("fa-angle-down");
//     arrow2.classList.add("fa-angle-right");
//   }

//   [...bluredElements].forEach((element) => {
//     element.classList.add("blur-lg");
//   });
//   console.log(menuType);
//   dropdownMenu.style.display = "block";
// }

// function hidedropdown(menuType) {
//   document.getElementById("drop-menu").style.display = "none";

//   const dropdownMenu = document.getElementById(menuType);
//   arrow.classList.remove("fa-angle-right");
//   arrow.classList.add("fa-angle-down");
//   dropdownMenu.style.display = "none";
//   [...bluredElements].forEach((element) => {
//     element.classList.remove("blur-lg");
//   });
// }
