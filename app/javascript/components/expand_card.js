const expandCard = () => {
  const taskCards = document.querySelectorAll(".task-card");

  taskCards.forEach((card) => {
    const arrowDown = card.querySelector(".fa-sort-down");
    const commentCont = card.querySelector(".comments-cont");

    arrowDown.addEventListener("click", () => {
      commentCont.classList.toggle("d-none");
      arrowDown.classList.toggle("rotate")
    });
  });
};

export { expandCard };