cd S:\CraigAndRob\shorturlwebsite
$url = 'https://techtales.fail/host/rob/'
$slashtag = 'rob'
$template = Get-Content -Path template.md
$filepath = "{0}.md" -f $slashtag -replace '/',''

$newTemplate = $template -replace '__URL__',$url  -replace '__LINKWITHSLASH__',$slashtag
$newTemplate | Set-Content -Path  $filepath
