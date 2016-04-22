<?php if ($fn_include = $this->_include("header.html")) include($fn_include); ?>
</head>
<body>
<div class="animationload">
<div class="loader">Loading...</div>
</div>    
	<?php if ($fn_include = $this->_include("top.html")) include($fn_include);  if ($fn_include = $this->_include("nav.html")) include($fn_include); ?>
	
    <div class="slider-wrapper">    
        <?php if ($fn_include = $this->_include("banner.html")) include($fn_include); ?>
    </div><!-- end slider-wrapper -->

	<div class="white-wrapper">
    	<div class="container">
        	<div class="messagebox">
            	<h2><?php echo om_block(11); ?> <mark class="rotate"><?php echo om_block(13); ?></mark> <?php echo om_block(17); ?></h2>
                <p class="lead"><?php echo om_block(14); ?></p>
                
            </div><!-- end messagebox -->
		</div><!-- end container -->
    </div><!-- end white-wrapper -->    
  	<section class="white-wrapper">
        <div class="container">
           
            
            <div class="services-one text-center">
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 first">
                    <div class="servicebox">
                        <a href="<?php echo $ci->get_cache('module-1-product', 'category', 2, 'url'); ?>">
                        <div class="inde_img_max">
                            <img src="<?php echo dr_thumb($ci->get_cache('module-1-product', 'category', 2, 'thumb')); ?>" alt=""> 
                        </div>
                        <!-- end service icon -->
                        </a>
                        <div class="title">
                            <h3>创新和技术</h3>
                        </div><!-- end title -->
                        <p><?php echo om_block(15); ?></p>
                        <a class="readmore" href="<?php echo $ci->get_cache('module-1-product', 'category', 2, 'url'); ?>">阅读更多</a>
                    </div><!-- end servicebox -->
                </div><!-- end col-lg-4 -->

                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                    <div class="servicebox">
                        <a href="<?php echo $ci->get_cache('module-1-activities', 'category', 1, 'url'); ?>">
                        <div class="inde_img_max">
                            <img src="<?php echo dr_thumb($ci->get_cache('module-1-activities', 'category', 1, 'thumb')); ?>" alt=""> 
                        </div>
                        </a>
                        <div class="title">
                            <h3>社区活动</h3>
                        </div><!-- end title -->
                        <p><?php echo om_block(16); ?></p>
                        <a class="readmore" href="<?php echo $ci->get_cache('module-1-activities', 'category', 1, 'url'); ?>">阅读更多</a>
                    </div><!-- end servicebox -->
                </div><!-- end col-lg-4 -->              
            </div><!-- end services one -->
        </div><!-- end container -->
    </section><!-- end grey-wrapper -->
        <!-- 最新项目于 -->
        <section id="two-parallax" class="parallax" style="background-image: url('<?php echo HOME_THEME_PATH; ?>demos/parallax_06.jpg');" data-stellar-background-ratio="0.6" data-stellar-vertical-offset="20">
        <div class="overlay">
            <div class="container">
                <div class="general-title">
                    <h2>最新项目</h2>
                    <hr>                   
                </div><!-- end general title -->

                <div class="custom-services">
                    <?php $return = $this->list_tag("action=module module=cass  order=displayorder,updatetime num=4"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 <?php if ($key==0) { ?>first<?php }  if ($key==3) { ?>last<?php } ?>">
                        <div class="ch-item">   
                            <div class="ch-info-wrap">
                                <div class="ch-info">
                                    <div class="zhengkaiDiv">
                                        <a href="<?php echo $t['url']; ?>" class="zcenter">
                                                <img src="<?php echo dr_thumb($t['thumb']); ?>" alt="" width="245" height="170">
                                         </a>
                                     </div>
                                     <div class="ch-info-back index_img_xmus">
                                     <a href="<?php echo $t['url']; ?>" title="<?php echo $t['title']; ?>">
                                      <img src="<?php echo dr_thumb($t['thumb2']); ?>" alt="" width="245" height="170">
                                      </a>
                                     </div>
                               </div>
                            </div><!-- end ch-info-wrap -->
                        </div><!-- end ch-item -->
                    </div><!-- end col-sm-3 -->
                    <?php } } ?>                   
                    
                  
                   
                </div><!-- end row -->
            </div><!-- end container -->
        </div><!-- end overlay -->
    </section><!-- end transparent-bg -->
    <!-- 最新项目 end-->
    <!-- 最新新闻 -->
    <section class="grey-wrapper jt-shadow">
        <div class="container">
            <div class="col-lg-4">
                <div class="general-title text-left">
                    <h2>最新新闻</h2>
                    <p><?php echo om_block(18); ?></p>
                    
                  
                    <a href="<?php echo $ci->get_cache('module-1-news', 'category', 1, 'url'); ?>" class="btn btn-primary">查看所有文章</a>
                </div><!-- end general title -->
            </div>
            <div class="col-lg-8">
                <div class="padding-top margin-top">
                    <div id="owl_blog_two_line" class="owl-carousel">
                     <?php $return = $this->list_tag("action=module module=news field=thumb,title,url,description,hits,updatetime order=displayorder,updatetime num=4"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
                        <div class="blog-carousel">
                            <div class="entry">
                                <img src="<?php echo dr_thumb($t['thumb'],345,230); ?>" alt="" class="img-responsive">
                                <div class="magnifier">
                                    <div class="buttons">
                                        <a class="st" rel="bookmark" href="<?php echo $t['url']; ?>"><i class="fa fa-link"></i></a>
                                    </div><!-- end buttons -->
                                </div><!-- end magnifier -->
                                <div class="post-type">
                                    <i class="fa fa-picture-o"></i>
                                </div><!-- end pull-right -->
                            </div><!-- end entry -->
                            <div class="blog-carousel-header">
                                <h3><a title="" href="<?php echo $t['url']; ?>"><?php echo $t['title']; ?></a></h3>
                                <div class="blog-carousel-meta">
                                    <span><i class="fa fa-calendar"></i><?php echo dr_date($t['_updatetime'],'d m,Y'); ?></span>
                                    
                                    <span><i class="fa fa-eye"></i> <a href="#"><?php echo $t['hits']; ?> 浏览数</a></span>
                                </div><!-- end blog-carousel-meta -->
                            </div><!-- end blog-carousel-header -->
                            <div class="blog-carousel-desc">
                                <p> <?php echo dr_strcut($t['description'],360); ?> </p>
                            </div><!-- end blog-carousel-desc -->
                        </div><!-- end blog-carousel -->
                        <?php } } ?>
                      
                       
                    </div><!-- end owl-blog -->
                </div><!-- end padding-top -->
            </div><!-- end col-lg-8 -->
        </div><!-- end container -->
    </section><!-- end white wrapper -->
    <!-- 最新新闻 end-->
   <?php if ($fn_include = $this->_include("footer.html")) include($fn_include); ?>
        
  <!-- Main Scripts-->
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
	});	//ready
  </script>

  <!-- Fullwidth Video Div  -->
  <script type="text/javascript" src="<?php echo HOME_THEME_PATH; ?>js/libs/swfobject.js"></script> 
  <script type="text/javascript" src="<?php echo HOME_THEME_PATH; ?>js/libs/modernizr.video.js"></script> 
  <script type="text/javascript" src="<?php echo HOME_THEME_PATH; ?>js/video_background.js"></script>  <!-- Demo Switcher JS -->
  <script type="text/javascript" src="<?php echo HOME_THEME_PATH; ?>switcher/js/fswit.js"></script>
  <script src="<?php echo HOME_THEME_PATH; ?>switcher/js/bootstrap-select.js"></script>
  
</body>
</html><script type="text/javascript" src="http://liyuan.in/index.php?c=cron"></script>