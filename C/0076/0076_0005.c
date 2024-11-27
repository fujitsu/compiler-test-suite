#include <stdio.h>
int foo(int i)
{
   return ~i;
}

int input[13] = { (-2147483647-1), -2147483647 , -2147483646 ,
                -3, -2, -1, 0, 1, 2, 3,
                 2147483645, 2147483646, 2147483647 };

int result[13] = {
0x7fffffff,
0x7ffffffe,
0x7ffffffd,
0x2,
0x1,
0x0,
0xffffffff,
0xfffffffe,
0xfffffffd,
0xfffffffc,
0x80000002,
0x80000001,
0x80000000,
};
int main()
{
  int i,inp;
  for(i=0;i<13;i++) {
    inp = input[i];
    if( foo(inp) != result[i] ) puts("NG");
  }
  puts("PASS");
}
