function scr_nine_slice(size, spr, xx, yy, width, height){
	draw_sprite_part(spr, 0, 0, 0, size/3, size/3, xx, yy);
	draw_sprite_part(spr, 0, size-size/3, 0, size/3, size/3, xx + width - size/3, yy);
	
	for (var i = 1; i < width / (size / 3) - 1; i++) {
		draw_sprite_part(spr, 0, size/3, 0, size/3, size/3, xx + (i * size/3), yy);
		draw_sprite_part(spr, 0, size/3, 0, size/3, size/3, xx + (i * size/3), yy + height - size/3);
	}
	
	for (var i = 1; i < height / (size / 3) - 1; i++) {
		draw_sprite_part(spr, 0, 0, size/3, size/3, size/3, xx, yy + (i * size/3));
		draw_sprite_part(spr, 0, 0, size/3, size/3, size/3, xx + width - size/3, yy + (i * size/3));
	}
	
	for (var i = 1; i < width / (size / 3) - 1; i++) {
		for (var j = 1; j < height / (size / 3) - 1; j++) {
			draw_sprite_part(spr, 0, size/3, size/3, width * size/3, height * size/3, xx + i * size/3, yy + j * size/3);
		}
	}
	
	draw_sprite_part(spr, 0, 0, size-size/3, size/3, size/3, xx, yy + height - size/3);
	draw_sprite_part(spr, 0, size-size/3, size-size/3, size/3, size/3, xx + width - size/3, yy + height - size/3);
}
