<template>
  <div id="app">
    <contract></contract>
  </div>
</template>

<script>
  import Contract from './packs/components/contract'
  export default {
    components: {Contract},
    comments:{
      Contract
    },
    data: function () {
      return {
        message: "Hello Vue!"
      }
    }
  }
  </script>
