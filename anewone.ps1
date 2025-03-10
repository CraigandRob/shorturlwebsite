cd S:\CraigAndRob\shorturlwebsite
$url = 'https://forms.office.com/e/N6nb46V5Kb'
$slashtag = 'guest'
$template = Get-Content -Path template.md
$filepath = "{0}.md" -f $slashtag -replace '/',''

$newTemplate = $template -replace '__URL__',$url  -replace '__LINKWITHSLASH__',$slashtag
$newTemplate | Set-Content -Path  $filepath
