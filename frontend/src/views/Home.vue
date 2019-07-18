<template>
  <!-- header -->
  <div>
    <div class="header-wrapper">
      <div class="header-contents">
        <!-- 타이틀 -->
        <router-link to="/" class="title"><p>CodeV</p></router-link>

        <!-- 상단 메뉴 && 모바일 메뉴 -->
        <div class="nav-bar">
          <ul>
            <li>
              <a class="a-nav-bar" v-on:click="goPage(0)">About Us</a>
            </li>
            <li>
              <a class="a-nav-bar" v-on:click="goPage(1)">PortFolio</a>
            </li>
            <li>
              <a class="a-nav-bar"  v-on:click="goPage(2)">Post</a>
            </li>
            <li>
              <a class="a-nav-bar" onClick="">Login</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <!-- webView -->
    <div class="section">
      <div class="backgroundgif">
        <div style="width:100%; padding-top:80px">
          <h1>더 나은 portfolio</h1>
        </div>
      </div>
    </div>
    <div class="section" style="background:gray">
      <div style="width:100%; padding-top:80px"></div>
      <div style="margin:0 auto; height:40vh; background:white"></div>
      <div>
        <!-- portfolio page -->
        <!-- 카드 만들어지면 쓰기 -->
      </div>
    </div>
    <div class="section" style="background:blue">
      <div style="width:100%; padding-top:80px">
        <h1>post</h1>
      </div>
    </div>
  </div>
</template>

<script>
// @ is an alias to /src

export default {
  name: 'home',
  props: {
    propName: {
      type: String,
      default: ''
    }
  },
  components: { },
  data () { 
    return {
      lastScrollTop:0,
      offset:0,
    }
  },
  computed: { },
  created () {
    window.addEventListener('scroll',this.getScroll)
  },
  destroyed () {
    window.removeEventListener('scroll', this.getScroll)
  },
  methods: {
    getScroll(){
      var st = window.pageYOffset || document.documentElement.scrollTop;
      let pages = document.querySelectorAll(".section");
      if(st>this.lastScrollTop){
        //down
        if(pages[0].offsetTop<st && st<=pages[1].offsetTop+50){
          this.goPage(1)
        }
        else if(pages[1].offsetTop< st && st<=pages[2].offsetTop){
          this.goPage(2)
        }
        else{
          return
        }

      } else{
        //up
        console.log(st)
        if(pages[0].offsetTop <= st && st < pages[1].offsetTop -50){
          this.goPage(0)
        }
        else if(pages[1].offsetTop <= st && st<pages[2].offsetTop-50){
          this.goPage(1)
        }
        else{
          return
        }

      }
      this.lastScrollTop = st <= 0 ? 0 : st;
    },
    goPage(n){
      
      let pages = document.querySelectorAll(".section");
      let itemsOffset = pages[n].offsetTop;
      
      window.scrollTo(0,itemsOffset)
      console.log(itemsOffset)
      this.offset += 1
    },
    // goTop(){
    //   widnow.scrollTo(0,0)
    // }
  }
}

</script>

<style lang="scss" scoped>
  .backgroundgif{
    background:url('../assets/main.gif');
    background-position: center;
    background-size: cover;
    height:100vh;
    width:100vw;
  }
  .header-wrapper {
    position: fixed;
    left: 0;
    top: 0;
    width: 100%;
    z-index: 1000;
    height: 78px;
    background:#272727;
  }
  .header-contents {
    position: relative;
    max-width: 1280px;
    margin: 0 auto;
    padding: 0 20px;
    height: 78px;
    text-align: left;
  }

  .title {
    color: #fff;
    font-weight: 600;
    line-height: 78px;
    cursor: pointer;
    font-size: 30px;
    display: inline-block;
    text-decoration:none;
  }

  .nav-bar {
    position: absolute;
    top: 0;
    right: 20px;
    color: #fff;
  }

  .nav-bar ul {
    list-style: none;
  }

  .nav-bar li {
    display: inline-block;
    line-height: 78px;
    font-size: 16px;
    font-weight: 400;
    margin-right: 24px;
  }

  .nav-bar li:last-child {
    margin-right: 0;
  }

  .a-nav-bar:hover {
    text-decoration: underline;
    cursor: pointer;
    opacity: 0.7;
  }

  .section{
      position: relative;
      text-align: center;
      width: 100%;
      height: 100vh;
  }
</style>
