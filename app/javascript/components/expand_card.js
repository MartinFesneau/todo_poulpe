const expandCard = () => {
  const taskCards = document.querySelectorAll(".task-card");
  
  taskCards.forEach((card) => {
    const arrowDown = card.querySelector(".fa-sort-down");
    const commentCont = card.querySelector(".comments-cont");
    
    arrowDown.addEventListener("click", () => {
      commentCont.classList.toggle("d-none");
      arrowDown.classList.toggle("rotate");

      // remove error message when form is closed
      const errorMessage = document.querySelector(".error-message");
      const comments = document.querySelector(".comments")
      if (errorMessage) {
        errorMessage.remove();
      }
      // remove error message when a comment is submited
      comments.addEventListener('DOMNodeInserted', () => {
        const errorMessage = document.querySelector(".error-message");
        if (errorMessage) {
          errorMessage.remove();
        }
      })
    });
  });
};
global.expandCard = expandCard;
export { expandCard };