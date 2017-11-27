# glsl-fractal-brownian-noise
brownian noise, usable with glslify

usage: 
```glsl

precision mediump float;
#pragma glslify: fbm3d = require('glsl-fractal-brownian-noise/fbm3d');

void main() {
    gl_FragColor.rgb = vec3(1.0) * fbm3d(vec3(uv, t), 6);  
    gl_FragColor.a   = 1.0;
}
```
implementations borrowed from:
https://github.com/shawnlawson/The_Force/blob/gh-pages/shaders/header.frag#L259-L271