const showEditForm = () => {
  const cards = document.querySelectorAll(".task-card");

  cards.forEach((card) => {
    const editButton = card.querySelector(".fa-pen");
    const editCont = card.querySelector(".edit-form");
    const closeButton = card.querySelector(".fa-times")
    editButton.addEventListener("click", () => {
      editCont.classList.toggle("d-none");
    });
    closeButton.addEventListener("click", () => {
      editCont.classList.toggle("d-none");
    })
  });
};
global.showEditForm = showEditForm;
export { showEditForm };