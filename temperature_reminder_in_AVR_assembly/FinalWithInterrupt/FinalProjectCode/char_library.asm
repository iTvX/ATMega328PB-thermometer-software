char_loop1:
	set_pointer	ZL, ZH, Char_084
	rcall	GFX_set_shape
	ldi r18,0
	ldi r19,0
	rcall GFX_set_array_pos
	rcall	GFX_draw_shape
	set_pointer	XL, XH, pixel_array
	rcall	OLED_refresh_screen
	;---------------------------------
	set_pointer	ZL, ZH, Char_079
	rcall	GFX_set_shape
	ldi r18,8
	ldi r19,0
	rcall GFX_set_array_pos
	rcall	GFX_draw_shape
	
;------------------------------------
	set_pointer	ZL, ZH, Char_079
	rcall	GFX_set_shape
	ldi r18,16
	ldi r19,0
	rcall GFX_set_array_pos
	rcall	GFX_draw_shape

;------------------------------------
	set_pointer	ZL, ZH, Char_072
	rcall	GFX_set_shape
	ldi r18,32
	ldi r19,0
	rcall GFX_set_array_pos
	rcall	GFX_draw_shape
;------------------------------------
	set_pointer	ZL, ZH, Char_079
	rcall	GFX_set_shape
	ldi r18,40
	ldi r19,0
	rcall GFX_set_array_pos
	rcall	GFX_draw_shape
;------------------------------------
	set_pointer	ZL, ZH, Char_084
	rcall	GFX_set_shape
	
	ldi r18,48
	ldi r19,0
	rcall GFX_set_array_pos
	
	rcall	GFX_draw_shape
	
	set_pointer	XL, XH, pixel_array
	rcall	OLED_refresh_screen
	rcall delay_1s
	rjmp setup
;---------------------------------------------
char_loop2:
	set_pointer	ZL, ZH, Char_080
	rcall	GFX_set_shape
	ldi r18,0
	ldi r19,24
	rcall GFX_set_array_pos
	rcall	GFX_draw_shape
;----------------------------------
	set_pointer	ZL, ZH, Char_069
	rcall	GFX_set_shape
	ldi r18,8
	ldi r19,24
	rcall GFX_set_array_pos	
	rcall	GFX_draw_shape	
;----------------------------------
	set_pointer	ZL, ZH, Char_082
	rcall	GFX_set_shape
	ldi r18,16
	ldi r19,24
	rcall GFX_set_array_pos	
	rcall	GFX_draw_shape	
;----------------------------------
	set_pointer	ZL, ZH, Char_070
	rcall	GFX_set_shape
	ldi r18,24
	ldi r19,24
	rcall GFX_set_array_pos	
	rcall	GFX_draw_shape	
;----------------------------------
	set_pointer	ZL, ZH, Char_069
	rcall	GFX_set_shape
	ldi r18,32
	ldi r19,24
	rcall GFX_set_array_pos	
	rcall	GFX_draw_shape	
;----------------------------------
	set_pointer	ZL, ZH, Char_067
	rcall	GFX_set_shape
	ldi r18,40
	ldi r19,24
	rcall GFX_set_array_pos	
	rcall	GFX_draw_shape	
	;----------------------------------
	set_pointer	ZL, ZH, Char_084
	rcall	GFX_set_shape
	ldi r18,48
	ldi r19,24
	rcall GFX_set_array_pos	
	rcall	GFX_draw_shape	
	set_pointer	XL, XH, pixel_array
	rcall	OLED_refresh_screen
	rcall delay_1s
	rjmp setup
;---------------------------------
char_loop3:
;Wear more clothes
	set_pointer	ZL, ZH, Char_087
	rcall	GFX_set_shape
	ldi r18,0
	ldi r19,48
	rcall GFX_set_array_pos	
	rcall	GFX_draw_shape	
;---------------------------------
	set_pointer	ZL, ZH, Char_069
	rcall	GFX_set_shape
	ldi r18,8
	ldi r19,48
	rcall GFX_set_array_pos	
	rcall	GFX_draw_shape	
;---------------------------------
	set_pointer	ZL, ZH, Char_065
	rcall	GFX_set_shape
	ldi r18,16
	ldi r19,48
	rcall GFX_set_array_pos	
	rcall	GFX_draw_shape	
;---------------------------------
	set_pointer	ZL, ZH, Char_082
	rcall	GFX_set_shape
	ldi r18,24
	ldi r19,48
	rcall GFX_set_array_pos	
	rcall	GFX_draw_shape	
;---------------------------------
	set_pointer	ZL, ZH, Char_077
	rcall	GFX_set_shape
	ldi r18,40
	ldi r19,48
	rcall GFX_set_array_pos	
	rcall	GFX_draw_shape	
;---------------------------------
	set_pointer	ZL, ZH, Char_079
	rcall	GFX_set_shape
	ldi r18,48
	ldi r19,48
	rcall GFX_set_array_pos	
	rcall	GFX_draw_shape	
;---------------------------------
	set_pointer	ZL, ZH, Char_082
	rcall	GFX_set_shape
	ldi r18,56
	ldi r19,48
	rcall GFX_set_array_pos	
	rcall	GFX_draw_shape	
;---------------------------------
	set_pointer	ZL, ZH, Char_069
	rcall	GFX_set_shape
	ldi r18,64
	ldi r19,48
	rcall GFX_set_array_pos	
	rcall	GFX_draw_shape	
;---------------------------------
	set_pointer	ZL, ZH, Char_067
	rcall	GFX_set_shape
	ldi r18,80
	ldi r19,48
	rcall GFX_set_array_pos	
	rcall	GFX_draw_shape	
;---------------------------------
	set_pointer	ZL, ZH, Char_076
	rcall	GFX_set_shape
	ldi r18,88
	ldi r19,48
	rcall GFX_set_array_pos	
	rcall	GFX_draw_shape	
;---------------------------------
	set_pointer	ZL, ZH, Char_079
	rcall	GFX_set_shape
	ldi r18,96
	ldi r19,48
	rcall GFX_set_array_pos	
	rcall	GFX_draw_shape	
;---------------------------------
	set_pointer	ZL, ZH, Char_084
	rcall	GFX_set_shape
	ldi r18,104
	ldi r19,48
	rcall GFX_set_array_pos	
	rcall	GFX_draw_shape	
;---------------------------------
	set_pointer	ZL, ZH, Char_072
	rcall	GFX_set_shape
	ldi r18,112
	ldi r19,48
	rcall GFX_set_array_pos	
	rcall	GFX_draw_shape	
	;---------------------------------
	set_pointer	ZL, ZH, Char_069
	rcall	GFX_set_shape
	ldi r18,120
	ldi r19,48
	rcall GFX_set_array_pos	
	rcall	GFX_draw_shape	
	;---------------------------------
		set_pointer	ZL, ZH, Char_083
	rcall	GFX_set_shape
	ldi r18,00
	ldi r19,56
	rcall GFX_set_array_pos	
	rcall	GFX_draw_shape	
	set_pointer	XL, XH, pixel_array
	rcall	OLED_refresh_screen
	;---------------------------------
	rcall delay_1s
	rjmp setup