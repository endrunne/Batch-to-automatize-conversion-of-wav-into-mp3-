@echo off
set str=%1
REM Pega a variável de argumento e passa ela pra str
set str=%str:wav=mp3%
REM Pega str a partir da char wav e substitui ela pra mp3 
REM Batch script pra automatizar a conversão de arquivos .wav pra .mp3 
REM O ffmpeg deve estar na mesma pasta que esse script
.\ffmpeg.exe -i %1 -ar 44100 -ac 2 -ab 192k -f mp3 %str%
del %1
REM deleta o arquivo original em wav deixando apenas o mp3