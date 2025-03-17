#include <stdio.h>

typedef   unsigned int  from_t;
typedef   _Complex double    to_t;

from_t  in;
to_t    out,out2;

to_t foo()
{
    return out = in;
}

from_t input[] = 
{ 0xff , 0xfe , 0xfd , 0xc0, 0x82, 0x81, 0x80, 0x7f, 0x7e, 0x40, 2, 1, 0 };

const int size = sizeof(input)/sizeof(from_t);

const to_t result[] = {
255.000000,
254.000000,
253.000000,
192.000000,
130.000000,
129.000000,
128.000000,
127.000000,
126.000000,
64.000000,
2.000000,
1.000000,
0.000000,
};
int main()
{
  int i;
  for(i=0;i<size;i++) {
    in = input[i];
    out2 = foo();
#if RES
    printf("%f,\n",(float)out);
#else
    if( out2 != result[i] ) puts("NG");
    if( out != result[i] ) puts("NG");
#endif
  }
  puts("PASS");
}
