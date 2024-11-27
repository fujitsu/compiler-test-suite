#include <stdio.h>


typedef   unsigned char  from_t;
typedef   signed short to_t;

from_t  in;
to_t    out,out2;

to_t foo()
{
    return out = in;
}

from_t input[13] = 
{ 0xff , 0xfe , 0xfd , 0xc0, 0x82, 0x81, 0x80, 0x7f, 0x7e, 0x40, 2, 1, 0 };

const int size = sizeof(input)/sizeof(from_t);

to_t result[] = {
255,
254,
253,
192,
130,
129,
128,
127,
126,
64,
2,
1,
0,
};
int main()
{
  int i;
  for(i=0;i<size;i++) {
    in = input[i];
    out2 = foo();
#if RES
    printf("%d,\n",out);
#else
    if( out2 != result[i] ) puts("NG");
    if( out != result[i] ) puts("NG");
#endif
  }
  puts("PASS");
}
