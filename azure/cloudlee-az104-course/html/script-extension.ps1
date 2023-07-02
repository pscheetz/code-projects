# Custom Script Extension to Install IIS Web Server and provision it with custom HTML/CSS

# Install IIS 
Install-WindowsFeature -name Web-Server -IncludeManagementTools

# Download web files
Invoke-WebRequest Invoke-WebRequest https://raw.githubusercontent.com/pscheetz/code-projects/master/azure/cloudlee-az104-course/html/index.html -OutFile C:\Users\Philip\Desktop\index.html -OutFile C:\inetpub\wwwroot\index.htm
Invoke-WebRequest Invoke-WebRequest https://raw.githubusercontent.com/pscheetz/code-projects/master/azure/cloudlee-az104-course/html/style.css -OutFile C:\Users\Philip\Desktop\style.css -OutFile C:\inetpub\wwwroot\style.css