import { Controller } from "stimulus"

export default class extends Controller {
    static targets = ["thumb"]

    like(e) {
        e.preventDefault()
            // this.thumbTarget.remove()
            // console.log('like!!');
    }
}