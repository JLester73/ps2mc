@echo off

REM Scriptella scripts to export data from PowerSchool
REM into format that is used by Major Clarity
c:
cd \ETL_Scripts
call C:\Scriptella\bin\scriptella.bat MC_Schools.xml
call C:\Scriptella\bin\scriptella.bat MC_Students.xml
call C:\Scriptella\bin\scriptella.bat MC_Staff.xml
call C:\Scriptella\bin\scriptella.bat MC_Courses.xml
call C:\Scriptella\bin\scriptella.bat MC_CourseHistory.xml

REM Upload CSV files to Major Clarity's FTP Server
c:
cd \ETL_Exports\MC
C:\Users\ps\Downloads\WinSCPPortable\App\winscp\WinSCP.com /console /command "option batch abort" "option confirm off" "open user:password@mc_ip_address" "cd uploads" "put schools.csv" "put students.csv" "put staff.csv" "put courses.csv" "put course_history.csv" "exit"