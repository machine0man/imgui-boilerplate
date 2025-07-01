project "imgui-boilerplate"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++17"
    staticruntime "On"

    targetdir "bin/%{cfg.buildcfg}"
    objdir "obj/%{cfg.buildcfg}"
    
    files 
    {
        "main.cpp",
        "../vendor/imgui/*.cpp",
        "../vendor/imgui/backends/imgui_impl_glfw.cpp",
        "../vendor/imgui/backends/imgui_impl_opengl3.cpp"
    }

    includedirs 
    {
        "../vendor/glad/include", 
        "../vendor/glfw/include",
        "../vendor/imgui",
        "../vendor/imgui/backends"
    }

    links
    {
        "opengl32",
        "ImGui",
        "glfw"
    }

    filter "system:windows"
        systemversion "latest"
        defines { "_CRT_SECURE_NO_WARNINGS" }
        
    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"

    filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"