cd S:\CraigAndRob\website
$url = 'https://www.thing.com/whatever'
$slashtag = '/newlinkylink'
$template = Get-Content -Path template.md
$filepath = "{0}.md" -f $slashtag -replace '/',''

$newTemplate = $template -replace '__URL__',$url.'Destination URL'  -replace '__LINKWITHSLASH__',$slashtag
$newTemplate | Set-Content -Path  $filepath
