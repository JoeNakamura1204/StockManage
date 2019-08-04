/* eslint no-console: 0 */
// Run this example by adding <%= javascript_pack_tag 'hello_vue' %> (and
// <%= stylesheet_pack_tag 'hello_vue' %> if you have styles in your component)
// to the head of your layout file,
// like app/views/layouts/application.html.erb.
// All it does is render <div>Hello Vue</div> at the bottom of the page.

import Vue from 'vue/dist/vue.esm'
import Web3 from 'web3'

document.addEventListener('DOMContentLoaded', () => {
  new Vue({
    el:'#user_address',
    data:function(){
      return{
        my_account:"",
        current_provider:""
      }
    },
    mounted() {
      console.log("OKOK");
      let web3 = new Web3(Web3.givenProvider);

      console.log(web3.currentProvider);
      //check provider
        this.current_provider= web3.currentProvider.networkVersion;
        if(this.current_provider =="42"){
          document.getElementById('current_provider').innerText= "Kovan Testnet"
        }else if(this.current_provider=="3"){
          document.getElementById('current_provider').innerText= "Ropsten Testnet"
        }else{
          document.getElementById('current_provider').innerText= "Some network"
        }
      //get account
      web3.eth.getAccounts().then((account)=>{
        this.my_account = account;
        document.getElementById('user_address').innerText = this.my_account;
      });
    },
  })
});


// The above code uses Vue without the compiler, which means you cannot
// use Vue to target elements in your existing html templates. You would
// need to always use single file components.
// To be able to target elements in your existing html/erb templates,
// comment out the above code and uncomment the below
// Add <%= javascript_pack_tag 'hello_vue' %> to your layout
// Then add this markup to your html template:
//
// <div id='hello'>
//   {{message}}
//   <app></app>
// </div>


// import Vue from 'vue/dist/vue.esm'
// import App from '../app.vue'
//
// document.addEventListener('DOMContentLoaded', () => {
//   const app = new Vue({
//     el: '#hello',
//     data: {
//       message: "Can you say hello?"
//     },
//     components: { App }
//   })
// })
//
//
//
// If the project is using turbolinks, install 'vue-turbolinks':
//
// yarn add vue-turbolinks
//
// Then uncomment the code block below:
//
// import TurbolinksAdapter from 'vue-turbolinks'
// import Vue from 'vue/dist/vue.esm'
// import App from '../app.vue'
//
// Vue.use(TurbolinksAdapter)
//
// document.addEventListener('turbolinks:load', () => {
//   const app = new Vue({
//     el: '#hello',
//     data: () => {
//       return {
//         message: "Can you say hello?"
//       }
//     },
//     components: { App }
//   })
// })
