import { Controller } from "stimulus"


export default class extends Controller {
  static targets = [ "customPreset" ];
  static values = { presetStationIdList : Array };

  add_to_preset(event) {
    const stationId = event.target.dataset.stationId
      ,presetList = this.presetStationIdListValue;
    presetList.push(stationId);
    this.presetStationIdListValue = [...new Set(presetList)].sort((a, b) => a - b);
  }

  presetStationIdListValueChanged() {
    if(this.presetStationIdListValue.length === 0) {
      return;
    }
    const preset = this.customPresetTarget
      ,presetsAsString = this.presetStationIdListValue.join(",");
    preset.href = "/stations/_list?ids=" + presetsAsString;
    preset.innerText = "custom preset (" + presetsAsString + ")";
  }
}
