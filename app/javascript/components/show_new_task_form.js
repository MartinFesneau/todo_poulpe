const showNew = () => {
  const newButton = document.querySelector("#new-task-button");
  const newForm = document.querySelector("#new-task-form");
  const closeButton = document.querySelector("#new-task-form .fa-times");
  
  if (newButton) {
    newButton.addEventListener("click", () => {
      newForm.classList.toggle("d-none");
    });
    
    closeButton.addEventListener("click", () => {
      const errorMessage = document.querySelector(".error-message");
      newForm.classList.toggle("d-none");
      if (errorMessage) {
        // remove the error message when the form is closed
        errorMessage.remove();
      }
    });
  }
};

export { showNew };
