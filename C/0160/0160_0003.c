#include <stdio.h>
char           i1;    
short          i2;    
int            i4;    
long           i8;    
unsigned char  u1;    
unsigned short u2;    
unsigned int   u4;    
unsigned long  u8;    

void i8_conv(long a)
{
  char b;
  b = i8 + a;
  if(b == 2)
    {
      printf("OK\n");
    }
  else
    {
      printf("NG\n");
    }
}
int main()
{
  i1 = i2 = i4 = i8 = 1;
  u1 = u2 = u4 = u8 = 1;

  i8_conv(i1);  i8_conv(u1);
  i8_conv(i2);  i8_conv(u2);
  i8_conv(i4);  i8_conv(u4);
  i8_conv(i8);  i8_conv(u8);
}
