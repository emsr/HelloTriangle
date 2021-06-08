This is me following the Vulkan tutorial: https://vulkan-tutorial.com

I'm taking some liberties with formatting.

The idea is to have something that could start an application.

The stuff in the 3rdparty directory are required to load graphics content. They are excellent and convenient single-header libraries:
  - stb_image.h is from a collection of single-header libs (you only need the one): https://github.com/nothings/stb.git
  - tiny_obj_loader.h is from https://github.com/tinyobjloader/tinyobjloader.git

You'll need [glm](https://github.com/g-truc/glm.git) - a C++ template library to emulate GLSL maths.
You'll need [GLFW](https://github.com/glfw/glfw.git) - for simple GUI support
On Linux, these last two are generally available from package managers.
