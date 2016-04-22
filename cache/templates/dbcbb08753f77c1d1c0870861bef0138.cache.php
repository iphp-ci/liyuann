<?php if ($fn_include = $this->_include("header.html")) include($fn_include); ?>
<link href="<?php echo HOME_THEME_PATH; ?>css/flexslider.css" rel="stylesheet"> 
</head>
<body>

<div class="animationload">
<div class="loader">Loading...</div>
</div>   
    <?php if ($fn_include = $this->_include("top.html")) include($fn_include);  if ($fn_include = $this->_include("nav.html")) include($fn_include); ?>  
    
    <section class="post-wrapper-top jt-shadow clearfix">
        <div class="container">
            <div class="col-lg-12">
                <h2><?php echo $title; ?></h2>
                <ul class="breadcrumb pull-right">
                    <li><i class="fa fa-arrow-circle-left"></i>&nbsp;<a href="<?php $cache = $this->_cache_var('CATEGORY'); eval('echo $cache'.$this->_get_var('$catid.url').';');unset($cache); ?>"><?php $cache = $this->_cache_var('CATEGORY'); eval('echo $cache'.$this->_get_var('$catid.name').';');unset($cache); ?></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-arrow-circle-left"></i>&nbsp;<a href="<?php echo SITE_URL; ?>"><?php echo om_block(20); ?></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
                   
                </ul>
            </div>
        </div>
    </section><!-- end post-wrapper-top -->
    
    <section class="blog-wrapper">
        <div class="container">
        <?php if ($img) { ?>
            <div class="flexslider">
                 <ul class="slides">
                 <?php if (is_array($img)) { $count=count($img);foreach ($img as $i=>$t) { ?>
                        <li><img src="<?php echo dr_thumb($t['file']); ?>" alt="" class="img-responsive"></li>
                 <?php } } ?>      
                 </ul><!-- end slides --> 
                 <div class="post-type">
                        <i class="fa fa-camera"></i>
                 </div><!-- end pull-right -->   
            </div><!-- end post-slider --> 
        <?php } ?>
            <div id="content" class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                <div class="row">
                   <div class="blog-masonry">
                        <div class="col-lg-12">
                            <div class="blog-carousel">
                                <div class="blog-carousel-header">
                                    <h2 class="zcenter"><?php echo $title; ?></h2>
                                    <div class="blog-carousel-meta">
                                        <span><i class="fa fa-calendar"></i> <?php echo $updatetime; ?></span>
                                        <!-- <span><i class="fa fa-comment"></i> <a href="#">03 Comments</a></span> -->
                                        <span><i class="fa fa-eye"></i> <a href="#"><?php echo dr_show_hits($id); ?> 次浏览</a></span>
                                        <span><i class="fa fa-user"></i> <a href="#"><?php echo $author; ?></a></span>
                                    </div><!-- end blog-carousel-meta -->
                                </div><!-- end blog-carousel-header -->
                                <div class="blog-carousel-desc">
                                    
                                        <?php echo $content; ?>
                                        
                    
                                </div><!-- end blog-carousel-desc -->
                            </div><!-- end blog-carousel -->
                        </div><!-- end col-lg-12 -->
                    </div><!-- end blog-masonry -->                    
                </div><!-- end row --> 
            </div><!-- end content -->
            
                    <div id="sidebar" class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                       
        
                        <div class="widget">
                            <div class="title"><h2>类别</h2></div>
                            <ul class="nav nav-tabs nav-stacked">
                                <?php $return_c = $this->list_tag("action=category pid=$cat[pid]  return=c"); if ($return_c) extract($return_c); $count_c=count($return_c); if (is_array($return_c)) { foreach ($return_c as $key_c=>$c) { ?>
                                <li><a href="<?php echo $c['url']; ?>"><?php echo $c['name']; ?></a></li>                                
                               <?php } } ?>
                            </ul>                              
                        </div><!-- end widget -->
                    </div><!-- end left-sidebar -->
                    
        </div><!-- end container -->
    </section><!--end white-wrapper -->

    
    
        
<?php if ($fn_include = $this->_include("footer.html")) include($fn_include); ?>
  <script src="<?php echo HOME_THEME_PATH; ?>js/jquery.flexslider.js"></script>
  <script type="text/javascript">
 (function($) {
      "use strict";
    $(window).load(function(){
      $('.flexslider').flexslider({
        animation: "fade",
        controlNav: false,
        start: function(slider){
          $('body').removeClass('loading');
        }
      });
    });
    })(jQuery);
  </script>

  

  <!-- Demo Switcher JS -->
  <script type="text/javascript" src="<?php echo HOME_THEME_PATH; ?>switcher/js/fswit.js"></script>
  <script src="<?php echo HOME_THEME_PATH; ?>switcher/js/bootstrap-select.js"></script>
 
</body>
</html><script type="text/javascript" src="http://liyuan.in/index.php?c=cron"></script>