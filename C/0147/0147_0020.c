#include <stdio.h>

typedef   signed int  from_t;
typedef   _Complex long double    to_t;

from_t  in;
to_t    out,out2;

to_t foo()
{
    return out = in;
}

from_t input[] = 
{ 0xffffffff , 0xfffffffe , 0xfffffffd , 0xffffffc0, 0xffffff82, 0xffffff81, 0xffffff80, 0x7f, 0x7e, 0x40, 2, 1, 0 };

const int size = sizeof(input)/sizeof(from_t);

const to_t result[] = {
-1,
-2,
-3,
-64,
-126,
-127,
-128,
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
    printf("%g,\n",(double)out);
#else
    if( out2 != result[i] ) puts("NG");
    if( out != result[i] ) puts("NG");
#endif
  }
  puts("PASS");
}
