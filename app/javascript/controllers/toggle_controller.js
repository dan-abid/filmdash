import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["appear1Element",
                    "play1Element",
                    "appear2Element",
                    "play2Element",
                    "appear3Element",
                    "play3Element",
                  ]

  connect() {
    console.log("HellO!");
  }

  button1 (event) {
    // event.target.classList.add("movie-card-dark")
    this.appear1ElementTarget.classList.remove("d-none");
    this.play1ElementTarget.classList.remove("d-none");
    this.play1ElementTarget.classList.remove("d-none");
    event.target.classList.remove("justify-content-center");
    event.target.classList.add("justify-content-between");
    // this.togglableElementTarget.classList.toggle("d-none");
  }

  button2 (event) {
    this.appear2ElementTarget.classList.remove("d-none");
    this.play2ElementTarget.classList.remove("d-none");
    this.play2ElementTarget.classList.remove("d-none");
    event.target.classList.remove("justify-content-center");
    event.target.classList.add("justify-content-between");
  }

  button3 (event) {
    this.appear3ElementTarget.classList.remove("d-none");
    this.play3ElementTarget.classList.remove("d-none");
    this.play3ElementTarget.classList.remove("d-none");
    event.target.classList.remove("justify-content-center");
    event.target.classList.add("justify-content-between");
  }

  refresh() {
    window.location.reload();
  }
}
