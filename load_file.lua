local scriptName = "SCRIPT-NAME"
local directoryPath = "E:\\GT\\EXAMPLEPATH"


local scriptFile, errorMessage = io.open(directoryPath.."\\" .. scriptName, "rb")

if scriptFile then
  local scriptCode = scriptFile:read("*all")
  scriptFile:close()
  load(scriptCode)()
else
  LogToConsole("`4Error`^: See Terminal for detail")
  print("Error: " .. errorMessage)
end