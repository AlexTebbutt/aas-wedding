<?php
    define('PERCH_LICENSE_KEY', 'P21506-QNR026-MYS362-PAB882-DND021');

		$http_host = getenv('HTTP_HOST');


		switch($http_host)
		{
			case('wedding.dev') :
			  define("PERCH_DB_USERNAME", 'aas_perch');
			  define("PERCH_DB_PASSWORD", 'password');
			  define("PERCH_DB_SERVER", "localhost");
			  define("PERCH_DB_DATABASE", "aas_perch");
				break;
			
			case('alexandshikha.ifnotwhynot.com') :
			  define("PERCH_DB_USERNAME", 'ifnotwhy_aas');
			  define("PERCH_DB_PASSWORD", 'vpDumn8vghaoa7Aq');
			  define("PERCH_DB_SERVER", "localhost");
			  define("PERCH_DB_DATABASE", "ifnotwhy_aas");
			  break;
			
			default :
			  define("PERCH_DB_USERNAME", 'alexands_perch');
			  define("PERCH_DB_PASSWORD", 'vpDumn8vghaoa7Aq');
			  define("PERCH_DB_SERVER", "10.169.0.20");
			  define("PERCH_DB_DATABASE", "alexands_perch");
			  break;
		}


	  define("PERCH_DB_PREFIX", "perch2_");
   
    define('PERCH_TZ', 'UTC');

    define('PERCH_EMAIL_FROM', 'alex@ifnotwhynot.com');
    define('PERCH_EMAIL_FROM_NAME', 'Alex Tebbutt');

    define('PERCH_LOGINPATH', '/perch');
    define('PERCH_PATH', str_replace(DIRECTORY_SEPARATOR.'config', '', __DIR__));
    define('PERCH_CORE', PERCH_PATH.DIRECTORY_SEPARATOR.'core');

    define('PERCH_RESFILEPATH', PERCH_PATH . DIRECTORY_SEPARATOR . 'resources');
    define('PERCH_RESPATH', PERCH_LOGINPATH . '/resources');
    
    define('PERCH_HTML5', true);
//     define('PERCH_DEBUG', true);
