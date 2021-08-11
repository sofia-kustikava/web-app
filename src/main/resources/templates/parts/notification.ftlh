<#include "security.ftlh">

<#macro notification>
<#--    <#if user.updateProfile??>-->
        <form method="post">
            <div class="toast" role="alert" aria-live="assertive" aria-atomic="true">
                <div class="toast-header">
                    <img src="..." class="rounded mr-2" alt="...">
                    <strong class="mr-auto">Bootstrap</strong>
                    <small>right now</small>
                    <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="toast-body">
                    You've changed your password!
                </div>
            </div>
        </form>
<#--    </#if>-->
</#macro>