import { Controller } from "stimulus"


export default class extends Controller {
  static targets = [ "displayContainer", "link", "bookmarkableLink" ];
  static values = { presetStationIdList : Array };

  addToPreset(event) {
    const stationId = event.target.dataset.stationId
      ,presetList = this.presetStationIdListValue;
    presetList.push(stationId);
    this.presetStationIdListValue = [...new Set(presetList)].sort((a, b) => a - b);
  }

  presetStationIdListValueChanged() {
    if(this.presetStationIdListValue.length === 0) {
      this.displayContainerTarget.style.display = "none";
      return;
    }
    const preset = this.linkTarget
      ,bookmarkable = this.bookmarkableLinkTarget
      ,presetsAsString = this.presetStationIdListValue.join(",");
    preset.href = "/stations/_list?ids=" + presetsAsString;
    bookmarkable.href = "/stations/_list?ids=" + presetsAsString;
    this.displayContainerTarget.style.display = "block";
    preset.click();
  }

  clearList() {
    this.presetStationIdListValue = [];
  }
}
