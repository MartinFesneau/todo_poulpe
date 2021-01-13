const changeStatus = () => {

  const taskCards = document.querySelectorAll(".task-card");

  taskCards.forEach((container) => {
    console.log(container)

    const check = container.querySelector(".fa-check-circle");
    const csrfToken = document.querySelector("[name='csrf-token']").content;

    check.addEventListener("click", () => {
      check.classList.toggle("done");

      fetch("/change_task_status", {
        method: "PATCH",
        headers: {
          "X-CSRF-Token": csrfToken, // Set the token
          "Content-Type": "application/json",
        },
        body: JSON.stringify({
          id: check.dataset.id,  // params with id of the task
        }),
      });
    })
  })
    
}


export { changeStatus };