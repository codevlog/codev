<template>
  <!-- header -->
  <div>
    <div class="header-wrapper">
      <div class="header-contents">
        <!-- 타이틀 -->
        <a v-on:click="goPage(0)" class="title">CodeV</a>

        <!-- 상단 메뉴 && 모바일 메뉴 -->
        <div class="nav-bar">
          <ul>
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
          <h1>SVG를 하나 만들어보자</h1>
        </div>
      </div>
    </div>
    <div class="section" id="BestPortfolio">
      <div style="width:100%; padding-top:80px"></div> <!--하나의 seperate-->
      
      <div class="pofol" style="height:80vh">
        <!-- portfolio page -->
        <!-- 카드 만들어지면 쓰기 -->
        <div class="portfolio-container">
          <div v-for="(i, index) in portfolios" :key="i.id" style="width:200px" @mouseover="onHover(index)" @mouseleave="offHover()">
            <pCard :title="i.title"
                    :body="i.body"
                    :imgSrc="i.imgSrc" v-if="index<5"></pCard>
          </div>
        </div>
      </div>
      <div class="pofol" style="margin:0 aut">
        <router-link to="/portfolio"><img :src="icon" alt="icon" style="width:42px; height:42px"></router-link>
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
import pCard from '../components/pCard'

export default {
  name: 'home',
  props: {
    propName: {
      type: String,
      default: ''
    },
  },
  components: {
    pCard
  },
  data () { 
    return {
      lastScrollTop:0,
      offset:0,
      portfolios: [
                    {
                        id: 1,
                        title: 'Title1',
                        body: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                        imgSrc: this.getImgUrl("test")
                    },
                    {
                        id: 2,
                        title: 'Title2',
                        body: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                        imgSrc: this.getImgUrl("test1")
                    },
                    {
                        id: 3,
                        title: 'Title3',
                        body: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.f',
                        imgSrc: 'https://picsum.photos/400/400'
                    },
                    {
                        id: 4,
                        title: 'Title4',
                        body: 'lorem ipsLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.um slsjdnflasjdfnsjkdfnlkajflasdafsdfkasndjklafsdnljkflasndfjklnasdjklfnlasdfjlasdf',
                        imgSrc: 'https://picsum.photos/400/400'
                    },
                    {
                        id: 5,
                        title: 'Title5',
                        body: 'lorem ipLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.sum slsjdnflasjdfnsjkdfnlkajflasdafsdfkasndjklafsdnljkflasndfjklnasdjklfnlasdfjlasdf',
                        imgSrc: 'https://picsum.photos/400/400'
                    },
                    {
                        id: 6,
                        title: 'Title5',
                        body: 'lorem ipLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.sum slsjdnflasjdfnsjkdfnlkajflasdafsdfkasndjklafsdnljkflasndfjklnasdjklfnlasdfjlasdf',
                        imgSrc: 'https://picsum.photos/400/400'
                    },
                    {
                        id: 7,
                        title: 'Title5',
                        body: 'lorem ipLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.sum slsjdnflasjdfnsjkdfnlkajflasdafsdfkasndjklafsdnljkflasndfjklnasdjklfnlasdfjlasdf',
                        imgSrc: 'https://picsum.photos/400/400'
                    },
                ]
    }
  },
  computed: {
    icon(){
      return require('../assets/search-plus-solid.svg')
    }
  },
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
      // console.log(itemsOffset)
      this.offset += 1
    },
    getImgUrl(target){
      var images = require.context('../assets/', false, /\.jpg$/)
      console.log(images)
      return images('./'+target+".jpg")
    },
    onHover(index){

      var imgurl = this.portfolios[index].imgSrc
      var el = document.getElementById("BestPortfolio").style.backgroundImage="url("+imgurl+")";
      console.log()
    },
    offHover(){
      var imgurl = this.getImgUrl("test2")
      var el = document.getElementById("BestPortfolio").style.backgroundImage="url("+imgurl+")";
    }
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
    font-size: 50px;
    display: inline-block;
    text-decoration:none;
  }
  .title:hover{
    background: linear-gradient(to left, #fbcac9 20%, #fff 40%, #fff 60%, #8ca6ce 80%);
    background-size: 200% auto;
    
    color: #000;
    background-clip: text;
    text-fill-color: transparent;
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    
    animation: shine 1.2s linear infinite;
    @keyframes shine {
      to {
        background-position: 200% center;
      }
    }
  }

  .nav-bar {
    position: absolute;
    top: 0;
    right: 35px;
    color: #fff;
  }

  .nav-bar ul {
    list-style: none;
  }

  .nav-bar li {
    display: inline-block;
    line-height: 78px;
    font-size: 26px;
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
  #BestPortfolio{
    background-image:url('../assets/test2.jpg');
    background-position: center;
    background-size: cover;
    height:100vh;
    width:100%;
  }
  .portfolio-container {
    display: grid;
    grid-template-rows: repeat(1, 200px [col-start]);
    grid-template-columns: repeat(5, 200px [row-start]);
    grid-gap: 10px 10px;
    justify-content: space-evenly;
    /*justify-items: center;*/
    padding-top: 30vh;
  }
  
</style>
