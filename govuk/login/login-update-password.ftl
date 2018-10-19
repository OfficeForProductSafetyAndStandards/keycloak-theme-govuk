<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
    <#if section = "header">
        ${msg("resetPasswordMessage")}
    <#elseif section = "form">
        <div class="govuk-grid-row">
            <form id="kc-passwd-update-form" class="${properties.kcFormClass!} govuk-grid-column-two-thirds" action="${url.loginAction}" method="post">
                <input type="text" id="username" name="username" value="${username}" autocomplete="username" readonly="readonly" style="display:none;"/>
                <input type="password" id="password" name="password" autocomplete="current-password" style="display:none;"/>

                <div class="govuk-form-group">
                    <label for="password-new" class="govuk-label">${msg("passwordNew")}</label>
                    <input type="password" id="password-new" name="password-new" class="govuk-input" autofocus autocomplete="new-password" />
                </div>

                <div class="govuk-form-group">
                    <label for="password-confirm" class="govuk-label">${msg("passwordConfirm")}</label>
                    <input type="password" id="password-confirm" name="password-confirm" class="govuk-input" autocomplete="new-password" />
                </div>

                <div class="govuk-form-group">
                    <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                        <div class="${properties.kcFormOptionsWrapperClass!}">
                        </div>
                    </div>
                    <input class="govuk-button" type="submit" value="${msg("doSubmit")}"/>
                </div>
            </form>
        </div>
    </#if>
</@layout.registrationLayout>
