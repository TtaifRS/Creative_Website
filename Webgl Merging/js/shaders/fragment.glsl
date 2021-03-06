varying float vNoise;
varying vec2 vUv;
uniform sampler2D oceanTexture;
uniform float time;

void main(){
    vec3 color1 = vec3(0., 0.42, 0.58);
    vec3 color2 = vec3(1., 1., 1.);
    vec3 finalColor = mix(color1, color2, 0.5 * (vNoise+ 1.));

    vec2 newUV = vUv;

    
    
    newUV = vec2(newUV.x + 0.01 * cos(newUV.y * 10. + time), newUV.y + 0.01* sin(newUV.x*10. + time));


    vec4 oceanView = texture2D(oceanTexture, newUV);

    // gl_FragColor = vec4(finalColor, 1.);
    gl_FragColor = vec4(vUv,0., 1.);
    // gl_FragColor = vec4(vNoise);
    // gl_FragColor = oceanView + vec4(0.1 * sin(vNoise*5.));
    
}