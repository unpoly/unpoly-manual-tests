console.log("!! before loading UJS")

// console.log("Initial state is %o", structuredClone(history.state))
//
// if (!history.state?.loadedAt) {
//   history.replaceState({ loadedAt: new Date() }, '')
// }
//
// console.log("[history.state] Page was initially loaded %o seconds ago", (new Date() - history.state?.loadedAt) * 0.001)

// document.addEventListener("DOMContentLoaded", function(event) {
//   console.log("[color] initial background color is %o", document.body.style.backgroundColor)
//   document.body.style.backgroundColor = 'red'
// })


// window.LOADED_AT ||= new Date()
//
// console.log("[GLOBAL] Page was initially loaded %o seconds ago", (new Date() - LOADED_AT) * 0.001)
//
// window.addEventListener('pageshow', myFunction);
//
// function myFunction(event) {
//   if (event.persisted) {
//     console.log("[event.persisted] The page was cached by the browser");
//   } else {
//     console.log("[event.persisted] The page was NOT cached by the browser");
//   }
// }
