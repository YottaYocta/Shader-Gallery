shader_type canvas_item;

uniform vec4 color1 : source_color;
uniform vec4 color2 : source_color;
uniform float exponent = 3.0;
uniform float frequency = 1.0;

void fragment() {
	float modified_PI = PI;
	float pct = (pow(cos(TIME*modified_PI * frequency),1.0/exponent)*sign(cos(TIME*modified_PI * frequency)) + 1.0) / 2.0;
	COLOR = mix(color1, color2, pct);
}
