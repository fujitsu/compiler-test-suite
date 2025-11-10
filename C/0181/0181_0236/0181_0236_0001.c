#include <stdio.h>

void foo(int counter)
{
  int val = 0;
  
  for (int i = 0; i < counter; ++i) {
    if ((i % 10) != 0) {
      goto Hot;
    }
    else {
      goto Cold;
    }

  Hot:

    ++val;
    goto Next;

  Cold:


  Next:
    ;
  }

  goto Finish;

 Unused:
  __attribute__ ((unused));

 Finish:
  if (val == 90) { puts("OK"); }
}
