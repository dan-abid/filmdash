import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["movedElement", "appearElement", "divElement"]

  connect() {
    console.log("HellO!");
  }

  fire () {
    this.appearElementTarget.classList.remove("d-none");
    this.movedElementTarget.classList.remove("justify-content-center")
    this.movedElementTarget.classList.add("justify-content-between")
    // this.togglableElementTarget.classList.toggle("d-none");

  }
}
