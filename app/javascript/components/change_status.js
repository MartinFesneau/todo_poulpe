const changeStatus = () => {
  const taskCards = document.querySelectorAll(".task-card");

  taskCards.forEach((container) => {
    const check = container.querySelector(".fas");
    const csrfToken = document.querySelector("[name='csrf-token']").content;

    check.addEventListener("click", () => {
      // toggle green check
      check.classList.toggle("fa-check-circle");
      check.classList.toggle("done");
      // toggle red cross
      check.classList.toggle("fa-times-circle");
      check.classList.toggle("in-progress");

      fetch("/change_task_status", {
        method: "PATCH",
        headers: {
          "X-CSRF-Token": csrfToken, // Set the token
          "Content-Type": "application/json",
        },
        body: JSON.stringify({
          id: check.dataset.id, // params with id of the task
        }),
      });
    });
  });
};

export { changeStatus };
