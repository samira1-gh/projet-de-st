{if $twitterusername}

    <h2>{$LANG.twitterlatesttweets}</h2>

    <div id="twitterFeedOutput">
        <p class="text-center"><img src="{$BASE_PATH_IMG}/loading.gif" /></p>
    </div>

    <script type="text/javascript" src="templates/{$template}/js/twitter.js"></script>

{elseif $announcements}

    <div class="text-center"><h2 class="h2">{$LANG.news}</h2><div>
	
	<div class="text-left">
    {foreach $announcements as $announcement}
        {if $announcement@index < 2}
            <div class="announcement-single">
					
				<div class="col-md-6">
                <h3>
                    <span class="label label-default">
                        {$carbon->translatePassedToFormat($announcement.rawDate, 'M jS')}
                    </span>
                    <a href="{routePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}" class="de-newstitle">{$announcement.title}</a>
                </h3>

                    <p>
                        {if $announcement.text|strip_tags|strlen < 350}
                            {$announcement.text}
                        {else}
                            {$announcement.summary}
                            <a href="{routePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}" class="label label-warning">{$LANG.readmore} &raquo;</a>
                        {/if}
                    </p>				
				
				<div class="spacer-single"></div>
				
                {if $announcementsFbRecommend}
                    <script>
                        (function(d, s, id) {
                            var js, fjs = d.getElementsByTagName(s)[0];
                            if (d.getElementById(id)) {
                                return;
                            }
                            js = d.createElement(s); js.id = id;
                            js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
                            fjs.parentNode.insertBefore(js, fjs);
                        }(document, 'script', 'facebook-jssdk'));
                    </script>
                    <div class="fb-like hidden-sm hidden-xs" data-layout="standard" data-href="{fqdnRoutePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}" data-send="true" data-width="450" data-show-faces="true" data-action="recommend"></div>
                    <div class="fb-like hidden-lg hidden-md" data-layout="button_count" data-href="{fqdnRoutePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}" data-send="true" data-width="450" data-show-faces="true" data-action="recommend"></div>
                {/if}
            </div>
			</div>
        {/if}
    {/foreach}
	
	<div class="clearfix"></div>
	
	</div>
{/if}
