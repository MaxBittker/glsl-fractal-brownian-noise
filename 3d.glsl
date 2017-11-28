#pragma glslify: noise3d = require(glsl-noise/simplex/3d)

float fbm3d(vec3 x, const in int it) {
    float v = 0.0;
    float a = 0.5;
    vec3 shift = vec3(100);

    
    for (int i = 0; i < 32; ++i) {
        if(i<it) {
            v += a * noise3d(x);
            x = x * 2.0 + shift;
            a *= 0.5;
        }
    }
    return v;
}

#pragma glslify: export(fbm3d)