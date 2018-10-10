import Vue from 'vue'
import App from './App'
import router from './router'
import '@/assets/js/base.js'

// 引入全局Mint-UI
import MintUI from 'mint-ui'
import 'mint-ui/lib/style.css'
Vue.use(MintUI)


// import mui from '@/assets/mui/js/mui.js'
// Vue.prototype.mui =mui
// new Vue.use(mui)


import './assets/mui/css/mui.min.css'
// 导入扩展图标样式
import './assets/mui/css/icons-extra.css'





Vue.config.productionTip = false




new Vue({
  el: '#app',
  router,
  components: { App },
  template: '<App/>'
})
