//
//  Shaders.metal
//  AnimatedGif
//
//  Created by Marco Köhler on 29.03.19.
//  Copyright © 2019 Marco Köhler. All rights reserved.
//

#include <metal_stdlib>
#include <simd/simd.h>
#include "Structs.h"

using namespace metal;

// this Metal file defines the code for the shader that run on the GPU

// TODO this are still dummy shaders from the Apple WWDC presentation

struct Vertex {
    float4 position;
    float4 color;
};

struct VertexOut {
    float4 position [[position]];
    float4 color;
};

vertex VertexOut myVertexShader(device Vertex* vertexArray    [[ buffer(0) ]],
                                constant uniforms_t& uniforms [[ buffer(1) ]],
                                unsigned int vid              [[ vertex_id ]])
{
    VertexOut out;
    out.position = vertexArray[vid].position;
    out.color = vertexArray[vid].color;
    return out;
}

fragment float4 myFragmentShader(VertexOut interpolated [[stage_in]])
{
    return interpolated.color;
}
