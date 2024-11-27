#include <stdio.h>


long long int foo(long long int i)
{
   return ~i;
}

long long int  input[25] = { (-9223372036854775807LL-1LL) ,
                   -9223372036854775807LL , -9223372036854775806LL ,
                (-2147483648LL-3LL), (-2147483648LL-2LL), (-2147483648LL-1LL),
                (-2147483647-1), -2147483647 , -2147483646 ,
                -3, -2, -1, 0, 1, 2, 3,
                 2147483645, 2147483646, 2147483647,
                 2147483648LL, 2147483649LL, 2147483610LL,
                 9223372036854775805LL,
                 9223372036854775806LL,
                 9223372036854775807LL
                };

long long int result[25] = {
0x7fffffffffffffff,
0x7ffffffffffffffe,
0x7ffffffffffffffd,
0x0000000080000002,
0x0000000080000001,
0x0000000080000000,
0x000000007fffffff,
0x000000007ffffffe,
0x000000007ffffffd,
0x0000000000000002,
0x0000000000000001,
0x0000000000000000,
0xffffffffffffffff,
0xfffffffffffffffe,
0xfffffffffffffffd,
0xfffffffffffffffc,
0xffffffff80000002,
0xffffffff80000001,
0xffffffff80000000,
0xffffffff7fffffff,
0xffffffff7ffffffe,
0xffffffff80000025,
0x8000000000000002,
0x8000000000000001,
0x8000000000000000,
};
int main()
{
  int i;
  long long inp;
  for(i=0;i<25;i++) {
    inp = input[i];
    if( foo(inp) != result[i] ) puts("NG");

  }
  puts("PASS");
}

