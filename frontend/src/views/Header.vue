<template>
  <div class="header">
    <div class="header-contents">
      <router-link to="/" class="title-content left">
        <div style="height:20px; display:block"></div>
        CODEV
      </router-link>
      <router-link to="" class="menu-content right">
        <div style="height:23px; display:block"></div>
        Login
      </router-link>
      <router-link to="" class="menu-content right">
        <div style="height:23px; display:block"></div>
        Post
      </router-link>
      <router-link to="" class="menu-content right">
        <div style="height:23px; display:block"></div>
        Portfolio
      </router-link>
      <router-link to="" class="menu-content right">
        <div style="height:23px; display:block"></div>
        About Us
      </router-link>
    </div>
  </div>
</template>

<script>
export default {
  name: 'header',
  props: {
    propName: {
      type: String,
      default: ''
    }
  },
  components: { },
  data () { return { } },
  computed: { },
  created () { },
  mounted () { },
  methods: { },
}
</script>

<style lang="scss" scoped>
  .header{
    left:0;
    top:0;
    width:100%;
    height:80px;
    background-color:#262626;
  }
  .header-contents{
    max-width: 100%;
    margin: 0 auto;
    padding: 0 20px;
    height: 80px;
    text-align: left;
    font-size:30px;
  }
  .title{
    height: 100%;

  }
  .title-content{
    text-decoration:none;
    color: white;
  }
  .left{
    display: inline-block;
    float: left;
    height: 100%;
    vertical-align: center;

  }
  .right{
    display:inline-block;
    float:right;
    height: 100%;
  }
  .menu-content{
    padding: 0 10px 0 10px;
    text-decoration:none;
    color: white;
    font-size:20px;
    transition: background 0.8s;
  }
  .menu-content:hover{
    transform: scale(1.01);
    box-shadow: 0 6px 4px darkgray;
    background: gray radial-gradient(circle, transparent 1%, gray 1%) center/15000%;
  }
  .menu-content:active{
    background-color: lightgray;
    background-size: 100%;
    transition: background 0s;
  }
 
</style>