#include <stdio.h>

typedef   signed short  from_t;
typedef   _Complex double    to_t;

from_t  in;
to_t    out,out2;

to_t foo()
{
    return out = in;
}

from_t input[] = 
{ 0xffff , 0xfffe , 0xfffd , 0xc000, 0x8002, 0x8001, 0x8000, 0x7fff, 0x7ffe, 0x4000, 2, 1, 0 };

const int size = sizeof(input)/sizeof(from_t);

to_t result[] = {
-1.000000,
-2.000000,
-3.000000,
-16384.000000,
-32766.000000,
-32767.000000,
-32768.000000,
32767.000000,
32766.000000,
16384.000000,
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
    printf("%g,\n",out);
#else
    if( out2 != result[i] ) puts("NG");
    if( out != result[i] ) puts("NG");
#endif
  }
  puts("PASS");
}
