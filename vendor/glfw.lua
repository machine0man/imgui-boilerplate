project "glfw"
    kind "StaticLib"
    language "C"
    staticruntime "On"

    --location of the project relative to this premake file
    location "glfw"

    --output directories for binaries and object files
    targetdir "glfw/bin/%{cfg.buildcfg}"
    objdir "glfw/obj/%{cfg.buildcfg}"

   files
	{
		"glfw/include/GLFW/glfw3.h",
		"glfw/include/GLFW/glfw3native.h",

		"glfw/src/internal.h",
		"glfw/src/platform.h", 
		"glfw/src/mappings.h", 
		"glfw/src/null_platform.h",
		"glfw/src/null_joystick.h", 
		"glfw/src/win32_time.h", 
		"glfw/src/win32_thread.h", 
		"glfw/src/win32_platform.h",
		"glfw/src/win32_joystick.h",
		"glfw/src/context.c",
		"glfw/src/init.c", 
		"glfw/src/input.c", 
		"glfw/src/monitor.c",
		"glfw/src/platform.c",
		"glfw/src/vulkan.c",
		"glfw/src/window.c", 
		"glfw/src/egl_context.c",
		"glfw/src/osmesa_context.c",
		"glfw/src/null_init.c",
		"glfw/src/null_monitor.c", 
		"glfw/src/null_window.c",
		"glfw/src/null_joystick.c",
		"glfw/src/win32_module.c", 
		"glfw/src/win32_time.c",
		"glfw/src/win32_thread.c",
		"glfw/src/win32_init.c",
		"glfw/src/win32_joystick.c",
		"glfw/src/win32_monitor.c",
		"glfw/src/win32_window.c", 
		"glfw/src/wgl_context.c"
	}

	defines
	{
		"WIN32",
		"WINDOWS",
		"_GLFW_WIN32",
		"UNICODE",
		"_UNICODE",
		"_CRT_SECURE_NO_WARNINGS",
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"