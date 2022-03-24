<!-- Styling -->
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600|Raleway:400,700" rel="stylesheet">
<link href="{$WEB_ROOT}/templates/{$template}/css/all.min.css?v={$versionHash}" rel="stylesheet">
<link href="{$WEB_ROOT}/assets/css/fontawesome-all.min.css" rel="stylesheet">
<link href="{$WEB_ROOT}/templates/{$template}/css/custom.css" rel="stylesheet">

<!-- CSS Files
    ================================================== -->
    <link href="{$WEB_ROOT}/templates/{$template}/assets/css/animate.css" rel="stylesheet" type="text/css">
    <link href="{$WEB_ROOT}/templates/{$template}/assets/css/owl.carousel.css" rel="stylesheet" type="text/css">
    <link href="{$WEB_ROOT}/templates/{$template}/assets/css/owl.theme.css" rel="stylesheet" type="text/css">
    <link href="{$WEB_ROOT}/templates/{$template}/assets/css/owl.transitions.css" rel="stylesheet" type="text/css">
    <link href="{$WEB_ROOT}/templates/{$template}/assets/css/magnific-popup.css" rel="stylesheet" type="text/css">
	<link href="{$WEB_ROOT}/templates/{$template}/assets/css/jquery.countdown.css" rel="stylesheet" type="text/css">
    <link href="{$WEB_ROOT}/templates/{$template}/assets/css/style.css" rel="stylesheet" type="text/css">
	<link href="{$WEB_ROOT}/templates/{$template}/assets/css/background.css" rel="stylesheet" type="text/css">
    <link href="{$WEB_ROOT}/templates/{$template}/assets/css/override.css" rel="stylesheet" type="text/css">

    <!-- fonts -->
    <link id="font-style-main" href="https://use.typekit.net/oxd2nuf.css" rel="stylesheet" type="text/css">
    <link href="{$WEB_ROOT}/templates/{$template}/assets/fonts/font-awesome-5/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="{$WEB_ROOT}/templates/{$template}/assets/fonts/font-awesome-4/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="{$WEB_ROOT}/templates/{$template}/assets/fonts/font-awesome-5/css/fontawesome.min.css" rel="stylesheet" type="text/css">
    <link href="{$WEB_ROOT}/templates/{$template}/assets/fonts/elegant_font/HTML_CSS/style.css" rel="stylesheet" type="text/css">
    <link href="{$WEB_ROOT}/templates/{$template}/assets/fonts/et-line-font/style.css" rel="stylesheet" type="text/css">
    
    <!-- color scheme -->
    <link id="colors" href="{$WEB_ROOT}/templates/{$template}/assets/css/color-scheme.css" rel="stylesheet" type="text/css">
	<link href="{$WEB_ROOT}/templates/{$template}/assets/css/coloring.css" rel="stylesheet" type="text/css">

    <!-- RS5.0 Stylesheet -->
    <link href="{$WEB_ROOT}/templates/{$template}/assets/revolution/css/settings.css" rel="stylesheet" type="text/css">
    <link href="{$WEB_ROOT}/templates/{$template}/assets/revolution/css/layers.css" rel="stylesheet" type="text/css">
    <link href="{$WEB_ROOT}/templates/{$template}/assets/revolution/css/navigation.css" rel="stylesheet" type="text/css">
    <link href="{$WEB_ROOT}/templates/{$template}/assets/css/rev-settings.css" rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

<script type="text/javascript">
    var csrfToken = '{$token}',
        markdownGuide = '{lang key="markdown.title"}',
        locale = '{if !empty($mdeLocale)}{$mdeLocale}{else}en{/if}',
        saved = '{lang key="markdown.saved"}',
        saving = '{lang key="markdown.saving"}',
        whmcsBaseUrl = "{\WHMCS\Utility\Environment\WebHelper::getBaseUrl()}",
        requiredText = '{lang key="orderForm.required"}',
        recaptchaSiteKey = "{if $captcha}{$captcha->recaptcha->getSiteKey()}{/if}";
</script>
<script src="{$WEB_ROOT}/templates/{$template}/js/scripts.min.js?v={$versionHash}"></script>


<!-- BY DESIGNESIA -->
<!-- Javascript Files
    ================================================== -->
        <script src="{$WEB_ROOT}/templates/{$template}/assets/js/wow.min.js"></script>
        <script src="{$WEB_ROOT}/templates/{$template}/assets/js/jquery.isotope.min.js"></script>
        <script src="{$WEB_ROOT}/templates/{$template}/assets/js/easing.js"></script>
        <script src="{$WEB_ROOT}/templates/{$template}/assets/js/owl.carousel.js"></script>
        <script src="{$WEB_ROOT}/templates/{$template}/assets/js/validation.js"></script>
        <script src="{$WEB_ROOT}/templates/{$template}/assets/js/jquery.magnific-popup.min.js"></script>
        <script src="{$WEB_ROOT}/templates/{$template}/assets/js/enquire.min.js"></script>
        <script src="{$WEB_ROOT}/templates/{$template}/assets/js/jquery.stellar.min.js"></script>
        <script src="{$WEB_ROOT}/templates/{$template}/assets/js/jquery.plugin.js"></script>
        <script src="{$WEB_ROOT}/templates/{$template}/assets/js/typed.js"></script>
        <script src="{$WEB_ROOT}/templates/{$template}/assets/js/typed-custom.js"></script>
		<script src="{$WEB_ROOT}/templates/{$template}/assets/js/jquery.countTo.js"></script>
        <script src="{$WEB_ROOT}/templates/{$template}/assets/js/jquery.countdown.js"></script>
        <script src="{$WEB_ROOT}/templates/{$template}/assets/js/designesia.js"></script>
        
        <!-- RS5.0 Core JS Files -->
        <script src="{$WEB_ROOT}/templates/{$template}/assets/revolution/js/jquery.themepunch.tools.min.js?rev=5.0"></script>
        <script src="{$WEB_ROOT}/templates/{$template}/assets/revolution/js/jquery.themepunch.revolution.min.js?rev=5.0"></script>
        
		<!-- RS5.0 Extensions Files -->
        <script src="{$WEB_ROOT}/templates/{$template}/assets/revolution/js/extensions/revolution.extension.video.min.js"></script>
        <script src="{$WEB_ROOT}/templates/{$template}/assets/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
        <script src="{$WEB_ROOT}/templates/{$template}/assets/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
        <script src="{$WEB_ROOT}/templates/{$template}/assets/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
        <script src="{$WEB_ROOT}/templates/{$template}/assets/revolution/js/extensions/revolution.extension.actions.min.js"></script>
        <script src="{$WEB_ROOT}/templates/{$template}/assets/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
        <script src="{$WEB_ROOT}/templates/{$template}/assets/revolution/js/extensions/revolution.extension.migration.min.js"></script>
        <script src="{$WEB_ROOT}/templates/{$template}/assets/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
        <!-- current page only scripts -->
        
        <script>
            jQuery(document).ready(function() {
                // revolution slider
                jQuery("#revolution-slider").revolution({
                    sliderType: "standard",
                    sliderLayout: "fullwidth",
                    delay: 5000,
                    navigation: {
                        arrows: {
                            enable: true
                        }
                    },
                    parallax: {
                        type: "mouse",
                        origo: "slidercenter",
                        speed: 2000,
                        levels: [2, 3, 4, 5, 6, 7, 12, 16, 10, 50],
                    },
                    spinner: "off",
                    gridwidth: 1140,
                    gridheight: 600,
                    disableProgressBar: "on"
                });
            });
        </script>
<!-- BY DESIGNESIA -->

	

{if $templatefile == "viewticket" && !$loggedin}
  <meta name="robots" content="noindex" />
{/if}
