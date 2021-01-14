const showHelp = () => {
  const helpCont = document.querySelector(".help-cont");
  const helpButton = document.querySelector("#help-link");

  helpButton.addEventListener("click", () => {
    helpCont.classList.toggle("d-none");
  });
};

export { showHelp };