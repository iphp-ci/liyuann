<!doctype html>
<html>
	<head>
		<meta charset="UTF-8" />
		<title>omooo系统维护工具登录</title>
		<meta name="robots" content="noindex,nofollow">
		<link href="<?php echo SITE_PATH;  echo APP_DIR; ?>/statics/admin_login.css" rel="stylesheet" type="text/css" />
	</head>
<body>
<div class="wrap">
    <form method="post" name="login" action="" autoComplete="off">
        <div class="login">
            <ul>
                <li>
                    <input class="input" required name="pwd" value="<?php echo $value; ?>" type="text" placeholder="安全认证密码" />
                </li>
            </ul>
            <button type="submit" name="submit" class="btn">登录管理系统</button>
        </div>
    </form>
</div>
</body>
</html>