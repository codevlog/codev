<template>
  <div id="app">
    <router-view/>
    <Footer></Footer>
  </div>
</template>

<script>
import Footer from "./views/Footer";

export default {
  name: 'App',
  components: {
    Footer
  }
}
</script>

<style lang="scss">
*{
  margin: 0;
  padding: 0;
}
</style>
