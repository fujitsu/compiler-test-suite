#include <stdio.h>
char           i1;    
short          i2;    
int            i4;    
long           i8;    
unsigned char  u1;    
unsigned short u2;    
unsigned int   u4;    
unsigned long  u8;    

void i4_conv(int a)
{
  char b;
  b = i4 + a;
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

  i4_conv(i1);  i4_conv(u1);
  i4_conv(i2);  i4_conv(u2);
  i4_conv(i4);  i4_conv(u4);
  i4_conv(i8);  i4_conv(u8);
}
