<header id="header-style-1">
		<div class="container">
			<div class="navbar yamm navbar-default">
				<div class="navbar-header">
                    <button type="button" data-toggle="collapse" data-target="#navbar-collapse-1" class="navbar-toggle">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <?php $return = $this->list_tag("action=navigator type=3"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) {  if ($t['id']==23) { ?>
                    <a href="<?php echo SITE_URL; ?>" class="navbar-brand" style="background: url(<?php echo dr_thumb($t['thumb']); ?>) no-repeat scroll left center rgba(0, 0, 0, 0);">&nbsp;</a>
                    <?php }  } } ?>
        		</div><!-- end navbar-header -->
                
				<div id="navbar-collapse-1" class="navbar-collapse collapse navbar-right">
					<ul class="nav navbar-nav">
						<li class="dropdown"><a href="<?php echo SITE_URL; ?>">首页</a></li>						
                        <!-- standard drop down -->
                       <?php $return = $this->list_tag("action=navigator type=0 pid=0"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
                        <li class="dropdown <?php if ($t['css']==1) { ?>yamm-fw<?php } ?>"><a href="<?php echo $t['url']; ?>"  <?php if ($t['target']) { ?>target="_blank"<?php }  if ($t['child']) { ?> data-toggle="dropdown" class="dropdown-toggle"<?php } ?>><?php echo $t['name'];  if ($t['child']) { ?><div class="arrow-up"></div><?php } ?></a>
                        <?php if ($t['child']) { ?>

                            <ul class="dropdown-menu" role="menu">
                               <?php if ($t['css']==1) { ?>
                                <li>
                                    <div class="yamm-content">
                                        <div class="row">
                                        <?php $return_n2 = $this->list_tag("action=navigator type=0 pid=$t[id]  return=n2"); if ($return_n2) extract($return_n2); $count_n2=count($return_n2); if (is_array($return_n2)) { foreach ($return_n2 as $key_n2=>$n2) { ?>
                                            <ul class="col-sm-3">
                                                <li><a href="<?php echo $n2['url']; ?>" <?php if ($n2['target']) { ?>target="_blank"<?php } ?>><?php echo $n2['name']; ?></a></li>
                                                
                                                <?php if ($n2['child']) {  $return_n3 = $this->list_tag("action=navigator type=0 pid=$n2[id]  return=n3"); if ($return_n3) extract($return_n3); $count_n3=count($return_n3); if (is_array($return_n3)) { foreach ($return_n3 as $key_n3=>$n3) { ?>
                                                        <li><a href="<?php echo $n3['url']; ?>" <?php if ($n3['target']) { ?>target="_blank"<?php } ?>><?php echo $n3['name']; ?></a></li>
                                                    <?php } }  } ?>
                                            </ul>
                                        <?php } } ?>
                                           
                                        </div><!-- end row -->
                                    </div>
                                </li>
                                <?php } else {  $return_n2 = $this->list_tag("action=navigator type=0 pid=$t[id]  return=n2"); if ($return_n2) extract($return_n2); $count_n2=count($return_n2); if (is_array($return_n2)) { foreach ($return_n2 as $key_n2=>$n2) { ?>
                                    <li><a href="<?php echo $n2['url']; ?>" <?php if ($n2['target']) { ?>target="_blank"<?php } ?>><?php echo $n2['name']; ?></a></li>
                                    <?php } }  } ?>
                                
                               
                            </ul><!-- end dropdown-menu -->
                        <?php } ?>
                        </li><!-- end drop down -->
                        <?php } } ?>
					</ul><!-- end navbar-nav -->
				</div><!-- #navbar-collapse-1 -->
			</div><!-- end navbar yamm navbar-default -->
		</div><!-- end container -->
</header><!-- end header-style-1 -->