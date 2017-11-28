#pragma glslify: noise4d = require(glsl-noise/simplex/4d)

float fbm4d(vec4 x, const in int it) {
    float v = 0.0;
    float a = 0.5;
    vec4 shift = vec4(100);
    
    for (int i = 0; i < 32; ++i) {
        if(i<it) {
            v += a * noise4d(x);
            x = x * 2.0 + shift;
            a *= 0.5;
        }
    }
    return v;
}

#pragma glslify: export(fbm4d)