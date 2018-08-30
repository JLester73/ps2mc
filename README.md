**NOTICE**
These files and scripts are provided without any assurances that they
will work properly in your environment.  There is also no guarantee
that something won't get messed up in either PowerSchool or Major Clarity
by using this project.  Use at your own risk, understand what the
commands will be doing, and use in a test environment if possible!

**Background**
These scripts and process were created by Jason Lester of Washington County
Public Schools in Virginia.  

**Description**
These scripts export out the school, students, teachers, courses,
and course history from PowerSchool that are required for import into
Major Clarity.

**Release**
The latest version is always available on Github from:
  https://github.com/JLester73/ps2mc
  
**Requirements**
These scripts use the Scriptella ETL tool to export the data
in a format used by Major Clarity.  Scriptella can be downloaded from
http://scriptella.org/.  It also uses Java and Oracle.

Dependencies:
 - Java JRE or JDK version 5.0 or later
 - Scriptella
 - Oracle JDBC Driver
 - WinSCP.Com (if you want the exports automatically uploaded)

**Setup**
- Install Scriptella and all dependencies noted above
- Place the XML and BAT files in C:\ETL_SCRIPTS
- Create the directory C:\ETL_EXPORTS\MC
- Edit the etl.properties file and update the PowerSchool database
  server IP address or FQDN along with the psnavigator password
- Ensure the paths in etl.properties and majorclarity_exports.bat match
  where you have placed everything.
- Update the WinSCP line in majorclarity_exports.bat to use your
  district's login credentials and the server IP provided to you.
- Run WinSCP.Com one time to accept the certificate

**Usage**
The majorclarity_exports.bat batch file will run Scriptella against each
of the XML files to export out the five files required by IXL.  Once
exported, it uploads the files to the Major Clarity SFTP server.
I would comment out that line until you're sure your exports are correct.

Once you have everything working properly, you can add the batch file as
a scheduled task each night to completely automate your uploads.