<div id="forum_header">
<div><{$folder_topic}> <a href="<{$smarty.const.CBBX_URL}>/index.php"><{$lang_forum_index}></a></div>

<{if $parent_forum}>
<div>&nbsp;&nbsp;<{$folder_topic}> <a href="<{$smarty.const.CBBX_URL}>/viewforum.php?forum=<{$parent_forum}>"><{$parent_name}></a></div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;<{$folder_topic}> <a href="<{$smarty.const.CBBX_URL}>/viewforum.php?forum=<{$forum_id}>"><{$forum_name}></a></div>
<{elseif $forum_name}>
<div>&nbsp;&nbsp;<{$folder_topic}> <a href="<{$smarty.const.CBBX_URL}>/viewforum.php?forum=<{$forum_id}>"><{$forum_name}></a></div>
<{/if}>
<div>&nbsp;&nbsp; <{$post_content}> <strong><{$lang_title}></strong></div>
</div>
<div class="clear"></div>

<br />
<div>
<div class="dropdown">
<{if $menumode eq 0}>

	<select
		name="topicoption" id="topicoption"
		class="menu"
		onchange="javascript: if(this.options[this.selectedIndex].value.length >0 )	{ window.document.location=this.options[this.selectedIndex].value;}"
	>
		<option value=""><{$smarty.const._MD_CBBX_TOPICOPTION}></option>
		<option value="<{$post_link}>"><{$smarty.const._MD_CBBX_VIEW}>&nbsp;<{$smarty.const._MD_CBBX_ALLPOSTS}></option>
		<option value="<{$newpost_link}>"><{$smarty.const._MD_CBBX_VIEW}>&nbsp;<{$smarty.const._MD_CBBX_NEWPOSTS}></option>
		<option value="<{$all_link}>"><{$smarty.const._MD_CBBX_VIEW}>&nbsp;<{$smarty.const._MD_CBBX_ALL}></option>
		<option value="<{$digest_link}>"><{$smarty.const._MD_CBBX_VIEW}>&nbsp;<{$smarty.const._MD_CBBX_DIGEST}></option>
		<option value="<{$unreplied_link}>"><{$smarty.const._MD_CBBX_VIEW}>&nbsp;<{$smarty.const._MD_CBBX_UNREPLIED}></option>
		<option value="<{$unread_link}>"><{$smarty.const._MD_CBBX_VIEW}>&nbsp;<{$smarty.const._MD_CBBX_UNREAD}></option>
		<option value="">--------</option>
		<{foreach item=menu from=$menumode_other}>
		<option value="<{$menu.link}>"><{$menu.title}></option>
		<{/foreach}>
	</select>

<{elseif $menumode eq 1}>
	<div id="topicoption" class="menu">
	<table><tr><td>
		<a class="item" href="<{$post_link}>"><{$smarty.const._MD_CBBX_VIEW}>&nbsp;<{$smarty.const._MD_CBBX_ALLPOSTS}></a>
		<a class="item" href="<{$newpost_link}>"><{$smarty.const._MD_CBBX_VIEW}>&nbsp;<{$smarty.const._MD_CBBX_NEWPOSTS}></a>
		<a class="item" href="<{$all_link}>"><{$smarty.const._MD_CBBX_VIEW}>&nbsp;<{$smarty.const._MD_CBBX_ALL}></a>
		<a class="item" href="<{$digest_link}>"><{$smarty.const._MD_CBBX_VIEW}>&nbsp;<{$smarty.const._MD_CBBX_DIGEST}></a>
		<a class="item" href="<{$unreplied_link}>"><{$smarty.const._MD_CBBX_VIEW}>&nbsp;<{$smarty.const._MD_CBBX_UNREPLIED}></a>
		<a class="item" href="<{$unread_link}>"><{$smarty.const._MD_CBBX_VIEW}>&nbsp;<{$smarty.const._MD_CBBX_UNREAD}></a>
		<div class="separator"></div>
		<{foreach item=menu from=$menumode_other}>
		<a class="item" href="<{$menu.link}>"><{$menu.title}></a>
		<{/foreach}>
	</td></tr></table>
	</div>
	<script type="text/javascript">document.getElementById("topicoption").onmouseout = closeMenu;</script>
	<div class="menubar"><a href="" onclick="openMenu(event, 'topicoption');return false;"><{$smarty.const._MD_CBBX_TOPICOPTION}></a></div>

<{elseif $menumode eq 2}>
	<div class="menu">
		<ul>
			<li>
				<div class="item"><strong><{$smarty.const._MD_CBBX_TOPICOPTION}></strong></div>
				<ul>
				<li><table><tr><td>
	                <div class="item"><a href="<{$post_link}>"><{$smarty.const._MD_CBBX_VIEW}>&nbsp;<{$smarty.const._MD_CBBX_ALLPOSTS}></a></div>
	                <div class="item"><a href="<{$newpost_link}>"><{$smarty.const._MD_CBBX_VIEW}>&nbsp;<{$smarty.const._MD_CBBX_NEWPOSTS}></a></div>
	                <div class="item"><a href="<{$all_link}>"><{$smarty.const._MD_CBBX_VIEW}>&nbsp;<{$smarty.const._MD_CBBX_ALL}></a></div>
	                <div class="item"><a href="<{$digest_link}>"><{$smarty.const._MD_CBBX_VIEW}>&nbsp;<{$smarty.const._MD_CBBX_DIGEST}></a></div>
	                <div class="item"><a href="<{$unreplied_link}>"><{$smarty.const._MD_CBBX_VIEW}>&nbsp;<{$smarty.const._MD_CBBX_UNREPLIED}></a></div>
	                <div class="item"><a href="<{$unread_link}>"><{$smarty.const._MD_CBBX_VIEW}>&nbsp;<{$smarty.const._MD_CBBX_UNREAD}></a></div>
					<div class="separator"></div>
					<{foreach item=menu from=$menumode_other}>
					<div class="item"><a href="<{$menu.link}>"><{$menu.title}></a></div>
					<{/foreach}>
				</td></tr></table></li>
				</ul>
			</li>
		</ul>
	</div>

<{/if}>
</div>
<div style="padding: 5px;float: right; text-align:right;">
<{$pagenav}>
</div>
</div>
<div class="clear"></div>
<br />
<br />

<table class="outer" cellpadding="6" cellspacing="1" border="0" width="100%" align="center">

    <tr class="head" align="left">
		<th colspan="2" align="center"><strong><{$smarty.const._MD_CBBX_POSTS}></strong></th>
		<th width="15%" align="center" nowrap="nowrap"><strong><{$smarty.const._MD_CBBX_FORUM}></strong></th>
		<th width="15%" align="center" nowrap="nowrap"><strong><{$smarty.const._MD_CBBX_POSTER}></strong></th>
		<th width="15%" align="center" nowrap="nowrap"><strong><{$smarty.const._MD_CBBX_DATE}></strong></th>
	</tr>

  <!-- start forum topic -->
<{foreach name=loop item=post from=$posts}>
  <tr class="<{cycle values="even,odd"}>">
    <td width="4%" align="center"><{$post.image}></td>
    <td>&nbsp;<{$post.title}></td>
    <td align="left" valign="middle"><{$post.forum}></td>
    <td align="center" valign="middle"><{$post.poster}></td>
    <td align="right" valign="middle"><{$post.time}></td>
  </tr>
<{/foreach}>
  <!-- end forum topic -->
</table>
<!-- end forum main table -->

<br />

<div style="padding: 5px; float: right; text-align:right;">
<{$pagenav}>
</div>
<div class="clear"></div>

<br />
<br />
<div>
<div style="float: left; text-align: left;">
<form action="search.php" method="get">
<input name="term" id="term" type="text" size="15" />
<input type="hidden" name="sortby" id="sortby" value="p.post_time desc" />
<input type="hidden" name="action" id="action" value="yes" />
<input type="hidden" name="searchin" id="searchin" value="both" />
<input type="submit" class="formButton" value="<{$smarty.const._MD_CBBX_SEARCH}>" /><br />
[<a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/search.php"><{$smarty.const._MD_CBBX_ADVSEARCH}></a>]
</form>
</div>
<div style="float: right; text-align: right;">
<{$forum_jumpbox}>
</div>
</div>
<div class="clear"></div>
<br />
<br />

<{if $online}><{include file="db:cbbx_online.tpl"}><{/if}>
<{include file=$system_notification_select}>
<!-- end module contents -->