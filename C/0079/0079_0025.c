#include <stdio.h>


typedef   signed int from_t;
typedef unsigned int to_t;

from_t  in;
to_t    out,out2;

to_t foo()
{
    return out = in;
}

from_t input[] = 
{ 0xffffffff, 0xfffffffe, 0xfffffffd, 0xc0000000,
  0x80000002, 0x80000001, 0x80000000,
  0x7fffffff, 0x7ffffffe, 0x7ffffffd,
  0xffff , 0xfffe , 0xfffd , 0xc000, 0x8002, 0x8001, 0x8000, 
  0x7fff, 0x7ffe, 0x4000, 0xff , 0xfe , 0xfd , 0xc0,
  0x82, 0x81, 0x80, 0x7f, 0x7e, 0x40, 2, 1, 0 };

const int size = sizeof(input)/sizeof(from_t);

to_t result[] = {
4294967295,
4294967294,
4294967293,
3221225472,
2147483650,
2147483649,
2147483648,
2147483647,
2147483646,
2147483645,
65535,
65534,
65533,
49152,
32770,
32769,
32768,
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
    printf("%u,\n",out);
#else
    if( out2 != result[i] ) puts("NG");
    if( out != result[i] ) puts("NG");
#endif
  }
  puts("PASS");
}
