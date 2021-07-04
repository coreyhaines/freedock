import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "expandableItem" ];
  static values = { expanded : Boolean };

  connect() {
    this.expandedValue = false;
  }

  toggle() {
    this.expandedValue = !this.expandedValue;
  }

  expandedValueChanged() {
    if(this.expandedValue) {
      this.expandableItemTarget.classList.remove("is-hidden");
    }else{
      this.expandableItemTarget.classList.add("is-hidden");
    }
  }
}
