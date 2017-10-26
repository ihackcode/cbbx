<!-- start module contents -->

<table border="0" cellpadding="5" align="center">
  <tr>
    <td colspan="2" align="left"><{$img_folder}>&nbsp;&nbsp;<a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/index.php"><{$forumindex}></a><br />
		&nbsp;&nbsp;&nbsp;<{$img_folder}>&nbsp;&nbsp;<a href="search.php"><{$smarty.const._SR_SEARCH}></a></td>
  </tr>
</table>
<{if $search_info}>
<{include file="db:cbbx_searchresults.tpl" results=$results}>
<{/if}>
<form name="Search" action="search.php" method="get">
  <table class="outer" border="0" cellpadding="1" cellspacing="0" align="center" width="95%">
    <tr>
      <td><table border="0" cellpadding="1" cellspacing="1" width="100%" class="head">
          <tr>
            <td class="head" width="10%" align="right"><strong><{$smarty.const._SR_KEYWORDS}></strong>&nbsp;</td>
            <td class="even"><input type="text" name="term" /></td>
          </tr>
          <tr>
            <td class="head" align="right"><strong><{$smarty.const._SR_TYPE}></strong>&nbsp;</td>
            <td class="even">
	            <select name="andor">
	            <option value="any" selected="selected"><{$smarty.const._SR_ANY}></option>
	            <option value="all"><{$smarty.const._SR_ALL}></option>
	            <option value="exact"><{$smarty.const._SR_EXACT}></option>
	            </select>
            </td>
          </tr>
          <tr>
            <td class="head" align="right"><strong><{$smarty.const._MD_CBBX_FORUMC}></strong>&nbsp;</td>
            <td class="even"><{$forum_selection_box}></td>
          </tr>
          <tr>
            <td class="head" align="right"><strong><{$smarty.const._SR_SEARCHIN}></strong>&nbsp;</td>
            <td class="even"><input type="radio" name="searchin" value="title" /><{$smarty.const._MD_CBBX_SUBJECT}>&nbsp;&nbsp;
              <input type="radio" name="searchin" value="text" /><{$smarty.const._MD_CBBX_BODY}>&nbsp;&nbsp;
              <input type="radio" name="searchin" value="both" checked="checked" /><{$smarty.const._MD_CBBX_SUBJECT}> & <{$smarty.const._MD_CBBX_BODY}>&nbsp;&nbsp;</td>
          </tr>
          <tr>
            <td class="head" align="right"><strong><{$smarty.const._MD_CBBX_AUTHOR}></strong>&nbsp;</td>
            <td class="even"><input type="text" name="uname" value="" /></td>
          </tr>
          <tr>
            <td class="head" align="right"><strong><{$smarty.const._MD_CBBX_SORTBY}></strong>&nbsp;</td>
            <td class="even">
            	<select name=="sortby">
            	<option value="p.post_time desc" selected="selected"><{$smarty.const._MD_CBBX_DATE}></option>
              	<option value="t.topic_title"><{$smarty.const._MD_CBBX_TOPIC}></option>
              	<option value="f.forum_name"><{$smarty.const._MD_CBBX_FORUM}></option>
              	<option value="u.uname"><{$smarty.const._MD_CBBX_USERNAME}></option>
              	</select>
          	</td>
          </tr>
          <tr>
            <td class="head" align="right"><strong><{$smarty.const._MD_CBBX_SINCE}></strong>&nbsp;</td>
            <td class="even"><{$since_selection_box}></td>
          </tr>
          <{if $search_rule}>
          <tr>
            <td class="head" align="right"><strong><{$smarty.const._SR_SEARCHRULE}></strong>&nbsp;</td>
            <td class="even"><{$search_rule}></td>
          </tr>
          <{/if}>
          <tr>
            <td class="head" align="right">&nbsp;</td>
            <td class="even"><input type="submit" name="submit" value="<{$smarty.const._MD_CBBX_SEARCH}>" /></td>
        </table></td>
    </tr>
  </table>
</form>
<!-- end module contents -->