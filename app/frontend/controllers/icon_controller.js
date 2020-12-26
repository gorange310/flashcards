import { Controller } from "stimulus"

export default class extends Controller {
    static targets = ["thumb"]

    like(e) {
        e.preventDefault()
        const cardId = this.data.get('carId')
            // this.thumbTarget.remove()
            // console.log('like!!');
    }
}