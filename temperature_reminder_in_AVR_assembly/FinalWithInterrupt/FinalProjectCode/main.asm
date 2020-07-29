; Created: 2018/12/7 22:56:43
; Author : Zijie Yu

; (Use ADC interrupt version)



.macro	set_pointer
	ldi	@0, low(@2<<1)
	ldi	@1, high(@2<<1)
.endmacro
.cseg
.def	io_setup	= r16
.def	reg_workhorse	= r17
.def			adc_value_low	= r20					
.def			adc_value_high	= r21   				
.org			0x0000									
				rjmp		setup	
.org			0x002A	
				rjmp		isr_conversion
.org			0x0100									
; ---------------- setup sequence ----------------
setup:			ldi			io_setup, 0xFF				
				out			DDRB, io_setup				
				out			DDRD, io_setup									
				ldi			reg_workhorse, 0b01000010	
				sts			ADMUX, reg_workhorse		
				ldi			reg_workhorse,0b11001111
				sts			ADCSRA,reg_workhorse
				sei			
;setup_OLED
				rcall	OLED_initialize
				rcall	GFX_clear_array
	
				set_pointer	XL, XH, pixel_array
				rcall	OLED_refresh_screen
;------------------Loop-----------------------------
cp_loop:
	cpi adc_value_low,100
	brlo loop3 ; Wear more clothes
	rcall jumpLoop

	jumpLoop:
	cpi adc_value_low,105
	brlo loop2 ;perfect
	rcall loop1 ;too hot

	loop1:
	rcall char_loop1
	loop2:
	rcall char_loop2
	loop3:
	rcall char_loop3

isr_conversion:		 
lds adc_value_low, ADCL 
lds adc_value_high,ADCH   
lsl adc_value_high
lsl adc_value_high
lsl adc_value_high
lsl adc_value_high
lsl adc_value_high
lsl adc_value_high

lsr adc_value_low
lsr adc_value_low
ldi reg_workhorse,0b00111111
and adc_value_low,reg_workhorse
or  adc_value_low,adc_value_high
reti

.include	"lib_delay.asm"
.include	"lib_SSD1306_OLED.asm"
.include	"lib_GFX.asm"
.include    "char_library.asm"
