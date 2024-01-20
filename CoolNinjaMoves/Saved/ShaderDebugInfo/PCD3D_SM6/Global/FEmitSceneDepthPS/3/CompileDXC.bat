@ECHO OFF
SET DXC="C:\Program Files\Epic Games\UE_5.2\Engine\Binaries\ThirdParty\ShaderConductor\Win64\dxc.exe"
IF NOT EXIST %DXC% (
	ECHO Couldn't find dxc.exe under "C:\Program Files\Epic Games\UE_5.2\Engine\Binaries\ThirdParty\ShaderConductor\Win64"
	GOTO :END
)
%DXC% -HV 2021 /auto-binding-space 0 /Zpr /O3 -Wno-parentheses-equality -disable-lifetime-markers /T ps_6_6 /E EmitSceneDepthPS /Fc NaniteExportGBuffer.d3dasm /Fo NaniteExportGBuffer.dxil NaniteExportGBuffer.usf
:END
PAUSE
