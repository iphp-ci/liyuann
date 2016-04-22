<div id="copyrights">
        <div class="container">
            <div class="col-lg-6 col-md-6 col-sm-12">
                <div class="copyright-text">
                    <p> <img src="<?php echo HOME_THEME_PATH; ?>demos/290215_1418259288.png" alt="" width="50" style="margin-right:20px;">Copyright © 2014 - Designed by omooo Innovation</p>
                   
                </div><!-- end copyright-text -->
            </div><!-- end widget -->
           
            <div class="col-lg-6 col-md-6 col-sm-12 clearfix">
                <div class="footer-menu">
                    <ul class="menu">
                        <li class="active"><a href="<?php echo SITE_URL; ?>">返回</a></li>
                         <?php $return = $this->list_tag("action=navigator type=2"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
                        <li><a href="<?php echo $t['url']; ?>" title="<?php echo $t['title']; ?>"><?php echo $t['name']; ?></a></li>
                        <?php } } ?>
                    </ul>
                </div>
            </div><!-- end large-7 --> 
        </div><!-- end container -->
    </div><!-- end copyrights -->
    
<!-- <div class="dmtop">Scroll to Top</div> -->


<script src="<?php echo HOME_THEME_PATH; ?>js/jquery.js"></script>
<script src="<?php echo HOME_THEME_PATH; ?>js/bootstrap.min.js"></script>
<script src="<?php echo HOME_THEME_PATH; ?>js/menu.js"></script>
<script src="<?php echo HOME_THEME_PATH; ?>js/owl.carousel.min.js"></script>
<script src="<?php echo HOME_THEME_PATH; ?>js/jquery.parallax-1.1.3.js"></script>
<script src="<?php echo HOME_THEME_PATH; ?>js/jquery.simple-text-rotator.js"></script>
<script src="<?php echo HOME_THEME_PATH; ?>js/wow.min.js"></script>
<script src="<?php echo HOME_THEME_PATH; ?>js/custom.js"></script>
<script src="<?php echo HOME_THEME_PATH; ?>js/jquery.isotope.min.js"></script>
<script src="<?php echo HOME_THEME_PATH; ?>js/custom-portfolio-masonry.js"></script>
<!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
  <script type="text/javascript" src="<?php echo HOME_THEME_PATH; ?>rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
  <script type="text/javascript" src="<?php echo HOME_THEME_PATH; ?>rs-plugin/js/jquery.themepunch.revolution.min.js"></script>

  <div class="qqside">
    <ul>
       
        <li><a href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo om_block(21); ?>&site=qq&menu=yes" target="_blank"><div class="qqsidebox"><img src="<?php echo HOME_THEME_PATH; ?>img/side_icon04.png">QQ客服</div></a></li>
        <li><a href="<?php echo om_block(22); ?>" target="_blank"><div class="qqsidebox"><img src="<?php echo HOME_THEME_PATH; ?>img/side_icon03.png" target="_blank">新浪微博</div></a></li>
        <li style="border:none;"><a href="javascript:goTop();" class="qqsidetop"><img src="<?php echo HOME_THEME_PATH; ?>img/side_icon05.png"></a></li>
        <li style="border:none;"><a href="javascript:;" class="qqsidetop" id="closeQQ" title="关闭"><img src="<?php echo HOME_THEME_PATH; ?>img/side_icon06.png"></a></li>
    </ul>
    <div id="saoyisaodivFix" class="saoyisaodiv">
                <div class="sao_ma text-center">
                 <?php $return = $this->list_tag("action=navigator type=3"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) {  if ($t['id']==24) { ?>
                    <img src="<?php echo dr_thumb($t['thumb']); ?>" alt="" width="100">
                     <?php }  } } ?>
                </div>
                <a href="javascript:;" class="closeSaoma" title="关闭"><img src="<?php echo HOME_THEME_PATH; ?>img/side_icon07.png" alt=""></a>
</div><!-- end widget -->
</div>
<script type="text/javascript" src="<?php echo HOME_THEME_PATH; ?>js/qq.js"></script>