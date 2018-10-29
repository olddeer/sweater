<#include "security.ftl">

<div class="card-columns" id="message-list">
    <#assign x = true>
    <#list messages as message>
        <div class="card my-3" data-id="${message.id}">
            <#if message.filename??>
                <img src="/img/${message.filename}" class="card-img-top" />
            </#if>
            <div class="m-2">
                <span>${message.text}</span><br/>
                <i>#${message.tag}</i>
             <div class="demo">
        <#if message.users??>
         <#list message.users as users>
             <#if users.id ==  currentUser.id>
                 <#global x = false>
             </#if>
        </#list>
        </#if>

        <input id="msg${message.id}" type="hidden" value="${message.id}" >
               <input id="usr${message.id}" type="hidden" value="${currentUser.id}" >

             </div>
            </div>
            <div class="card-footer text-muted">
                <a href="/user-messages/${message.author.id}">${message.authorName}</a>
                <#if message.author.id == currentUserId>
                    <a class="btn btn-primary" href="/user-messages/${message.author.id}?message=${message.id}">
                        Edit
                    </a>
                </#if>
                <#if x>

            <button class="heart" onclick="likeIt('msg${message.id}','usr${message.id}','likes${message.id}')">
            </button><span  class="likes"  id="likes${message.id}">${message.countOfLikes}</span>

                <#else>
              <button class="heart" onclick="likeIt()" style="background-position: right">
              </button>
      <span class="likes" id="likes${message.id}" > ${message.countOfLikes}</span>

                </#if>

            </div>
        </div>
    <#else>
        No message
    </#list>
</div>
