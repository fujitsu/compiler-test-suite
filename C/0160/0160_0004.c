#include <stdio.h>
char           i1;    
short          i2;    
int            i4;    
long           i8;    
unsigned char  u1;    
unsigned short u2;    
unsigned int   u4;    
unsigned long  u8;    

void u1_conv(unsigned char a)
{
  char b;
  b = u1 + a;
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

  u1_conv(i1);  u1_conv(u1);
  u1_conv(i2);  u1_conv(u2);
  u1_conv(i4);  u1_conv(u4);
  u1_conv(i8);  u1_conv(u8);
}
