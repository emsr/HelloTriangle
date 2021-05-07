
#CFLAGS = -std=c++17 -O2
CFLAGS = -std=c++17 -g
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

all: HelloTriangle

shaders/vert.spv: shaders/shader.vert
	glslc shaders/shader.vert -o shaders/vert.spv

shaders/frag.spv: shaders/shader.frag
	glslc shaders/shader.frag -o shaders/frag.spv

HelloTriangle: main.cpp shaders/vert.spv shaders/frag.spv
	g++ $(CFLAGS) -o HelloTriangle main.cpp $(LDFLAGS)

temp: temp.cpp shaders/vert.spv shaders/frag.spv
	g++ $(CFLAGS) -o temp temp.cpp $(LDFLAGS)

.PHONY: test clean

test: HelloTriangle
	./HelloTriangle

clean:
	#rm -f shaders/frag.spv shaders/vert.spv
	rm -f HelloTriangle
