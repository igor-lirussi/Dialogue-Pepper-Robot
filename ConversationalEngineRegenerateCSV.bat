echo Bot folders (aiml, config,...) should be into bots/en/
echo Program deletes folder "aimlif" and recreates it with CSV desired
pause
rmdir /S /Q .\bots\en\aimlif
mkdir .\bots\en\aimlif
java -cp lib/Ab.jar Main bot=en action=aiml2csv trace=false
pause