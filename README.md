# PowerShell Email Sender Script

This PowerShell script allows you to send an email using Gmail's SMTP server. It's a simple example to help you understand how to use PowerShell to send emails programmatically.

## Prerequisites

- Windows PowerShell installed on your system.
- A Gmail account.
- Basic knowledge of PowerShell scripting.

## Instructions

1. **Clone or Download the Repository:**
   - Clone this repository to your local machine or download the ZIP file and extract it.

2. **Configure the Script:**
   - Open the `send-email.ps1` script in a text editor.
   - Replace `"yourgmailaddress@gmail.com"` and `"yourpassword"` with your actual Gmail address and password. It's recommended to use an "App Password" instead of your actual password for security reasons.

3. **Generate an App Password:**
   - If you have two-factor authentication enabled for your Gmail account, follow these steps to generate an "App Password":
     - Go to your Google Account settings.
     - Under "Security," find the "Signing in to Google" section.
     - Click on "App passwords."
     - Generate a new app password for your PowerShell script.
     - Replace `"yourpassword"` in the script with the generated app password.

4. **Adjust Recipients and Message:**
   - Modify the `$EmailTo`, `$Subject`, and `$Body` variables to customize the recipients and content of your email.

5. **Set Execution Policy (Choose One Option):**
   - Open a PowerShell console as an administrator (right-click and select "Run as administrator").
   - Run one of the following commands:
     - To set the execution policy to allow running locally signed scripts:
       ```
       Set-ExecutionPolicy RemoteSigned
       ```
     - If you prefer a more restrictive policy, you can use:
       ```
       Set-ExecutionPolicy Restricted
       ```

6. **Run the Script:**
   - Open a PowerShell console as an administrator (right-click and select "Run as administrator").
   - Navigate to the directory where the script is located using the `cd` command.
   - Run the script by entering `.\send-email.ps1`.

7. **Review Results:**
   - The script will attempt to send the email and provide feedback on success or failure.
   - If the email was sent successfully, a success message will be displayed.
   - If sending the email fails, an error message along with the error details will be displayed.

## Notes

- Be cautious about storing your password in plain text within the script. Use an "App Password" or a more secure method for handling credentials.
- Enabling "Less secure apps" in your Google Account settings might be required for the script to work.


