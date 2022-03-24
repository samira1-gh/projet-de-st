<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="{$charset}" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{if $kbarticle.title}{$kbarticle.title} - {/if}{$pagetitle} - {$companyname}</title>

    {include file="$template/includes/head.tpl"}

    {$headoutput}

</head>
<body data-phone-cc-input="{$phoneNumberInputStyle}">

{$headeroutput}

<header class="header-s1 has-topbar">
		<div id="de_topbar" class="text-white">
				<div class="container">
					<div class="topbar-left sm-hide">
						<span class="topbar-widget">
							<a href="#"><strong>NEW: You can insert any text here...</strong></a>
						</span>
					</div>
				
					<div class="topbar-right">
						<div class="topbar-widget"><a href="#">
							<ul class="top-nav">
            {if $languagechangeenabled && count($locales) > 1}
                <li>
                    <a href="#" class="choose-language" data-toggle="popover" id="languageChooser">
                        {$activeLocale.localisedName}
                        <b class="caret"></b>
                    </a>
                    <div id="languageChooserContent" class="hidden">
                        <ul>
                            {foreach $locales as $locale}
                                <li>
                                    <a href="{$currentpagelinkback}language={$locale.language}">{$locale.localisedName}</a>
                                </li>
                            {/foreach}
                        </ul>
                    </div>
                </li>
            {/if}
            {if $loggedin}
                <li>
                    <a href="#" data-toggle="popover" id="accountNotifications" data-placement="bottom">
                        {$LANG.notifications}
                        {if count($clientAlerts) > 0}
                            <span class="label label-info">{lang key='notificationsnew'}</span>
                        {/if}
                        <b class="caret"></b>
                    </a>
                    <div id="accountNotificationsContent" class="hidden">
                        <ul class="client-alerts">
                        {foreach $clientAlerts as $alert}
                            <li>
                                <a href="{$alert->getLink()}">
                                    <i class="fas fa-fw fa-{if $alert->getSeverity() == 'danger'}exclamation-circle{elseif $alert->getSeverity() == 'warning'}exclamation-triangle{elseif $alert->getSeverity() == 'info'}info-circle{else}check-circle{/if}"></i>
                                    <div class="message">{$alert->getMessage()}</div>
                                </a>
                            </li>
                        {foreachelse}
                            <li class="none">
                                {$LANG.notificationsnone}
                            </li>
                        {/foreach}
                        </ul>
                    </div>
                </li>
                <li class="primary-action">
                    <a href="{$WEB_ROOT}/logout.php" class="btn">
                        {$LANG.clientareanavlogout}
                    </a>
                </li>
            {else}
                <li>
                    <a href="{$WEB_ROOT}/clientarea.php">{$LANG.login}</a>
                </li>
                {if $condlinks.allowClientRegistration}
                    <li>
                        <a href="{$WEB_ROOT}/register.php">{$LANG.register}</a>
                    </li>
                {/if}
                <li class="primary-action">
                    <a href="{$WEB_ROOT}/cart.php?a=view" class="btn">
                        {$LANG.viewcart}
                    </a>
                </li>
            {/if}
            {if $adminMasqueradingAsClient || $adminLoggedIn}
                <li>
                    <a href="{$WEB_ROOT}/logout.php?returntoadmin=1" class="btn btn-logged-in-admin" data-toggle="tooltip" data-placement="bottom" title="{if $adminMasqueradingAsClient}{$LANG.adminmasqueradingasclient} {$LANG.logoutandreturntoadminarea}{else}{$LANG.adminloggedin} {$LANG.returntoadminarea}{/if}">
                        <i class="fas fa-sign-out-alt"></i>
                    </a>
                </li>
            {/if}
        </ul>
						</div>
					</div>	
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		
		<div class="container">
                <div class="row">
                    <div class="col-md-12">

                        <div class="header-row">
                            <div class="header-col left">
                                <!-- logo begin -->
                                <div id="logo">
                                    {if $assetLogoPath}
										<a href="{$WEB_ROOT}/index.php"><img src="{$assetLogoPath}" alt="{$companyname}" class="logo"><img src="{$assetLogoPath}" alt="{$companyname}" class="logo-2"></a>
									{else}
										<a href="{$WEB_ROOT}/index.php"><img src="{$WEB_ROOT}/templates/{$template}/img/logo.png" alt="{$companyname}" class="logo"><img src="{$WEB_ROOT}/templates/{$template}/img/logo.png" alt="{$companyname}" class="logo-2"></a>
									{/if}
                                </div>
                                <!-- logo close -->
                            </div>
                            <div class="header-col mid">
                                <!-- mainmenu begin -->
                                <ul id="mainmenu">

									{include file="$template/includes/navbar.tpl" navbar=$primaryNavbar}

                                    {include file="$template/includes/navbar.tpl" navbar=$secondaryNavbar}
                                    
								</ul>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <!-- small button begin -->
                        <span id="menu-btn"></span>
                        <!-- small button close -->

                    </div>
                </div>
            </div>
	
				
    

</header>

		

{if $templatefile == 'homepage'}

	{include file="$template/assets/homepage.tpl"}
    
{/if}


		{if $templatefile != 'homepage'}
                {include file="$template/includes/pageheader.tpl" title=$displayTitle desc=$tagline showbreadcrumb=false}
            
        {/if}
		
		


{include file="$template/includes/verifyemail.tpl"}

<section id="main-body">
    <div class="container{if $skipMainBodyContainer}-fluid without-padding{/if}">
        <div class="row">

        {if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}
            {if $primarySidebar->hasChildren() && !$skipMainBodyContainer}
                <!--<div class="col-md-9 pull-md-right">
                    {include file="$template/includes/pageheader.tpl" title=$displayTitle desc=$tagline showbreadcrumb=true}
                </div>-->
            {/if}
            <div class="col-md-3 pull-md-left sidebar">
                {include file="$template/includes/sidebar.tpl" sidebar=$primarySidebar}
				
				{if !$inShoppingCart && $secondarySidebar->hasChildren()}
                        {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
                {/if}
            </div>
        {/if}
		
				
        <!-- Container for main page display content -->
        <div class="{if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}col-md-9 pull-md-right{else}col-xs-12{/if} main-content">
            {if !$primarySidebar->hasChildren() && !$showingLoginPage && !$inShoppingCart && $templatefile != 'homepage' && !$skipMainBodyContainer}
                <!--{include file="$template/includes/pageheader.tpl" title=$displayTitle desc=$tagline showbreadcrumb=true}-->
            {/if}
