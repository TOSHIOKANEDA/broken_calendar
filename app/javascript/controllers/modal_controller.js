import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.element.addEventListener('click', (event) => {
      if (event.target === this.element) {
        this.close();
      }
    });
  }

  close() {
    this.element.remove();
    const frame = document.getElementById('modal');
    if (frame) {
      frame.removeAttribute("src");
      frame.innerHTML = ""; // フレームの中身を空にする
    }
  }
}