 <div class="tp-banner" >
                <ul>
                <?php $return = $this->list_tag("action=navigator order=displayorder type=1 pid=0"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) {  if ($t['css']==1) { ?>
                   <li data-transition="fade" data-slotamount="7" data-masterspeed="1500" >
                    <img src="<?php echo dr_thumb($t['imgbg']); ?>"  alt="slidebg1"  data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat">
                        <div class="tp-caption high_title customin customout start"
                            data-x="left" data-hoffset="100"
                            data-y="60"
                            data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                            data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                            data-speed="1000"
                            data-start="500"
                            data-easing="Back.easeInOut"
                            data-endspeed="300"><!-- OUR -->
                        </div>
                        <div class="tp-caption mini_title customin customout start"
                            data-x="left" data-hoffset="330"
                            data-y="290"
                            data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                            data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                            data-speed="1000"
                            data-start="900"
                            data-easing="Back.easeInOut"
                            data-endspeed="300"><?php echo $t['words']; ?> <span></span>
                        </div>
                        <div class="tp-caption customin customout"
                            data-x="left" data-hoffset="100"
                            data-y="150"
                            data-customin="x:50;y:150;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.5;scaleY:0.5;skewX:0;skewY:0;opacity:0;transformPerspective:0;transformOrigin:50% 50%;"
                            data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                            data-speed="800"
                            data-start="700"
                            data-easing="Power4.easeOut"
                            data-endspeed="500"
                            data-endeasing="Power4.easeIn"
                            style="z-index: 3"><?php if ($t['thumb']) { ?><img src="<?php echo dr_thumb($t['thumb']); ?>" alt=""><?php } ?>
                        </div>
                        <div class="tp-caption small_title  customin customout start"
                            data-x="center" data-hoffset="0"
                            data-y="330"
                            data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                            data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                            data-speed="1600"
                            data-start="1100"
                            data-easing="Back.easeInOut"
                            data-endspeed="300"><?php if ($t['url']=="#") {  } else { ?><a href="<?php echo $t['url']; ?>" class="btn btn-primary btn-lg">更多</a><?php } ?>
                        </div>
                    </li>
                    <?php }  if ($t['css']==2) { ?>
                    <li data-transition="fade" data-slotamount="7" data-masterspeed="1500" >
                        <img src="<?php echo dr_thumb($t['imgbg']); ?>"  alt="slidebg1"  data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat">
                        <div class="tp-caption high_title2 customin customout start"
                            data-x="left" data-hoffset="60"
                            data-y="130"
                            data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                            data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                            data-speed="1000"
                            data-start="500"
                            data-easing="Back.easeInOut"
                            data-endspeed="300"><?php echo $t['words']; ?> <br>
                           
                        </div>
                        <div class="tp-caption light_title customin customout start"
                            data-x="left" data-hoffset="60"
                            data-y="265"
                            data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                            data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                            data-speed="1000"
                            data-start="700"
                            data-easing="Back.easeInOut"
                            data-endspeed="300"><?php echo $t['description']; ?>
                        </div>
                        <div class="tp-caption small_title  customin customout start"
                            data-x="left" data-hoffset="60"
                            data-y="340"
                            data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                            data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                            data-speed="1600"
                            data-start="900"
                            data-easing="Back.easeInOut"
                            data-endspeed="300"><?php if ($t['url']=="#") {  } else { ?><a href="<?php echo $t['url']; ?>" class="btn btn-primary btn-lg">更多</a><?php } ?>
                        </div>
                        <div class="tp-caption customin customout"
                            data-x="right" data-hoffset="-60"
                            data-y="bottom" data-voffset="-20"
                            data-customin="x:50;y:150;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.5;scaleY:0.5;skewX:0;skewY:0;opacity:0;transformPerspective:0;transformOrigin:50% 50%;"
                            data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                            data-speed="800"
                            data-start="700"
                            data-easing="Power4.easeOut"
                            data-endspeed="500"
                            data-endeasing="Power4.easeIn"
                            style="z-index: 3"><?php if ($t['thumb']) { ?><img src="<?php echo dr_thumb($t['thumb']); ?>" alt=""><?php } ?>
                        </div>
                    </li>
                    <?php }  if ($t['css']==3) { ?>
                   <li data-transition="fade" data-slotamount="7" data-masterspeed="1500" >
                        <!-- MAIN IMAGE -->
                        <img src="<?php echo dr_thumb($t['imgbg']); ?>"  alt="slidebg1"  data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat">
                        
                        <!-- <div class="tp-caption sfb"
                            data-x="center" data-hoffset="-200"
                            data-y="100"
                            data-speed="1000"
                            data-start="1250"
                            data-easing="easeOutBack"><img src="" alt="">
                        </div>
                         -->
                       <!--  <div class="tp-caption sfb"
                            data-x="center" data-hoffset="170"
                            data-y="120"
                            data-speed="1000"
                            data-start="1450"
                            data-easing="easeOutBack"><img src="<?php echo dr_thumb($t['thumb']); ?>" alt="">
                        </div> -->
            
                        <div class="tp-caption sfb"
                            data-x="center" data-hoffset="0"
                            data-y="60"
                            data-speed="1000"
                            data-start="1650"
                            data-easing="easeOutBack"><?php if ($t['thumb']) { ?><img src="<?php echo dr_thumb($t['thumb']); ?>" alt=""><?php } ?>
                        </div>
                        
                        <div class="tp-caption sfb"
                            data-x="center" data-hoffset="0"
                            data-y="230"
                            data-speed="1000"
                            data-start="1850"
                            data-easing="easeOutBack"><?php if ($t['thumb2']) { ?><img src="<?php echo dr_thumb($t['thumb2']); ?>" alt=""><?php } ?>
                        </div>

                       <!-- LAYERS -->
                        <div class="tp-caption small_title  customin customout start"
                            data-x="center" data-hoffset="0"
                            data-y="330"
                            data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                            data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                            data-speed="1600"
                            data-start="1800"
                            data-easing="Back.easeInOut"
                            data-endspeed="300"><?php echo $t['words']; ?>
                        </div>
                    </li>
                    <?php }  if ($t['css']==4) { ?>
                    <li data-transition="fade" data-slotamount="7" data-masterspeed="1500" data-delay="5000">
                        <!-- MAIN IMAGE -->
                            <img src="<?php echo dr_thumb($t['imgbg']); ?>"  alt="video_business"  data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat">
                            <!-- LAYERS -->
                    
                            <!-- LAYER NR. 1 -->
                            <div class="tp-caption tp-fade fadeout fullscreenvideo"
                                data-x="0"
                                data-y="0"
                                data-speed="1000"
                                data-start="800"
                                data-easing="Power4.easeOut"
                                data-endspeed="1500"
                                data-endeasing="Power4.easeIn"
                                data-autoplay="true"
                                data-autoplayonlyfirsttime="false"
                                data-nextslideatend="true"
                                 data-forceCover="1" data-aspectratio="16:9" data-forcerewind="on"
                                 style="z-index: 2"><video id="revvideo" class="video-js vjs-default-skin" preload="none"
                                poster='<?php echo HOME_THEME_PATH; ?>demos/video_bg.jpg' data-setup="{}">
                                <source src='<?php echo dr_get_file($t['mp4']); ?>' type='video/mp4' />
                                <source src='<?php echo dr_get_file($t['webm']); ?>' type='video/webm' />
                                <source src='<?php echo dr_get_file($t['ogv']); ?>' type='video/ogg' />
                                </video>
                            </div>
                            <!-- LAYER NR. 3 -->
                            <div class="tp-caption big_title_onepage skewfromleft customout"
                                data-x="center" data-hoffset="0"
                                data-y="top" data-voffset="130"
                                data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                data-speed="800"
                                data-start="1300"
                                data-easing="Power4.easeOut"
                                data-endspeed="300"
                                data-endeasing="Power1.easeIn"
                                data-captionhidden="on"
                                style="z-index: 6"><?php echo $t['words']; ?>
                            </div>
                            <!-- LAYER NR. 7 -->
                            <div class="tp-caption small_thin_grey1 customin customout"
                                data-x="85"
                                data-y="320"
                                data-customin="x:0;y:100;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:3;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:0% 0%;"
                                data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                data-speed="500"
                                data-start="2000"
                                data-easing="Power4.easeOut"
                                data-endspeed="500"
                                data-endeasing="Power4.easeIn"
                                data-captionhidden="on"
                                style="z-index: 8"><span><i class="fa fa-bullseye"></i></span>农 化
                            </div>
                            <!-- LAYER NR. 7 -->
                            <div class="tp-caption small_thin_grey1 customin customout"
                                data-x="245"
                                data-y="320"
                                data-customin="x:0;y:100;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:3;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:0% 0%;"
                                data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                data-speed="500"
                                data-start="2400"
                                data-easing="Power4.easeOut"
                                data-endspeed="500"
                                data-endeasing="Power4.easeIn"
                                data-captionhidden="on"
                                style="z-index: 8"><span><i class="fa fa-bullseye"></i></span> 食 品
                            </div>        
                            <!-- LAYER NR. 7 -->
                            <div class="tp-caption small_thin_grey1 customin customout"
                                data-x="415"
                                data-y="320"
                                data-customin="x:0;y:100;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:3;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:0% 0%;"
                                data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                data-speed="500"
                                data-start="2600"
                                data-easing="Power4.easeOut"
                                data-endspeed="500"
                                data-endeasing="Power4.easeIn"
                                data-captionhidden="on"
                                style="z-index: 8"><span><i class="fa fa-bullseye"></i></span> 医 药
                            </div>    
                            <!-- LAYER NR. 7 -->
                            <div class="tp-caption small_thin_grey1 customin customout"
                                data-x="570"
                                data-y="320"
                                data-customin="x:0;y:100;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:3;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:0% 0%;"
                                data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                data-speed="500"
                                data-start="2800"
                                data-easing="Power4.easeOut"
                                data-endspeed="500"
                                data-endeasing="Power4.easeIn"
                                data-captionhidden="on"
                                style="z-index: 8"><span><i class="fa fa-bullseye"></i></span> 电 子
                            </div>   
                            <!-- LAYER NR. 7 -->
                            <div class="tp-caption small_thin_grey1 customin customout"
                                data-x="730"
                                data-y="320"
                                data-customin="x:0;y:100;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:3;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:0% 0%;"
                                data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                data-speed="500"
                                data-start="3000"
                                data-easing="Power4.easeOut"
                                data-endspeed="500"
                                data-endeasing="Power4.easeIn"
                                data-captionhidden="on"
                                style="z-index: 8"><span><i class="fa fa-bullseye"></i></span> 建 材
                            </div>  
                            <!-- LAYER NR. 7 -->
                            <div class="tp-caption small_thin_grey1 customin customout"
                                data-x="920"
                                data-y="320"
                                data-customin="x:0;y:100;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:3;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:0% 0%;"
                                data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                data-speed="500"
                                data-start="3200"
                                data-easing="Power4.easeOut"
                                data-endspeed="500"
                                data-endeasing="Power4.easeIn"
                                data-captionhidden="on"
                                style="z-index: 8"><span><i class="fa fa-bullseye"></i></span> 其 他
                            </div>  
                    </li>
                    <?php }  if ($t['css']==5) { ?>
                    <li data-transition="fade" data-slotamount="7" data-masterspeed="1500" >
                        <img src="<?php echo dr_thumb($t['imgbg']); ?>"  alt="slidebg1"  data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat">
                        <div class="tp-caption big_title_slider customin customout start"
                            data-x="left"
                            data-hoffset="30"
                            data-y="170"
                            data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                            data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                            data-speed="1000"
                            data-start="500"
                            data-easing="Back.easeInOut"
                            data-endspeed="300"><?php echo $t['words']; ?>
                        </div>
                        <div class="tp-caption small_title customin customout start"
                            data-x="left"
                            data-hoffset="30"
                            data-y="246"
                            data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                            data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                            data-speed="1300"
                            data-start="800"
                            data-easing="Back.easeInOut"
                            data-endspeed="300"><?php echo $t['description']; ?>
                        </div>
                        <div class="tp-caption small_title customin customout start"
                            data-x="left"
                            data-hoffset="30"
                            data-y="360"
                            data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                            data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                            data-speed="1600"
                            data-start="1100"
                            data-easing="Back.easeInOut"
                            data-endspeed="300"><?php if ($t['url']=="#") {  } else { ?><a href="<?php echo $t['url']; ?>" class="btn btn-primary btn-lg">更多</a><?php } ?>
                        </div>
                        <div class="tp-caption customin customout"
                            data-x="right" data-hoffset="-60"
                            data-y="bottom" data-voffset="220"
                            data-customin="x:50;y:150;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.5;scaleY:0.5;skewX:0;skewY:0;opacity:0;transformPerspective:0;transformOrigin:50% 50%;"
                            data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                            data-speed="800"
                            data-start="700"
                            data-easing="Power4.easeOut"
                            data-endspeed="500"
                            data-endeasing="Power4.easeIn"
                            style="z-index: 3"><?php if ($t['thumb']) { ?><img src="<?php echo dr_thumb($t['thumb']); ?>" alt=""><?php } ?>
                        </div>
                    </li>
                    <?php }  if ($t['css']==6) { ?>                    
                    <li data-transition="fade" data-slotamount="7" data-masterspeed="1500" >
                        <img src="<?php echo HOME_THEME_PATH; ?>demos/sliderbg_02.jpg"  alt="slidebg1"  data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat">
                        <div class="tp-caption big_title  customin customout start"
                            data-x="left"
                            data-hoffset="30"
                            data-y="170"
                            data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                            data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                            data-speed="1000"
                            data-start="500"
                            data-easing="Back.easeInOut"
                            data-endspeed="300"><?php echo $t['words']; ?>
                        </div>
                        <div class="tp-caption small_title2 customin customout start"
                            data-x="left"
                            data-hoffset="30"
                            data-y="236"
                            data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                            data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                            data-speed="1300"
                            data-start="800"
                            data-easing="Back.easeInOut"
                            data-endspeed="300"><?php echo $t['description']; ?>
                        </div>
                        <div class="tp-caption small_title  customin customout start"
                            data-x="left"
                            data-hoffset="30"
                            data-y="320"
                            data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                            data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                            data-speed="1600"
                            data-start="1100"
                            data-easing="Back.easeInOut"
                            data-endspeed="300"><?php if ($t['url']=="#") {  } else { ?><a href="<?php echo $t['url']; ?>" class="btn btn-primary btn-lg">更多</a><?php } ?>
                        </div>
                        <div class="tp-caption customin customout"
                            data-x="right" data-hoffset="120"
                            data-y="bottom" data-voffset="0"
                            data-customin="x:50;y:150;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.5;scaleY:0.5;skewX:0;skewY:0;opacity:0;transformPerspective:0;transformOrigin:50% 50%;"
                            data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                            data-speed="800"
                            data-start="700"
                            data-easing="Power4.easeOut"
                            data-endspeed="500"
                            data-endeasing="Power4.easeIn"
                            style="z-index: 3"><?php if ($t['thumb']) { ?><img src="<?php echo dr_thumb($t['thumb']); ?>" alt=""><?php } ?>
                        </div>
                    </li>
                    <?php }  } } ?>
                </ul>
                <div class="tp-bannertimer"></div>
            </div>