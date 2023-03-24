import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="booking-form"
export default class extends Controller {
  connect() {
    console.log("hello from the booking_form controller")
  }
  static targets = ["arrivalDate", "departureDate", "totalPrice", "numberOfGuests"]

  calculateTotalPrice() {
    const arrivalDate = new Date(this.arrivalDateTarget.value)
    const departureDate = new Date(this.departureDateTarget.value)
    const pricePerNight = parseFloat(this.data.get("pricePerNight"))

    const numberOfNights = (departureDate - arrivalDate) / (1000 * 60 * 60 * 24)
    if (numberOfNights > 0) {
      const totalPrice = numberOfNights * pricePerNight
      this.totalPriceTarget.textContent = `Total price: ${totalPrice.toFixed(2)}`
    } else {
      this.totalPriceTarget.textContent = "Total price:"
    }
  }
}
