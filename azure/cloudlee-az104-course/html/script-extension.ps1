# Custom Script Extension to Install IIS Web Server and provision it with custom HTML/CSS

# Instructions
# 1. Browse to the VM; ensure it is powered on
# 2. Go to 'Extensions + applications'
# 3. Click 'Add'; search for "Custom Script Extension" and click it
# 4. Click Next. 
# 5. Browse to the script in your Storage Account and click 'select'
#     (you can specify arguments if you have any in your script)
# 6. Click 'Next: Review + Create' then 'Create'




# Install IIS 
Install-WindowsFeature -name Web-Server -IncludeManagementTools

# Download web files
Invoke-WebRequest Invoke-WebRequest https://raw.githubusercontent.com/pscheetz/code-projects/master/azure/cloudlee-az104-course/html/index.html -OutFile C:\Users\Philip\Desktop\index.html -OutFile C:\inetpub\wwwroot\index.htm
Invoke-WebRequest Invoke-WebRequest https://raw.githubusercontent.com/pscheetz/code-projects/master/azure/cloudlee-az104-course/html/style.css -OutFile C:\Users\Philip\Desktop\style.css -OutFile C:\inetpub\wwwroot\style.css