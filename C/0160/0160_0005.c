#include <stdio.h>
char           i1;    
short          i2;    
int            i4;    
long           i8;    
unsigned char  u1;    
unsigned short u2;    
unsigned int   u4;    
unsigned long  u8;    

void u2_conv(unsigned short a)
{
  char b;
  b = u2 + a;
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

  u2_conv(i1);  u2_conv(u1);
  u2_conv(i2);  u2_conv(u2);
  u2_conv(i4);  u2_conv(u4);
  u2_conv(i8);  u2_conv(u8);
}
