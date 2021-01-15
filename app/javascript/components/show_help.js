const showHelp = () => {
  const helpCont = document.querySelector(".help-cont");
  const helpButton = document.querySelector("#help-link");
  const closeButton = document.querySelector(".help-cont .fa-times");

  if (helpButton) {
    helpButton.addEventListener("click", () => {
      helpCont.classList.toggle("d-none");
    });
    closeButton.addEventListener("click", () => {
      helpCont.classList.toggle("d-none");
    });
  }
};

export { showHelp };
