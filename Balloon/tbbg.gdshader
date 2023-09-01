shader_type canvas_item;

void fragment() {
	vec2 uv = UV + vec2(TIME / 5., TIME / 30.);
	uv.x += floor(mod(uv.y, 5)) / 2.5;
	uv.y += floor(mod(uv.x, 1.8)) / 2.;
	COLOR = texture(TEXTURE, uv);
}
