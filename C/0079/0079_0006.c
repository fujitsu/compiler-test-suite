#include <stdio.h>


typedef   signed char from_t;
typedef unsigned char to_t;

from_t  in;
to_t    out,out2;

to_t foo()
{
    return out = in;
}

from_t input[13] = 
{ 0xff , 0xfe , 0xfd , 0xc0, 0x82, 0x81, 0x80, 0x7f, 0x7e, 0x40, 2, 1, 0 };

const int size = sizeof(input)/sizeof(from_t);
int main()
{
  int i;
  for(i=0;i<size;i++) {
    in = input[i];
    out2 = foo();
    if( out2 != *(to_t *)&input[i] ) puts("NG");
    if( out != *(to_t *)&input[i] ) puts("NG");
  }
  puts("PASS");
}
