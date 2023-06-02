import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js";

export default class extends Controller {

  connect() {
    const options = {
      strings: ["skill all over"],
      typeSpeed: 40
    };
    new Typed(this.element, options)
  }
}
