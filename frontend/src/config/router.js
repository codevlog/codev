import Vue from 'vue'
import Router from 'vue-router'
import Home from '../views/Home.vue'
import PortfolioPage from "../views/main/portfolio/PortfolioPage";
import PortfolioDetail from "../views/main/portfolio/detail/PortfolioDetail";

Vue.use(Router)

export default new Router({
  mode: 'history',
  base: process.env.BASE_URL,
  routes: [
    {
      path: '/',
      name: 'home',
      component: Home
    },
    {
      path: '/portfolio',
      name: 'portfolio',
      component: PortfolioPage
    },
    {
      path: '/portfolio/detail',
      name: 'portfoliodetail',
      component: PortfolioDetail,
    }
    // {
    //   path: '/about',
    //   name: 'about',
    //   // route level code-splitting
    //   // this generates a separate chunk (about.[hash].js) for this route
    //   // which is lazy-loaded when the route is visited.
    //   component: () => import(/* webpackChunkName: "about" */ '')
    // }
  ]
})
