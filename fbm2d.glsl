#pragma glslify: noise2d = require(glsl-noise/simplex/2d)

float fbm2d(vec2 x, const in int it) {
    float v = 0.0;
    float a = 0.5;
    vec2 shift = vec2(100);
    // Rotate to reduce axial bias
    mat2 rot = mat2(cos(0.5), sin(0.5), -sin(0.5), cos(0.50));
    for (int i = 0; i < 32; ++i) {
        if(i<it) {
            v += a * noise2d(x);
            x = rot * x * 2.0 + shift;
            a *= 0.5;
        }
    }
    return v;
}

#pragma glslify: export(fbm2d)