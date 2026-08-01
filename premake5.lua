project "Lua"
	kind "StaticLib"
	language "C"
	cdialect "C11"
	staticruntime "off"

	location "%{wks.location}/Waffle/vendor/lua"

	targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"lapi.c",
		"lauxlib.c",
		"lbaselib.c",
		"lcode.c",
		"lcorolib.c",
		"lctype.c",
		"ldblib.c",
		"ldebug.c",
		"ldo.c",
		"ldump.c",
		"lfunc.c",
		"lgc.c",
		"linit.c",
		"liolib.c",
		"llex.c",
		"lmathlib.c",
		"lmem.c",
		"loadlib.c",
		"lobject.c",
		"lopcodes.c",
		"loslib.c",
		"lparser.c",
		"lstate.c",
		"lstring.c",
		"lstrlib.c",
		"ltable.c",
		"ltablib.c",
		"ltm.c",
		"lundump.c",
		"lutf8lib.c",
		"lvm.c",
		"lzio.c",
		"**.h"
	}

	defines
	{
		"_CRT_SECURE_NO_WARNINGS"
	}

	includedirs
	{
		"%{prj.location}/src"
	}

	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
		symbols "off"
