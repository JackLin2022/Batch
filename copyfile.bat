chcp 65001
@echo off


set today=%date:~3,4%%date:~8,2%%date:~11,3%
set src_path=C:\Temp\src_folder\
set src_folder_name=1111,3333 
set tgt_path=C:\Temp\語意層bk_%today%\

echo current_date:%today%
REM >> if 資料夾存在就刪除 else 建立資料夾
if exist %tgt_path% (rmdir /s /q %tgt_path%) else ( mkdir %tgt_path% )
mkdir %tgt_path%


REM >> 複製src_path資料夾檔案至tgt_path
for %%i in (%src_folder_name%) do (
echo 建立資料夾 %tgt_path%%%i 
mkdir %tgt_path%%%i 
echo 複製檔案 
xcopy %src_path%%%i %tgt_path%%%i 
)


