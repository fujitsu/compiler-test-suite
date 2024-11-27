#include <stdio.h>
typedef unsigned long type_t; 
type_t foo(type_t i) { return i*0xffffff00; }

type_t c = 0xffffff00;
type_t bar(type_t i) { return i*c; }

type_t input[] = {
0xffffffffffffffff,
0xfffffffffffffffe,
0xf000000000000000,
0xf000000000000001,
0xffffffff00000000,
0xffffffff00000001,
       0x100000001,
       0x100000000,
        0xffffffff,
        0xfffffffe,
           0x10000,
            0xffff,
            0xfffe,
             0x100,
              0xff,
              0xfe,
              0x10,
               0xf,
               0x3,
               0x1,
};
int main()
{
  int i,n = sizeof(input)/sizeof(type_t);
  char *p = sizeof(type_t) == 8 ? "%lld\n" : "%d\n"; 
  for(i=0;i<n;i++) {
    if(foo(input[i]) != bar(input[i])) {
      printf(p,foo(input[i]));
      printf(p,bar(input[i]));
    }
  }
  puts("PASS");
}
