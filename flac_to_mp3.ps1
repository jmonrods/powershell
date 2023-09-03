# Script to convert from FLAC to MP3 at 320kbps
$AlbumFolder = "C:\Users\jjmontero\Downloads\SomeCDinFLAC";

foreach($file in Get-ChildItem $AlbumFolder)
{
    Write-Host $file.FullName;
    C:\Programs\ffmpeg\bin\ffmpeg.exe -i $file.FullName -ab 320k -map_metadata 0 -id3v2_version 3 (-join($file.DirectoryName,"\",$file.Basename,".mp3"));
}