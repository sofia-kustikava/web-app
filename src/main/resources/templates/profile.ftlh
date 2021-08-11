<#import "parts/common.ftlh" as c>
<@c.page>
    ${message!" "?ifExists}
    <h5>${username}</h5>
    <form method="post" action="password" id="password-form">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label" for="password">Password:</label>
            <div class="col-sm-5">
                <input id="password" type="password" name="password" class="form-control" placeholder="Password"/>
            </div>
        </div>
        <#--            <div class="form-group row">-->
        <#--                <label class="col-sm-2 col-form-label"> Email: </label>-->
        <#--                <div class="col-sm-5">-->
        <#--                    <input type="email" name="email" class="form-control" placeholder="example@mail.com" value="${email!''}"/>-->
        <#--                </div>-->
        <#--            </div>-->
        <input type="hidden" name="_csrf" value="${_csrf.token}" id="tok">
        <button id="password-sbm-btn" class="btn btn-primary" type="submit">Save</button>

<#--        <div class="alert alert-warning alert-dismissible fade show" role="alert">-->
<#--            <strong>You've changed your password!</strong> Ha ha-->
<#--            <button type="button" class="close" data-dismiss="alert" aria-label="Close">-->
<#--                <span aria-hidden="true">&times;</span>-->
<#--            </button>-->
<#--        </div>-->
        <div class="container" id="result">

        </div>
    </form>

</@c.page>