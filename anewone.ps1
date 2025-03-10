cd S:\CraigAndRob\shorturlwebsite
$url = 'https://forms.office.com/Pages/ResponsePage.aspx?id=fiQisb8eUkuzCcKqdDb8a-bHL_OYqXBGizNjWHZVm4BURVgyMVc4QkUxMUpJT1FCRUNERDlUSDFXMC4u'
$slashtag = 'story'
$template = Get-Content -Path template.md
$filepath = "{0}.md" -f $slashtag -replace '/',''

$newTemplate = $template -replace '__URL__',$url  -replace '__LINKWITHSLASH__',$slashtag
$newTemplate | Set-Content -Path  $filepath
