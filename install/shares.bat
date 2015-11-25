@echo off

if not exist %userprofile%\music mkdir %userprofile%\music
net share music=%userprofile%\music /grant:REDMOND\MatEer,READ

if not exist C:\scratch (
	mkdir C:\scratch
	icacls C:\scratch /inheritance:r /grant:r Everyone:^(OI^)^(CI^)F
)
net share scratch=C:\scratch /grant:REDMOND\MatEer,FULL /grant:Everyone,READ

if not exist %userprofile%\source mkdir %userprofile%\source
net share source=%userprofile%\source /grant:REDMOND\MatEer,FULL