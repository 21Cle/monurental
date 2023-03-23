import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="booking"
export default class extends Controller {
  static targets = ["start", "end", "price"]


  static values = {
    price: Number
  }

  connect() {
    console.log("hello from booking controller")
  }

  calculatePrice() {
    const pricePerNight = this.priceValue
    const arrivalDate = new Date(this.startTarget.value)
    const departureDate = new Date(this.endTarget.value)

    const timeDifference = departureDate.getTime() - arrivalDate.getTime()
    const numberOfDays = timeDifference / (1000*3600*24)

    const totalPrice = (pricePerNight * numberOfDays).toLocaleString('en-US')
    this.priceTarget.innerHTML = `<p> <strong> Total Price: </strong> £${totalPrice} </p>`
  }
}
