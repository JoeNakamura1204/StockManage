<template>
  <div id="app">
    {{message}}
    {{my_account}}
  </div>
</template>

<script>
  import Web3 from 'web3';
  export default {
    data: function () {
      return {
        message: "Hello Vue!",
        my_account: ""
      }
    },
  }
  </script>
