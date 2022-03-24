<section id="home-banner" class="no-top no-bottom text-light" data-stellar-background-ratio=".2">
    <div class="overlay-gradient t80">
        <div class="container text-center">
            {if $registerdomainenabled || $transferdomainenabled}
            <h2>{$LANG.homebegin}</h2>
            <form method="post" action="domainchecker.php" id="frmDomainHomepage">
                <input type="hidden" name="transfer" />
                <div class="row">
                    <div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1">
                        <div class="input-group input-group-lg">
                            <input
                                type="text"
                                class="form-control"
                                name="domain"
                                placeholder="{$LANG.exampledomain}"
                                autocapitalize="none"
                                data-toggle="tooltip"
                                data-placement="left"
                                data-trigger="manual"
                                title="{lang key='orderForm.required'}"
                            />

                            <span class="input-group-btn">
                                {if $registerdomainenabled}
                                <input type="submit" class="btn search{$captcha->getButtonClass($captchaForm)}" value="{$LANG.search}" />
                                {/if}
                                <!--{if $transferdomainenabled}
                                        <input type="submit" id="btnTransfer" class="btn transfer{$captcha->getButtonClass($captchaForm)}" value="{$LANG.domainstransfer}" />*/
                                    {/if}-->
                            </span>
                        </div>

                        <!-- EDIT BEGIN -->
                        <div class="clearfix"></div>
                        <div class="spacer-10"></div>
                        <div class="domain-ext">
                            <div class="ext">
                                <h4>.com</h4>
                                $4.99/year
                            </div>

                            <div class="ext">
                                <h4>.net</h4>
                                $3.99/year
                            </div>

                            <div class="ext">
                                <h4>.co</h4>
                                $2.99/year
                            </div>

                            <div class="ext">
                                <h4>.info</h4>
                                $3.90/year
                            </div>

                            <div class="ext">
                                <h4>.biz</h4>
                                $5.99/year
                            </div>
                        </div>
                        <!-- EDIT CLOSE -->

                        {include file="$template/includes/captcha.tpl"}
                    </div>
                </div>
            </form>
            {else}
            <h2>{$LANG.doToday}</h2>
            {/if}
        </div>
    </div>
</section>
