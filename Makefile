
#CFLAGS = -std=c++17 -O2
CFLAGS = -std=c++17 -g
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

all: HelloTriangle

HelloTriangle: main.cpp
	g++ $(CFLAGS) -o HelloTriangle main.cpp $(LDFLAGS)

#shaders/frag.spv: code/26_shader_depth.frag
#	glslc code/26_shader_depth.frag -o shaders/frag.spv

#shaders/vert.spv: code/26_shader_depth.vert
#	glslc code/26_shader_depth.vert -o shaders/vert.spv

.PHONY: test clean

test: HelloTriangle
	./HelloTriangle

clean:
	#rm -f shaders/frag.spv shaders/vert.spv
	rm -f HelloTriangle
