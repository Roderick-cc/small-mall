<template>
  <div>
      <header class="nav-header">
        <div class="logo-wrap">
            <div class="logo-item">
                <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEwAAAAyCAYAAAD2vz2aAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyhpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTM4IDc5LjE1OTgyNCwgMjAxNi8wOS8xNC0wMTowOTowMSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTcgKE1hY2ludG9zaCkiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6MjQ2OUE2MkU0RTQ4MTFFNzgxOTZBRDJFQjk4Qjk0NjQiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6MjQ2OUE2MkY0RTQ4MTFFNzgxOTZBRDJFQjk4Qjk0NjQiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpCOUQ0QkM2RjREQ0MxMUU3ODE5NkFEMkVCOThCOTQ2NCIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpCOUQ0QkM3MDREQ0MxMUU3ODE5NkFEMkVCOThCOTQ2NCIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PiL8gcIAAAF1SURBVHja7Ju/LwRRFEbf+FVsQ0dBdJKNSksUSqVCr6AhKxGVwn+gVUpQEI1So5XoZUOhEbKMDiESIeOTzPbvzpoxz5wvOd3duzsn++7cSXajZMU9OOeGXPmTiHtxIU7FoYh/oe+ZmPKsjSMJS1yY+RS7YrNDcTdi1Le4y4WbHrEorsRcUW8asrB2BsSxWEeYLVtiCWG2bIsJhPmnV+zkeV3/TZhLv2HzCLNlFWG2TIqRvHYZa97FR84XXEvnUSeZEft/LexZDIvXnIVFop6uCQ3RnaHHeBmO5FMBstrPjZdiTUyLlww9Bqs6w87FcobX9Vd56B+IZoZjXVlhP0f0qAwfJKS1ookw+w0HYaEFYQVs+j4ZE7Oed6o3sVfA00OphW2IBUN9S5xU+Uhad6A+ZhhDnyAMYQhDGMIQRhCGMIQhDGEEYQhDGMIQhjCCMIQhDGEIIwhDWFHCLP81vPOsezT0/BK3nj0tP1i59qxrGXrG3wIMAK5yNsqRAjAyAAAAAElFTkSuQmCC" alt="">
            </div>
        </div>
        
          <router-link to="/search" tag="div" class="search-wrap">
             <div class="search-item">
                <i class="icon iconfont icon-sousuo ico-search"></i>
                搜索商品名称
            </div>
          </router-link>

           

        <div class="user-wrap">
            <div class="user-item">
               
                <router-link to="/user">
                  <i class="icon iconfont icon icon-wo ico-user"></i>
                </router-link>
            </div>
        </div>
      </header>

      <div id="slider" class="mui-slider slide-marginTop">
        <div id="sliderSegmentedControl" class="mui-scroll-wrapper mui-slider-indicator mui-segmented-control mui-segmented-control-inverted">
          <div class="mui-scroll">
            <a class="mui-control-item mui-active"  id="tab-item1">
              推荐
            </a>
            <a class="mui-control-item" >
              手机
            </a>
            <a class="mui-control-item" >
              电视
            </a>
            <a class="mui-control-item"  >
              智能
            </a>
            <a class="mui-control-item" >
              笔记本
            </a>
             <a class="mui-control-item" >
              家电
            </a>
             <a class="mui-control-item"  >
              新款笔记本
            </a>
             <a class="mui-control-item"  >
              双摄
            </a>
             <a class="mui-control-item"  >
              全面屏
            </a>
             <a class="mui-control-item"  >
              生活周边
            </a>
             <a class="mui-control-item"  >
              盒子
            </a>
             <a class="mui-control-item"  >
              电源
            </a>
             <a class="mui-control-item"  >
              健康
            </a>
          

          </div>
        </div>
        <div class="display-bottom"><i class="fa fa-angle-down"></i></div>
      </div>




    <section class="content-wrap">
        <!-- 轮播图 -->

        <div class="banner-wrap">
            <mt-swipe :auto="4000">
                <mt-swipe-item>
                  <router-link to="/goodsdetail?id=0003">
                    <img src="/static/banner1.webp" alt="小米5X">
                  </router-link>
                </mt-swipe-item>
                <mt-swipe-item>
                  <router-link to="/goodsdetail?id=0002">
                    <img src="/static/banner2.webp" alt="红米Note5">
                  </router-link>
                </mt-swipe-item>
            </mt-swipe>
        </div>
        <!-- 内容区导航栏 -->
        <ul class="nav-list">
            <li class="list-item">
                <a href="">
                    <img src="/static/mifenka.webp" alt="">
                </a>
            </li>
            <li class="list-item">
                <a href="">
                    <img src="/static/xinpinfabu.webp" alt="">
                </a>
            </li>
            <li class="list-item">
                <a href="">
                    <img src="/static/xiaomishangou.jpg" alt="">
                </a>
            </li>
            <li class="list-item">
                <a href="">
                    <img src="/static/yijiuhuanxin.webp" alt="">
                </a>
            </li>
            <li class="list-item">
                <a href="">
                    <img src="/static/huodongpindao.png" alt="">
                </a>
            </li>
        </ul>
        <div class="compont-list">
          <div class="compont-list-left">
            <a href=""><img src="/static/mi82.webp" alt=""></a>
          </div>
          <div class="compont-list-right">
            <div class="compont-list-right-contain">
              <a href="">
                <img src="/static/rebot.webp" alt="">
              </a>
            </div>
            <div class="compont-list-right-contains">
              <a href="">
                <img src="/static/tv.webp" alt="">
              </a>
            </div>
            
          </div>
        </div>
        <!-- 商品列表区 -->
        <div class="goods-wrap">
            <!-- 大图区 -->
            <ul class="big-item-list">
                <li class="big-item"><router-link to="/goodsdetail?id=0012"><img src="/static/meirijingxuan.webp" alt=""></router-link></li>
                <li class="big-item"><router-link to="/goodsdetail?id=0013"><img src="/static/chaozhituijian.jpg" alt=""></router-link></li>
            </ul>
            <!-- 小图区 -->
            <ul class="normal-item-list clearfix">
         

           <router-link class="normal-item"  :to="{path :'/goodsdetail', query:{id : item.goodsId}}" v-for="item in goodsList" >

                            <div class="img"> 
                                <img :src="'/static/' + item.goodsImg" alt="">
                            </div>
                            <div class="info">
                                <div class="name">{{item.goodsName}}</div>
                                <div class="brief">{{item.goodsBrief}}</div>
                                <div class="price">
                                    ￥{{item.goodsPrice}} <span>起</span>
                                </div>
                            </div>
                        </router-link>


 




            </ul>
        </div>
    </section>

    <!-- <nav-footer></nav-footer> -->
  </div>
</template>

<script>
import '@/assets/css/reset.css'
import '@/assets/css/homepage.css'
// import '@/assets/js/scroll.js'
// import NavFooter from '@/components/NavFooter'
import mui from '@/assets/mui/js/mui.min.js'

import axios from 'axios'



export default {
  data(){
      return {
          goodsList: []
      }
  },
  components: {
      
  },
  mounted:function(){
      this.init();
      mui(".mui-scroll-wrapper").scroll({
      deceleration: 0.0005 
    });

  },
  methods: {
      init(){
          // 数据访问vue-cli内置服务器向外暴露的静态文件夹
          axios.get('/static/mock/Home.json').then(result=>{
              var goodsData = result.data;
              this.goodsList = goodsData.goodsList;
          });
      }
      
  }
}
</script>

<style scoped>

    .banner-wrap{
        height: 8rem;
    }
    .banner-wrap img{
        width: 100%;
        height: 8rem;
    }
    .price span {
      font-size: 0.4rem;
    }
    .slide-marginTop{
      position: fixed;
      top: 2.5rem;
      left: 0;
      
      background-color: #f2f2f2;
      touch-action: none;
      box-sizing:border-box;
      padding-right:40px;
          
    }
    .display-bottom{
      position: absolute;
      top: 0;
      right: 0;
      height: 60px;
      width: 1.5rem;
      background-color: #f2f2f2;
      z-index: 10;
      box-shadow: -15px 0 15px 0 #f2f2f2;
      line-height: 30px;
      box-sizing: border-box;
      padding-top: .2rem;

    }
    .display-bottom i{
      font-size: 1.1rem;
    }
    .mui-segmented-control.mui-segmented-control-inverted .mui-control-item.mui-active{
      border-bottom: 1px solid #fe7715!important
    }
    .mui-segmented-control .mui-control-item{
      line-height: 32px;
    }
    .mui-segmented-control.mui-segmented-control-inverted .mui-control-item.mui-active{
      color: #fe7715;
    }
    .mui-active{
      background-color: transparent!important;
    }
    

</style>

