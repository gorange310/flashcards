document.addEventListener('turbolinks:load' , () => {
  const btn = document.querySelector('.like_btn')
  if(btn){
    btn.addEventListener("click", (e) => {
      e.preventDefault()

      //API
      console.log('like');
    })
  }
})
