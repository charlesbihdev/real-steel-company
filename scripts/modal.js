document.addEventListener("DOMContentLoaded", function () {
  const modal = document.getElementById("authentication-modal");
  const modalToggleButton = document.querySelector(
    "[data-modal-toggle='authentication-modal']"
  );
  const modalCloseButton = document.querySelector(
    "[data-modal-hide='authentication-modal']"
  );

  // Function to show the modal
  const showModal = () => {
    modal.classList.remove("hidden");
    modal.setAttribute("aria-hidden", "false");
    modal.setAttribute("tabindex", "0");
  };

  // Function to hide the modal
  const hideModal = () => {
    modal.classList.add("hidden");
    modal.setAttribute("aria-hidden", "true");
    modal.setAttribute("tabindex", "-1");
  };

  // Event listener for modal toggle button
  modalToggleButton.addEventListener("click", function () {
    showModal();
  });

  // Event listener for modal close button
  modalCloseButton.addEventListener("click", function () {
    hideModal();
  });

  // Close the modal when clicking outside of it
  window.addEventListener("click", function (event) {
    if (event.target === modal) {
      hideModal();
    }
  });

  // Close the modal when pressing the Esc key
  window.addEventListener("keydown", function (event) {
    if (event.key === "Escape") {
      hideModal();
    }
  });
});
