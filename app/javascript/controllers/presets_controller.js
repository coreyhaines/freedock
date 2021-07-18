import { Controller } from "stimulus"


export default class extends Controller {
  static targets = [ "displayContainer", "filter", "link", "bookmarkableLink", "station" ];
  static values = { bikeshareProgramId : Number, presetStationIdList : Array };

  addToPreset(event) {
    const stationId = event.target.dataset.stationId
      ,presetList = this.presetStationIdListValue;
    presetList.push(stationId);
    this.presetStationIdListValue = [...new Set(presetList)].sort((a, b) => a - b);
  }

  presetStationIdListValueChanged() {
    if (this.presetStationIdListValue) {
      this.filterTarget.dataset.filteringPresetStationIdListValue = JSON.stringify(this.presetStationIdListValue);
    }
    if(this.presetStationIdListValue.length === 0) {
      this.displayContainerTarget.style.display = "none";
      return;
    }
    const preset = this.linkTarget
      ,bookmarkable = this.bookmarkableLinkTarget
      ,presetsAsString = this.presetStationIdListValue.join(",");
    preset.href = "/stations/_list?program_id=" + this.bikeshareProgramIdValue + "&ids=" + presetsAsString;
    bookmarkable.href = "/stations/_list?program_id=" + this.bikeshareProgramIdValue + "&ids=" + presetsAsString;
    this.displayContainerTarget.style.display = "block";
    this.stationTargets.forEach((element) => {
      if(this.presetStationIdListValue.includes(element.dataset.stationId)){
        element.style.display = "none";
      }else{
        element.style.display = "";
      }
    });
    preset.click();
  }

  clearList() {
    this.presetStationIdListValue = [];
  }
}
