const showCommentForm = () => {
  const taskCards = document.querySelectorAll(".task-card")

  taskCards.forEach((container) => {
    const commentBtn = container.querySelector(".fa-comment-alt");
    const commentCont = container.querySelector(".comments-cont");

    commentBtn.addEventListener("click", () => {
      commentCont.classList.toggle("d-none");
    })
  })
}

export { showCommentForm };