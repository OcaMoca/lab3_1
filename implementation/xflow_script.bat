@ECHO OFF
@REM ###########################################
@REM # Script file to run the flow 
@REM # 
@REM ###########################################
@REM #
@REM # Command line for ngdbuild
@REM #
ngdbuild -p xc6slx45fgg676-2 -nt timestamp -bm system.bmm "D:/ra164-2016/lab3_1/implementation/system.ngc" -uc system.ucf system.ngd 

