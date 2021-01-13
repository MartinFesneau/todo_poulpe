const changeStatus = () => {

  const taskCards = document.querySelectorAll(".task-card")
  console.log(taskCards)
  taskCards.forEach((card) => {

    const check = card.querySelector(".fa-check-circle");
    check.addEventListener("click", () => {
      check.classList.toggle("done")
    })
    const csrfToken = document.querySelector("[name='csrf-token']").content;
    fetch("/change_task_status", {
      method: "PATCH",
      headers: {
        "X-CSRF-Token": csrfToken, // Set the token
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        id: evt.item.dataset.id,  // params with id of the task
      }),
    })
  })
}


export { changeStatus };