#include <stdio.h>


typedef   signed int from_t;
typedef   signed long long to_t;

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
-1LL,
-2LL,
-3LL,
-1073741824LL,
-2147483646LL,
-2147483647LL,
-2147483648LL,
2147483647LL,
2147483646LL,
2147483645LL,
65535LL,
65534LL,
65533LL,
49152LL,
32770LL,
32769LL,
32768LL,
32767LL,
32766LL,
16384LL,
255LL,
254LL,
253LL,
192LL,
130LL,
129LL,
128LL,
127LL,
126LL,
64LL,
2LL,
1LL,
0LL,
};
int main()
{
  int i;
  for(i=0;i<size;i++) {
    in = input[i];
    out2 = foo();
#if RES
    printf("%lldLL,\n",out);
#else
    if( out2 != result[i] ) puts("NG");
    if( out != result[i] ) puts("NG");
#endif
  }
  puts("PASS");
}
