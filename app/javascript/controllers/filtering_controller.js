import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "query", "station" ];
  static values = { presetStationIdList : Array };

  filter(event) {
    const query = this.queryTarget.value.toLowerCase();
    this.stationTargets.forEach((element) => {
      if(this.presetStationIdListValue.includes(element.dataset.stationId)){
        element.style.display = "none";
      }else if(element.dataset.stationName.includes(query)){
        element.style.display = "";
      }else{
        element.style.display = "none";
      }
    });
  }

  presetStationIdListValueChanged() {
    this.filter();
  }
}
