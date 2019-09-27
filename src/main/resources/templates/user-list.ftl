<#import  "parts/common.ftl" as c>

<@c.page "Users list">
    List users
    <table>
        <thead>
        <tr>
            <td>Name</td>
            <td>Role</td>
        </tr>
        </thead>
        <tbody>
        <#list users as user>
            <tr>
                <td>${user.username}</td>
                <td><#list user.roles as role>${role}<#sep>, </#list></td>
                <td><a href="/user/${user.id}">Edit</a></td>
            </tr>
        </#list>
        </tbody>
    </table>

</@c.page>