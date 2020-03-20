# Azure QnA Maker Bot

## Summary

Government agencies are finding that their call centers and email inboxes are being flooded with questions from concerned citizens about the COVID-19 pandemic.  Microsoft is suggesting that by deploying a simple QnA Maker Bot on your public facing websites you can potentially reduce these volumes while ensuring accurate information is being shared with the citizens.

Standard FAQ websites are a great start, but it can sometimes be difficult for a person to find the information that they need.  Even standard web site search boxes are inefficient. By using a bot backed with AI citizens will more quickly find the relevant information they require.

## Time Required

To deploy a standard QnA Maker Bot will take less than 1 hour.  Additional time will be needed in order to add the necessary HTML to your public facing website and to import the necessary questions and answers.

## Requirements

To get started building a QnA Maker Bot you will need an Azure Commercial subscription.  If you do not already have a subscription, please reach out to your Microsoft account team immediately and they can assist.   For the basic QnA Maker you do not need to have developer experience.  You will need basic HTML experience to add the necessary HTML snippet to the public facing website.

To get started, ensure you have contributor rights on your Azure Subscription and then follow the instructions below.

## Provisioning the QnA Maker Knowledgebase

1. Go to [https://qnamaker.ai](https://qnamaker.ai)
2. Sign in with your Microsoft Azure Subscription login name and password.
3. Click Create a knowledge base

4. Click Create a QnA service

5. A new browser tab will open, and you will be directed to it. Fill out the information to create the QnA service in your Azure subscription. A sample is shown below. You should create a new resource group for the QnA Bot.  Click Create when done.

6. Wait until deployment is done.

7. Go back to the QnA Maker browser tab and click Refresh in Step 2.

8. Select your Azure Active Directory ID and Subscription name. Then select the new QnA service you created in step 5. It should show up in the dropdown.

9. Select Language.

10. Name you KB in step 3.

11. Populate your KB in step 4 (optional). Enter a URL from your website with Covid FAQ or use CDC&#39;s URL, which is - [https://www.cdc.gov/coronavirus/2019-ncov/faq.html](https://www.cdc.gov/coronavirus/2019-ncov/faq.html).  You can skip this step if you will be manually entering your questions and answers instead of importing them from a file or URL.

12. Add additional URLs or Files (optional)

13. Add personality of Bot (optional but recommend picking one). This will add some basic responses when folks greet the bot.

14. Click Create your KB in step 5. If you get a message about &quot;no endpoints&quot; after clicking create your KB, go back up to step 2 in the form and click the refresh buttons and re-select the proper items.  It can take a few moments after the resources are created for the endpoints to be live.

15. Click Save and train in the top menu if you made changes to the Q&amp;A pairs. Otherwise, skip to step 16.

16. Click Publish in the top menu.

17. Click the Publish button located in the upper right of the page.

18. Click Create Bot.

19. A new tab with the Azure Portal will open. Accept all defaults but create the Bot and its resources in a region closest to you. Create an App service plan closest to you as well. Click OK.

20. Click the create button at the bottom of the page.

21. Monitor the Bot creation. (use the bell icon at the top right corner). When it is done, click Go to resource.

22. Select Build, then click Download Bot source code if you wish to modify the source code for the bot. If you do not wish to modify the bot code, skip to step 25.

23. Select Yes to include app settings.

24. When download is ready, click Yes to download the file. This will download a zip file to your downloads folder.

25. Click Channels and then click Get bot embed codes.

26. Click &quot;Click here to open the Web Chat configuration page \&gt;&quot;

27. Click Show to get the Secret keys, copy it to notepad.

28. Click Copy for the Embed code, and copy it to notepad as well.

29. Take the key and put it into the embed code where it says YOUR\_SECRET\_HERE. (ps: this is a fake key for illustration purposes).

30. Final embed code should look like this.

31. The \&lt;iframe\&gt; embed code is what you will insert in your web page source (or master page). Save it for now.

32. Click Done.


## **Appendix**

### Uploading a Customized Bot

If you have downloaded the source code for the bot and have modified it

1. Click Home at the top left corner.

2. Locate the Resource group for your Bot assets. It should be in the Recent resources list. Make sure you select the Resource group object type.

3. You should see all the assets required for your Bot. Click on the App Service object.

4. Click Get publish profile. This will download a file to your downloads folder.

5. Copy the zip file (from step 26) from your downloads folder to a new directory (you can name that directory Covid).

6. Copy the publish profile (from step 36) from your downloads folder to the same directory as the zip file.

7. Unzip the contents of the zip file.

8. Launch Visual Studio and select Open a project or solution ([download and install Visual Studio 2019 Community Edition](https://visualstudio.microsoft.com/downloads/) if you do not have Visual Studio).

9. Open QnABot.sln.

10. Click Build -\&gt; Publish QnABot.

11. Select Import Profile.

12. Pick the Publish profile you downloaded in step 4.

13. Click Publish.

14. When your bot is successfully built and deployed, you will see this page.

15. Close all browsers, save your Visual Studio project and exit Visual Studio.

16. Insert the \&lt;iframe\&gt; embed code from step 28 into your web page or master page.
