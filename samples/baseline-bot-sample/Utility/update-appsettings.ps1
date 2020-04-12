$rg = '<YOUR_RG_HERE>'
$botName = '<YOUR_BOT_NAME_HERE>'

# get app settings
$appId = $(az webapp config appsettings list -g $rg -n $botName --query "[?name=='MicrosoftAppId'].value" -o tsv)
$appPass = $(az webapp config appsettings list -g $rg -n $botName --query "[?name=='MicrosoftAppPassword'].value" -o tsv)
$kbId = $(az webapp config appsettings list -g $rg -n $botName --query "[?name=='QnAKnowledgebaseId'].value" -o tsv)
$qnaAuth = $(az webapp config appsettings list -g $rg -n $botName --query "[?name=='QnAAuthKey'].value" -o tsv)
$qnaEndpoint = $(az webapp config appsettings list -g $rg -n $botName --query "[?name=='QnAEndpointHostName'].value" -o tsv)

# get bot secret
$botSecret = $(az bot webchat show -g $rg -n $botName --with-secrets --query 'setting.sites[0].key' -o tsv)

# get text transation key, assumes only one exists for now
$translateRg = $(az cognitiveservices account list --query "[?kind=='TextTranslation'].resourceGroup" -o tsv)
$translateName = $(az cognitiveservices account list --query "[?kind=='TextTranslation'].name" -o tsv)
$translateEndpoint = $(az cognitiveservices account list --query "[?kind=='TextTranslation'].endpoint" -o tsv)
$translateKey = $(az cognitiveservices account keys list -g $translateRg -n $translateName --query 'key1' -o tsv)

# get text analytics key
$analyticsRg = $(az cognitiveservices account list --query "[?kind=='TextAnalytics'].resourceGroup" -o tsv)
$analyticsName = $(az cognitiveservices account list --query "[?kind=='TextAnalytics'].name" -o tsv)
$analyticsEndpoint = $(az cognitiveservices account list --query "[?kind=='TextAnalytics'].endpoint" -o tsv)
$analyticsKey = $(az cognitiveservices account keys list -g $analyticsRg -n $analyticsName --query 'key1' -o tsv)

(Get-Content .\samples\baseline-bot-sample\appsettings.json).replace('<YOUR_APP_ID_HERE>', $appId) | Set-Content .\samples\baseline-bot-sample\appsettings.json
(Get-Content .\samples\baseline-bot-sample\appsettings.json).replace('<YOUR_APP_PASSWORD_HERE>', $appPass) | Set-Content .\samples\baseline-bot-sample\appsettings.json
(Get-Content .\samples\baseline-bot-sample\appsettings.json).replace('<YOUR_KB_ID_HERE>', $kbId) | Set-Content .\samples\baseline-bot-sample\appsettings.json
(Get-Content .\samples\baseline-bot-sample\appsettings.json).replace('<YOUR_QNA_AUTH_KEY_HERE>', $qnaAuth) | Set-Content .\samples\baseline-bot-sample\appsettings.json
(Get-Content .\samples\baseline-bot-sample\appsettings.json).replace('<YOUR_QNA_ENDPOINT_HERE>', $qnaEndpoint) | Set-Content .\samples\baseline-bot-sample\appsettings.json
(Get-Content .\samples\baseline-bot-sample\appsettings.json).replace('<YOUR_BOT_SECRET_HERE>', $botSecret) | Set-Content .\samples\baseline-bot-sample\appsettings.json
(Get-Content .\samples\baseline-bot-sample\appsettings.json).replace('<YOUR_TRANSLATOR_TEXT_ENDPOINT_HERE>', $translateEndpoint) | Set-Content .\samples\baseline-bot-sample\appsettings.json
(Get-Content .\samples\baseline-bot-sample\appsettings.json).replace('<YOUR_TRANSLATOR_TEXT_KEY_HERE>', $translateKey) | Set-Content .\samples\baseline-bot-sample\appsettings.json
(Get-Content .\samples\baseline-bot-sample\appsettings.json).replace('<YOUR_TEXT_ANALYTICS_ENDPOINT_HERE>', $analyticsEndpoint) | Set-Content .\samples\baseline-bot-sample\appsettings.json
(Get-Content .\samples\baseline-bot-sample\appsettings.json).replace('<YOUR_TEXT_ANALYTICS_KEY_HERE>', $analyticsKey) | Set-Content .\samples\baseline-bot-sample\appsettings.json
