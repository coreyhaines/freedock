import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "query", "program" ]

  filter(event) {
    const query = this.queryTarget.value.toLowerCase();
    this.programTargets.forEach((element) => {
      if(element.dataset.programName.includes(query) ||
        element.dataset.programLocation.includes(query)) {
        element.style.display = "";
      }else{
        element.style.display = "none";
      }
    });
  }

}
