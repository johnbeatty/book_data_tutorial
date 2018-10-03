import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "books" ]

  change(event) {
    fetch(this.data.get("url"), { 
      method: 'POST', 
      body: JSON.stringify( { categories: [...event.target.selectedOptions].map(option => option.value)}),
      credentials: "include",
      dataType: 'script',
      headers: {
        "X-CSRF-Token": getMetaValue("csrf-token"),
        "Content-Type": "application/json"
      },
    })
      .then(response => response.text())
      .then(html => {
        this.booksTarget.innerHTML = html
      })
  }
}

function getMetaValue(name) {
  const element = document.head.querySelector(`meta[name="${name}"]`)
  return element.getAttribute("content")
}