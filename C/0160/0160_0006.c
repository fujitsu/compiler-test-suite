#include <stdio.h>
char           i1;    
short          i2;    
int            i4;    
long           i8;    
unsigned char  u1;    
unsigned short u2;    
unsigned int   u4;    
unsigned long  u8;    

void u4_conv(unsigned int a)
{
  char b;
  b = u4 + a;
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

  u4_conv(i1);  u4_conv(u1);
  u4_conv(i2);  u4_conv(u2);
  u4_conv(i4);  u4_conv(u4);
  u4_conv(i8);  u4_conv(u8);
}
