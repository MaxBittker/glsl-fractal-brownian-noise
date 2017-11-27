# glsl-fractal-brownian-noise
brownian noise, packed for glslify

![example output](https://i.imgur.com/PwHCo4w.png)

usage: 
```glsl
precision mediump float;
#pragma glslify: fbm3d = require('glsl-fractal-brownian-noise/3d')

varying vec2 uv;
uniform float t;

void main() {
    gl_FragColor.rgb = vec3(1.0) * fbm3d(vec3(uv, t), 6);  
    gl_FragColor.a   = 1.0;
}
```

implementations borrowed from shawn lawson:
https://github.com/shawnlawson/The_Force/blob/gh-pages/shaders/header.frag#L259-L271