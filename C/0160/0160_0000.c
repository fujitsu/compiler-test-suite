#include <stdio.h>
char           i1;    
short          i2;    
int            i4;    
long           i8;    
unsigned char  u1;    
unsigned short u2;    
unsigned int   u4;    
unsigned long  u8;    

void i1_conv(char a)
{
  char b;
  b = i1 + a;
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

  i1_conv(i1);  i1_conv(u1);
  i1_conv(i2);  i1_conv(u2);
  i1_conv(i4);  i1_conv(u4);
  i1_conv(i8);  i1_conv(u8);
}
