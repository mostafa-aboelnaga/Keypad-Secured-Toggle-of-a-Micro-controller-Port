
_main:

;Project_Assignment.c,18 :: 		void main() {
;Project_Assignment.c,20 :: 		Lcd_Init(); keypad_Init();
	CALL       _Lcd_Init+0
	CALL       _Keypad_Init+0
;Project_Assignment.c,21 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Project_Assignment.c,23 :: 		getpassword();
	CALL       _getpassword+0
;Project_Assignment.c,25 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Project_Assignment.c,26 :: 		Lcd_Out(1, 2, "Welcome!");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_Project_Assignment+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Project_Assignment.c,28 :: 		trisb = 0;
	CLRF       TRISB+0
;Project_Assignment.c,29 :: 		portb = 0x01;
	MOVLW      1
	MOVWF      PORTB+0
;Project_Assignment.c,30 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
	NOP
	NOP
;Project_Assignment.c,31 :: 		while(1)
L_main1:
;Project_Assignment.c,33 :: 		if(portb == 0x80)
	MOVF       PORTB+0, 0
	XORLW      128
	BTFSS      STATUS+0, 2
	GOTO       L_main3
;Project_Assignment.c,34 :: 		{ while(portb != 0x01)
L_main4:
	MOVF       PORTB+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_main5
;Project_Assignment.c,36 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
	NOP
;Project_Assignment.c,37 :: 		portb = portb >> 1;
	MOVF       PORTB+0, 0
	MOVWF      R0+0
	RRF        R0+0, 1
	BCF        R0+0, 7
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;Project_Assignment.c,38 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
	NOP
;Project_Assignment.c,39 :: 		}
	GOTO       L_main4
L_main5:
;Project_Assignment.c,40 :: 		}
L_main3:
;Project_Assignment.c,41 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	DECFSZ     R11+0, 1
	GOTO       L_main8
	NOP
	NOP
;Project_Assignment.c,42 :: 		portb = portb << 1;
	MOVF       PORTB+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;Project_Assignment.c,43 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
	NOP
	NOP
;Project_Assignment.c,44 :: 		}
	GOTO       L_main1
;Project_Assignment.c,45 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

_getpassword:

;Project_Assignment.c,47 :: 		char getpassword(){
;Project_Assignment.c,50 :: 		Loop:
___getpassword_Loop:
;Project_Assignment.c,51 :: 		password[0] = 0; password[1] = 0; password[2] = 0; password[3] = 0; password[4] = 0;
	CLRF       getpassword_password_L0+0
	CLRF       getpassword_password_L0+1
	CLRF       getpassword_password_L0+2
	CLRF       getpassword_password_L0+3
	CLRF       getpassword_password_L0+4
;Project_Assignment.c,52 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Project_Assignment.c,53 :: 		Lcd_Out(1, 1, "Enter Password: ");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_Project_Assignment+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Project_Assignment.c,55 :: 		for (i = 0; i < 4; i++)
	CLRF       getpassword_i_L0+0
	CLRF       getpassword_i_L0+1
L_getpassword10:
	MOVLW      128
	XORWF      getpassword_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__getpassword28
	MOVLW      4
	SUBWF      getpassword_i_L0+0, 0
L__getpassword28:
	BTFSC      STATUS+0, 0
	GOTO       L_getpassword11
;Project_Assignment.c,57 :: 		while (password[i] == 0)
L_getpassword13:
	MOVF       getpassword_i_L0+0, 0
	ADDLW      getpassword_password_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_getpassword14
;Project_Assignment.c,59 :: 		password[i] = Keypad_Key_Click();
	MOVF       getpassword_i_L0+0, 0
	ADDLW      getpassword_password_L0+0
	MOVWF      FLOC__getpassword+0
	CALL       _Keypad_Key_Click+0
	MOVF       FLOC__getpassword+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;Project_Assignment.c,60 :: 		}
	GOTO       L_getpassword13
L_getpassword14:
;Project_Assignment.c,61 :: 		if (password[i] == 1) password[i] = '7';
	MOVF       getpassword_i_L0+0, 0
	ADDLW      getpassword_password_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_getpassword15
	MOVF       getpassword_i_L0+0, 0
	ADDLW      getpassword_password_L0+0
	MOVWF      FSR
	MOVLW      55
	MOVWF      INDF+0
L_getpassword15:
;Project_Assignment.c,62 :: 		if (password[i] == 2) password[i] = '8';
	MOVF       getpassword_i_L0+0, 0
	ADDLW      getpassword_password_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L_getpassword16
	MOVF       getpassword_i_L0+0, 0
	ADDLW      getpassword_password_L0+0
	MOVWF      FSR
	MOVLW      56
	MOVWF      INDF+0
L_getpassword16:
;Project_Assignment.c,63 :: 		if (password[i] == 3) password[i] = '9';
	MOVF       getpassword_i_L0+0, 0
	ADDLW      getpassword_password_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      3
	BTFSS      STATUS+0, 2
	GOTO       L_getpassword17
	MOVF       getpassword_i_L0+0, 0
	ADDLW      getpassword_password_L0+0
	MOVWF      FSR
	MOVLW      57
	MOVWF      INDF+0
L_getpassword17:
;Project_Assignment.c,64 :: 		if (password[i] == 5) password[i] = '4';
	MOVF       getpassword_i_L0+0, 0
	ADDLW      getpassword_password_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      5
	BTFSS      STATUS+0, 2
	GOTO       L_getpassword18
	MOVF       getpassword_i_L0+0, 0
	ADDLW      getpassword_password_L0+0
	MOVWF      FSR
	MOVLW      52
	MOVWF      INDF+0
L_getpassword18:
;Project_Assignment.c,65 :: 		if (password[i] == 6) password[i] = '5';
	MOVF       getpassword_i_L0+0, 0
	ADDLW      getpassword_password_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      6
	BTFSS      STATUS+0, 2
	GOTO       L_getpassword19
	MOVF       getpassword_i_L0+0, 0
	ADDLW      getpassword_password_L0+0
	MOVWF      FSR
	MOVLW      53
	MOVWF      INDF+0
L_getpassword19:
;Project_Assignment.c,66 :: 		if (password[i] == 7) password[i] = '6';
	MOVF       getpassword_i_L0+0, 0
	ADDLW      getpassword_password_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      7
	BTFSS      STATUS+0, 2
	GOTO       L_getpassword20
	MOVF       getpassword_i_L0+0, 0
	ADDLW      getpassword_password_L0+0
	MOVWF      FSR
	MOVLW      54
	MOVWF      INDF+0
L_getpassword20:
;Project_Assignment.c,67 :: 		if (password[i] == 9) password[i] = '1';
	MOVF       getpassword_i_L0+0, 0
	ADDLW      getpassword_password_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      9
	BTFSS      STATUS+0, 2
	GOTO       L_getpassword21
	MOVF       getpassword_i_L0+0, 0
	ADDLW      getpassword_password_L0+0
	MOVWF      FSR
	MOVLW      49
	MOVWF      INDF+0
L_getpassword21:
;Project_Assignment.c,68 :: 		if (password[i] == 10) password[i] = '2';
	MOVF       getpassword_i_L0+0, 0
	ADDLW      getpassword_password_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      10
	BTFSS      STATUS+0, 2
	GOTO       L_getpassword22
	MOVF       getpassword_i_L0+0, 0
	ADDLW      getpassword_password_L0+0
	MOVWF      FSR
	MOVLW      50
	MOVWF      INDF+0
L_getpassword22:
;Project_Assignment.c,69 :: 		if (password[i] == 11) password[i] = '3';
	MOVF       getpassword_i_L0+0, 0
	ADDLW      getpassword_password_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      11
	BTFSS      STATUS+0, 2
	GOTO       L_getpassword23
	MOVF       getpassword_i_L0+0, 0
	ADDLW      getpassword_password_L0+0
	MOVWF      FSR
	MOVLW      51
	MOVWF      INDF+0
L_getpassword23:
;Project_Assignment.c,70 :: 		Lcd_Chr(2, i+1, 'X');
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	INCF       getpassword_i_L0+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      88
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;Project_Assignment.c,55 :: 		for (i = 0; i < 4; i++)
	INCF       getpassword_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       getpassword_i_L0+1, 1
;Project_Assignment.c,71 :: 		}
	GOTO       L_getpassword10
L_getpassword11:
;Project_Assignment.c,73 :: 		if (strcmp(password, "7422") == 0) return 74;
	MOVLW      getpassword_password_L0+0
	MOVWF      FARG_strcmp_s1+0
	MOVLW      ?lstr3_Project_Assignment+0
	MOVWF      FARG_strcmp_s2+0
	CALL       _strcmp+0
	MOVLW      0
	XORWF      R0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__getpassword29
	MOVLW      0
	XORWF      R0+0, 0
L__getpassword29:
	BTFSS      STATUS+0, 2
	GOTO       L_getpassword24
	MOVLW      74
	MOVWF      R0+0
	GOTO       L_end_getpassword
L_getpassword24:
;Project_Assignment.c,74 :: 		else goto Loop;
	GOTO       ___getpassword_Loop
;Project_Assignment.c,75 :: 		}
L_end_getpassword:
	RETURN
; end of _getpassword
