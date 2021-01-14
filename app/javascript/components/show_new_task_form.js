const showNew = () => {
  const newButton = document.querySelector("#new-task-button");
  const newForm = document.querySelector("#new-task-form");
  const closeButton = document.querySelector("#new-task-form .fa-times")

  if (newButton) {
    newButton.addEventListener("click", () => {
      newForm.classList.toggle("d-none");
    });

    closeButton.addEventListener("click", () => {
      newForm.classList.toggle("d-none");
    });
  }
};

export { showNew };
