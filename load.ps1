$urlsFilePath = 'script/urls.csv'
$t2mUrls = Import-Csv -Path $urlsFilePath
$template = Get-Content -Path template.md

foreach ($url in $t2mUrls) {
    $newTemplate = $template -replace '__URL__',$url.'Destination URL'  -replace '__LINKWITHSLASH__',$url.Slashtag
    $newTemplate | Out-File -FilePath "$($url.Slashtag).md"
}

# $template -replace '__URL__','https://www.thing.com/whatever' -replace '__LINKWITHSLASH__','/newlinkylink'