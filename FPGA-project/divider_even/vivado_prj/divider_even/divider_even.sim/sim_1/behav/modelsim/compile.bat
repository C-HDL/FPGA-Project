@echo off
REM ****************************************************************************
REM Vivado (TM) v2023.1 (64-bit)
REM
REM Filename    : compile.bat
REM Simulator   : Siemens ModelSim Simulator
REM Description : Script for compiling the simulation design source files
REM
REM Generated by Vivado on Sun Jan 28 21:16:29 +0800 2024
REM SW Build 3865809 on Sun May  7 15:05:29 MDT 2023
REM
REM IP Build 3864474 on Sun May  7 20:36:21 MDT 2023
REM
REM usage: compile.bat
REM
REM ****************************************************************************
set bin_path=E:\modeltech64_10.4\win64
call %bin_path%/vsim  -c -do "do {tb_divider_even_compile.do}" -l compile.log
if "%errorlevel%"=="1" goto END
if "%errorlevel%"=="0" goto SUCCESS
:END
exit 1
:SUCCESS
exit 0
