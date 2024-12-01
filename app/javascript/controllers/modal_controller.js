import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["frame"];

  closeBackdrop(event) {
    if (event.target === this.element) {
      this.frameTarget.innerHTML = "";
    }
  }

  closeButton() {
    this.frameTarget.innerHTML = "";
  }
}
