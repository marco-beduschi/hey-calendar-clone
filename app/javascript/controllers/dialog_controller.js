import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dialog"
export default class extends Controller {
  static values = {
    dialogId: String
  }

  connect() {
  }

  open() {
    document.getElementById(this.dialogIdValue).showModal();
  }
}
