<template>
  <div id="app">
    <p>{{ message }}</p>
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

  <style scoped>
  p {
    font-size: 2em;
    text-align: center;
  }
</style>
