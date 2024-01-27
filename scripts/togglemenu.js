const video = document.getElementById("myVideo");
const toggleButton = document.getElementById("toggleButton");

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
