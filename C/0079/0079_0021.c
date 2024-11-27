#include <stdio.h>


typedef   signed int from_t;
typedef   signed short to_t;

from_t  in;
to_t    out,out2;

to_t foo()
{
    return out = in;
}

from_t input[] = 
{ 0xffff , 0xfffe , 0xfffd , 0xc000, 0x8002, 0x8001, 0x8000, 
  0x7fff, 0x7ffe, 0x4000, 0xff , 0xfe , 0xfd , 0xc0,
  0x82, 0x81, 0x80, 0x7f, 0x7e, 0x40, 2, 1, 0 };

const int size = sizeof(input)/sizeof(from_t);

to_t result[] = {
-1,
-2,
-3,
-16384,
-32766,
-32767,
-32768,
32767,
32766,
16384,
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
