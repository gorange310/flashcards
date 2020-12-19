document.addEventListener('turbolinks:load' , () => {
  const btn = document.querySelector('.like_btn')
  if(btn){
    btn.addEventListener("click", (e) => {
      e.preventDefault()

      const token = document.querySelector('meta[name=csrf-token]').content

      const ax = require('axios');
      ax.defaults.headers.common['X-CSRF-TOKEN'] = token;

      ax.post('/cards/11/like')
      .then(function(resp){
        console.log('******')
        console.log(resp.data);
      })
      .catch(function(err){
        console.log('------')
        console.log(err)
      })
    })
  }
})
