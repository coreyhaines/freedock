import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "query", "station" ]

  filter(event) {
    const query = this.queryTarget.value.toLowerCase();
    this.stationTargets.forEach((element) => {
      if(element.dataset.stationName.includes(query)){
        element.style.display = "";
      }else{
        element.style.display = "none";
      }
    });
  }
}
