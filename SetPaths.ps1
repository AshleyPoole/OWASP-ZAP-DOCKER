$JRE_PATH = "c:\Java\jre1.8.0_91"

[Environment]::SetEnvironmentVariable('PATH', $env:Path + ";c:\Java\jre1.8.0_91\bin;", [EnvironmentVariableTarget]::Machine);
[Environment]::SetEnvironmentVariable('JAVA_HOME', $JRE_PATH, [EnvironmentVariableTarget]::Machine);
[Environment]::SetEnvironmentVariable('JRE_HOME', $JRE_PATH, [EnvironmentVariableTarget]::Machine);