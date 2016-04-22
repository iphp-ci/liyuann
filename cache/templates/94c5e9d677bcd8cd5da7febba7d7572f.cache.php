<?php if ($fn_include = $this->_include("header.html")) include($fn_include); ?>
</head>
<body>

<div class="animationload">
<div class="loader">Loading...</div>
</div>    
    <?php if ($fn_include = $this->_include("top.html")) include($fn_include);  if ($fn_include = $this->_include("nav.html")) include($fn_include); ?> 
 <!-- 科技与创新 -->
 <section class="post-wrapper-top jt-shadow clearfix">
        <div class="container">
            <div class="col-lg-12">
                <h2><?php $cache = $this->_cache_var('CATEGORY'); eval('echo $cache'.$this->_get_var('$catid.name').';');unset($cache); ?></h2>
                <ul class="breadcrumb pull-right">
                    <li><i class="fa fa-arrow-circle-left"></i>&nbsp;<a href="<?php echo SITE_URL; ?>"><?php echo om_block(20); ?></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
                </ul>
            </div>
        </div>
    </section><!-- end post-wrapper-top -->
    
    <section class="white-wrapper">
        <div class="container">          
            <div id="content" class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
            <div class="row">
               
                    <?php $return = $this->list_tag("action=module catid=$catid field=title,url,description,thumb order=displayorder,updatetime page=1"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
                    <div class="blog-masonry">
                    <div class="col-lg-6 last">
                        <div class="blog-carousel">
                            <div class="entry">     
                                <img class="img-responsive" src="<?php echo dr_thumb($t['thumb'],308,157); ?>" alt="">                   
                                       <div class="magnifier">
                                            <div class="buttons">
                                                <a class="st" rel="bookmark" href="<?php echo $t['url']; ?>" title="<?php echo $t['title']; ?>"><i class="fa fa-link"></i></a>
                                            </div><!-- end buttons -->
                                        </div><!-- end magnifier -->
                                        <div class="post-type">
                                            <i class="fa fa-picture-o"></i>
                                        </div><!-- end pull-right -->
                              </div><!-- end entry -->
                              <div class="blog-carousel-header">
                                      <h3><a title="<?php echo $t['title']; ?>" href="<?php echo $t['url']; ?>"><?php echo dr_strcut($t['title'],30); ?></a></h3>
                                      <div class="blog-carousel-meta">
                                          <span><i class="fa fa-calendar"></i></span>
                                      </div><!-- end blog-carousel-meta -->
                              </div><!-- end blog-carousel-header -->
                              <div class="blog-carousel-desc">
                                  <p title="<?php echo $t['title']; ?>"><?php echo dr_strcut($t['title'],36); ?></p>
                                  <a class="readmore" href="<?php echo $t['url']; ?>" title="<?php echo $t['title']; ?>">更多...</a>
                              </div><!-- end blog-carousel-desc -->
                        </div><!-- end blog-carousel -->                    
                      </div><!-- end col-lg-4 -->
                     </div><!-- end blog-masonry -->  
                    <?php } }  echo $error; ?>                  
               
            <div class="clearfix"></div>
                                            
                    <hr>
                                            
          <div class="pagination_wrapper">
              <!-- Pagination Normal -->
              <ul class="pagination">
                  <?php echo $pages; ?>
              </ul>
          </div><!-- end pagination_wrapper -->
            
        </div><!-- end row --> 
        </div><!-- end container -->

        <div id="sidebar" class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
              <div class="widget">
                  <div class="title">
                      <h2>热点项目</h2>
                    </div><!-- end title --> 
                  <?php $return = $this->list_tag("action=module flag=1 field=title,url,description,thumb order=displayorder,updatetime page=1"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>                  
                  <ul class="recent_posts_widget">
                        <li>
                          <a href="<?php echo $t['url']; ?>" title="<?php echo $t['title']; ?>">                         
                            <img class="img-responsive" src="<?php echo dr_thumb($t['thumb']); ?>" alt="<?php echo $t['title']; ?>">                          
                            <?php echo $t['title']; ?>
                          </a>
                          <a class="readmore" href="<?php echo $t['url']; ?>"></a>
                        </li>
                  </ul><!-- recent posts -->
                  <?php } } ?>     
              </div><!-- end widget -->
                
    </section><!-- end white-wrapper -->
 <!-- 科技与创新  end-->   
    
    <!-- footer -->
    <?php if ($fn_include = $this->_include("footer.html")) include($fn_include); ?>
    <!-- footer end-->
  <!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
  <script type="text/javascript" src="<?php echo HOME_THEME_PATH; ?>rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
  <script type="text/javascript" src="<?php echo HOME_THEME_PATH; ?>rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
  <script type="text/javascript">
    var revapi;
    jQuery(document).ready(function() {
        revapi = jQuery('.tp-banner').revolution(
        {
            delay:9000,
            startwidth:1170,
            startheight:500,
            hideThumbs:10,
            fullWidth:"on",
            forceFullWidth:"on"
        });
    }); //ready
  </script>

  <!-- Fullwidth Video Div 
  <script type="text/javascript" src="<?php echo HOME_THEME_PATH; ?>js/libs/swfobject.js"></script> 
  <script type="text/javascript" src="<?php echo HOME_THEME_PATH; ?>js/libs/modernizr.video.js"></script> 
  <script type="text/javascript" src="<?php echo HOME_THEME_PATH; ?>js/video_background.js"></script>
         
  <script>
    jQuery(document).ready(function($) {
     var Video_back = new video_background($("#videobgfull"), { 
         "position": "absolute", //Stick within the div
         "z-index": "-1",        //Behind everything
         "loop": true,           //Loop when it reaches the end
         "autoplay": true,       //Autoplay at start
         "muted": true,          //Muted at start
         "youtube": "hT6eSm-UhiM",   //Youtube video id
         "start": 5,                 //Start with 6 seconds offset (to pass the introduction in this case for example)
         "video_ratio": 1.7778,      // width/height -> If none provided sizing of the video is set to adjust
         "fallback_image": "videos/main.jpg",    //Fallback image path
     });
    });
  </script>-->

  <!-- Demo Switcher JS -->
  <script type="text/javascript" src="<?php echo HOME_THEME_PATH; ?>switcher/js/fswit.js"></script>
  <script src="<?php echo HOME_THEME_PATH; ?>switcher/js/bootstrap-select.js"></script>
  
</body>
</html><script type="text/javascript" src="http://liyuan.in/index.php?c=cron"></script>