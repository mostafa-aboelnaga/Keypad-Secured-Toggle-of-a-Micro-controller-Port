sbit LCD_RS at RD2_bit;
sbit LCD_EN at RD3_bit;
sbit LCD_D4 at RD4_bit;
sbit LCD_D5 at RD5_bit;
sbit LCD_D6 at RD6_bit;
sbit LCD_D7 at RD7_bit;

sbit LCD_RS_Direction at TRISD2_bit;
sbit LCD_EN_Direction at TRISD3_bit;
sbit LCD_D4_Direction at TRISD4_bit;
sbit LCD_D5_Direction at TRISD5_bit;
sbit LCD_D6_Direction at TRISD6_bit;
sbit LCD_D7_Direction at TRISD7_bit;

char keypadPort at PORTC;
char getpassword();

void main() {

  Lcd_Init(); keypad_Init();
  Lcd_Cmd(_LCD_CURSOR_OFF);

  getpassword();

  Lcd_Cmd(_LCD_CLEAR);
  Lcd_Out(1, 2, "Welcome!");
  
  trisb = 0;
  portb = 0x01;
  Delay_ms(500);
  while(1)
  {
    if(portb == 0x80)
    { while(portb != 0x01)
      {
        Delay_ms(500);
        portb = portb >> 1;
        Delay_ms(500);
      }
    }
    Delay_ms(500);
    portb = portb << 1;
    Delay_ms(500);
  }
}

char getpassword(){
     int i;
     char password[5];
     Loop:
          password[0] = 0; password[1] = 0; password[2] = 0; password[3] = 0; password[4] = 0;
          Lcd_Cmd(_LCD_CLEAR);
          Lcd_Out(1, 1, "Enter Password: ");

          for (i = 0; i < 4; i++)
          {
              while (password[i] == 0)
              {
                    password[i] = Keypad_Key_Click();
              }
              if (password[i] == 1) password[i] = '7';
              if (password[i] == 2) password[i] = '8';
              if (password[i] == 3) password[i] = '9';
              if (password[i] == 5) password[i] = '4';
              if (password[i] == 6) password[i] = '5';
              if (password[i] == 7) password[i] = '6';
              if (password[i] == 9) password[i] = '1';
              if (password[i] == 10) password[i] = '2';
              if (password[i] == 11) password[i] = '3';
              Lcd_Chr(2, i+1, 'X');
          }

          if (strcmp(password, "7422") == 0) return 74;
          else goto Loop;
}