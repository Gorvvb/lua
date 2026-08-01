project "Lua"
	kind "StaticLib"
	language "C"
	cdialect "C11"
	staticruntime "off"

	targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"src/lapi.c",
		"src/lauxlib.c",
		"src/lbaselib.c",
		"src/lcode.c",
		"src/lcorolib.c",
		"src/lctype.c",
		"src/ldblib.c",
		"src/ldebug.c",
		"src/ldo.c",
		"src/ldump.c",
		"src/lfunc.c",
		"src/lgc.c",
		"src/linit.c",
		"src/liolib.c",
		"src/llex.c",
		"src/lmathlib.c",
		"src/lmem.c",
		"src/loadlib.c",
		"src/lobject.c",
		"src/lopcodes.c",
		"src/loslib.c",
		"src/lparser.c",
		"src/lstate.c",
		"src/lstring.c",
		"src/lstrlib.c",
		"src/ltable.c",
		"src/ltablib.c",
		"src/ltm.c",
		"src/lundump.c",
		"src/lutf8lib.c",
		"src/lvm.c",
		"src/lzio.c",
		"src/**.h"
	}

	defines
	{
		"_CRT_SECURE_NO_WARNINGS"
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
