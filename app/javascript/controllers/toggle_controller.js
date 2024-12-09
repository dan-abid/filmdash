import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["appear1Element",
                    "play1Element",
                    "appear2Element",
                    "play2Element",
                    "appear3Element",
                    "play3Element",
                    "container1Element",
                    "container2Element",
                    "container3Element"
                  ]

  connect() {
    console.log("Hello");

  }

  button1 () {
    // event.target.classList.add("movie-card-dark")
    this.appear1ElementTarget.classList.remove("d-none");
    this.play1ElementTarget.classList.remove("d-none");
    this.container1ElementTarget.classList.remove("justify-content-center");
    this.container1ElementTarget.classList.add("justify-content-between");
    // this.togglableElementTarget.classList.toggle("d-none");
  }

  button2 () {
    this.appear2ElementTarget.classList.remove("d-none");
    this.play2ElementTarget.classList.remove("d-none");
    this.container2ElementTarget.classList.remove("justify-content-center");
    this.container2ElementTarget.classList.add("justify-content-between");
  }

  button3 () {
    this.appear3ElementTarget.classList.remove("d-none");
    this.play3ElementTarget.classList.remove("d-none");
    this.container3ElementTarget.classList.remove("justify-content-center");
    this.container3Element.classList.add("justify-content-between");
  }

  refresh() {
    window.location.reload();
  }
}
