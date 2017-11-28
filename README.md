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

Implimentations adapted from:
https://gist.github.com/patriciogonzalezvivo/670c22f3966e662d2f83
