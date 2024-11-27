#include <stdio.h>


typedef   signed short from_t;
typedef   signed char  to_t;

from_t  in;
to_t    out,out2;

to_t foo()
{
    return out = in;
}

from_t input[13] = 
{ 0xffff , 0xfffe , 0xfffd , 0xc000, 0x8002, 0x8001, 0x8000, 0x7fff, 0x7ffe, 0x4000, 2, 1, 0 };

const int size = sizeof(input)/sizeof(from_t);

to_t result[] = {
-1,
-2,
-3,
0,
2,
1,
0,
-1,
-2,
0,
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
