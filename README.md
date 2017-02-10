# Rails Gmail SMTP Sample

This is a simple app that takes some input to send emails. Emails will be sent as `GMAIL_ACCOUNT`.

## Inputs

 - to (comma seperated) **required**
 - cc (comma seperated)
 - bcc (comma seperated)
 - subject **required**
 - content **required**
 
## ENV Config

  Set these env to use the app:
  
  - `GMAIL_ACCOUNT` must be an email address. It will be used to send emails
  - `GMAIL_ACCOUNT_PASSWORD`
  
## Google Settings

Because Google cares about security, the app **most probably** wont be able to send email out of the box. *bummer*

### What to do

Based on this [question](http://stackoverflow.com/a/20262500) on SO, you need to visit this link:

[Allow access to your Google account](http://www.google.com/accounts/DisplayUnlockCaptcha)

If that is not enough, go to Google Security page, and toggle [Allow less secure apps](https://myaccount.google.com/security#connectedapps) to ON.

note: **these changes must be made on the account you set as `GMAIL_ACCOUNT`**

## What cannot be done

You can only send email from `GMAIL_ACCOUNT`. *another bummer*

Read this http://stackoverflow.com/questions/109520/rails-and-gmail-smtp-how-to-use-a-custom-from-address
