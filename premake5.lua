workspace "imgui-boilerplate"
    configurations { "Debug", "Release" }
    architecture "x64"   
    startproject "imgui-test"

include "vendor/imgui.lua"
include "vendor/glfw.lua"
include "imgui-boilerplate"