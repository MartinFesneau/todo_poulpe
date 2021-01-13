const showNew = () => {
  const newButton = document.querySelector("#new-task-button");
  const newForm = document.querySelector("#new-task-form");

  if (newButton) {
    newButton.addEventListener("click", () => {
      newForm.classList.toggle("d-none");
    });
  }
};

export { showNew };
