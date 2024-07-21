@echo off
chcp 65001 > nul
title Очистка временных файлов by Timmu

rem Проверяем права администратора
>nul 2>&1 net session || (
    echo [EROR] Требуются права администратора для выполнения скрипта.
    choice /c EN /m "[REQUEST] Нажмите E для продолжения, N для отказа: "
    if errorlevel 2 (
        echo [EXIT] Вы отказались давать права администратора. Скрипт завершен.
        echo [EXIT] Нажмите любую клавишу для продолжения...
        pause >nul
        exit /b
    ) else (
        echo [REQUEST] Запрашиваем права администратора...
        powershell -Command "Start-Process -Verb runAs -FilePath \"%0\""
        exit /b
    )
)

rem Установка кодировки UTF-8
chcp 65001 > nul

color 0F
set SEPARATOR=============================================================
cls

echo %SEPARATOR%
echo Очистка временных файлов...
echo %SEPARATOR%

echo Удаление временных файлов текущего пользователя...
del /s /q %temp%\*
if %errorlevel% equ 0 (
    echo [Временные файлы текущего пользователя удалены]
) else (
    echo [Ошибка при удалении временных файлов текущего пользователя]
)
echo.

echo %SEPARATOR%
echo Удаление временных файлов в системной папке...
del /s /q C:\Windows\Temp\*
if %errorlevel% equ 0 (
    echo [Временные файлы в системной папке удалены]
) else (
    echo [Ошибка при удалении временных файлов в системной папке]
)
echo.

echo %SEPARATOR%
echo Удаление файлов в папке предварительной выборки...
del /s /q C:\Windows\Prefetch\*
if %errorlevel% equ 0 (
    echo [Файлы в папке предварительной выборки удалены]
) else (
    echo [Ошибка при удалении файлов в папке предварительной выборки]
)
echo.

echo %SEPARATOR%
echo Удаление временных файлов в AppData...
del /s /q "%LocalAppData%\Temp\*"
if %errorlevel% equ 0 (
    echo [Временные файлы в AppData удалены]
) else (
    echo [Ошибка при удалении временных файлов в AppData]
)
echo.

echo %SEPARATOR%
echo Удаление временных файлов в %temp%...
del /s /q C:\Users\User\AppData\Local\Temp\*
if %errorlevel% equ 0 (
    echo [Файлы в папке предварительной выборки удалены]
) else (
    echo [Ошибка при удалении файлов в папке предварительной выборки]
)
echo.

rem Добавлены дополнительные временные папки
echo %SEPARATOR%
echo Удаление временных файлов в папке SoftwareDistribution...
del /s /q C:\Windows\SoftwareDistribution\Download\*
if %errorlevel% equ 0 (
    echo [Временные файлы в папке SoftwareDistribution удалены]
) else (
    echo [Ошибка при удалении временных файлов в папке SoftwareDistribution]
)
echo.

echo %SEPARATOR%
echo Удаление временных файлов в папке SystemTemp...
del /s /q C:\Windows\SystemTemp\*
if %errorlevel% equ 0 (
    echo [Временные файлы в папке SystemTemp удалены]
) else (
    echo [Ошибка при удалении временных файлов в папке SystemTemp]
)
echo.

echo %SEPARATOR%
echo Удаление временных файлов в папке Temp Internet Files...
del /s /q C:\Users\User\AppData\Local\Microsoft\Windows\INetCache\*
if %errorlevel% equ 0 (
    echo [Временные файлы в папке Temp Internet Files удалены]
) else (
    echo [Ошибка при удалении временных файлов в папке Temp Internet Files]
)
echo.

echo %SEPARATOR%
echo Удаление временных файлов в папке Windows Error Reporting...
del /s /q C:\ProgramData\Microsoft\Windows\WER\ReportQueue\*
if %errorlevel% equ 0 (
    echo [Временные файлы в папке Windows Error Reporting удалены]
) else (
    echo [Ошибка при удалении временных файлов в папке Windows Error Reporting]
)
echo.

echo %SEPARATOR%
echo Удаление временных файлов в папке Windows Upgrade Log Files...
del /s /q C:\Windows\Logs\WindowsUpgrade\*
if %errorlevel% equ 0 (
    echo [Временные файлы в папке Windows Upgrade Log Files удалены]
) else (
    echo [Ошибка при удалении временных файлов в папке Windows Upgrade Log Files]
)
echo.

echo %SEPARATOR%
echo Удаление временных файлов в папке Delivery Optimization...
del /s /q C:\Windows\SoftwareDistribution\DeliveryOptimization\*
if %errorlevel% equ 0 (
    echo [Временные файлы в папке Delivery Optimization удалены]
) else (
    echo [Ошибка при удалении временных файлов в папке Delivery Optimization]
)
echo.

echo %SEPARATOR%
echo Удаление временных файлов в папке Windows Downloaded Program Files...
del /s /q C:\Windows\Downloaded Program Files\*
if %errorlevel% equ 0 (
    echo [Временные файлы в папке Windows Downloaded Program Files удалены]
) else (
    echo [Ошибка при удалении временных файлов в папке Windows Downloaded Program Files]
)
echo.

echo %SEPARATOR%
echo Удаление временных файлов в папке Windows LiveKernelReports...
del /s /q C:\Windows\LiveKernelReports\*
if %errorlevel% equ 0 (
    echo [Временные файлы в папке Windows LiveKernelReports удалены]
) else (
    echo [Ошибка при удалении временных файлов в папке Windows LiveKernelReports]
)
echo.

echo %SEPARATOR%
echo Удаление временных файлов в папке Windows Event Viewer...
del /s /q C:\Windows\System32\winevt\Logs\*
if %errorlevel% equ 0 (
    echo [Временные файлы в папке Windows Event Viewer удалены]
) else (
    echo [Ошибка при удалении временных файлов в папке Windows Event Viewer]
)
echo.

echo %SEPARATOR%
echo Очистка завершена.
echo %SEPARATOR%

echo.
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo :: ██████╗░ ██╗░░░██╗   ████████╗ ██╗ ███╗░░░███╗ ███╗░░░███╗ ██╗░░░██╗ ::
echo :: ██╔══██╗ ╚██╗░██╔╝   ╚══██╔══╝ ██║ ████╗░████║ ████╗░████║ ██║░░░██║ ::
echo :: ██████╦╝ ░╚████╔╝░   ░░░██║░░░ ██║ ██╔████╔██║ ██╔████╔██║ ██║░░░██║ ::
echo :: ██╔══██╗ ░░╚██╔╝░░   ░░░██║░░░ ██║ ██║╚██╔╝██║ ██║╚██╔╝██║ ██║░░░██║ ::
echo :: ██████╦╝ ░░░██║░░░   ░░░██║░░░ ██║ ██║░╚═╝░██║ ██║░╚═╝░██║ ╚██████╔╝ ::
echo :: ╚═════╝░ ░░░╚═╝░░░   ░░░╚═╝░░░ ╚═╝ ╚═╝░░░░░╚═╝ ╚═╝░░░░░╚═╝ ░╚═════╝░ ::
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo.
echo Нажмите любую клавишу для завершения...
pause >nul
