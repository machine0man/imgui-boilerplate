project "ImGui"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "On"

    --location of the project realtive to this premake file
    location "imgui"

    --output directories for binaries and object files
    targetdir "imgui/bin/%{cfg.buildcfg}"
    objdir "imgui/obj/%{cfg.buildcfg}"

    files 
    {
        "imgui/*.cpp",
        "imgui/backends/imgui_impl_glfw.cpp",
        "imgui/backends/imgui_impl_opengl3.cpp"
    }

    includedirs 
    {
        "imgui",
        "imgui/backends",
        "glad/include", 
        "glfw/include"
        
    }

    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"

    filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"