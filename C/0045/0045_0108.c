#include <stdio.h>
#include <stdlib.h>

int j;

int foo(int n)
{
  int i;
  i=0;
Label:
    i++;
    if (i>=10) return j;
    switch(n) {
    case 1: return 2;
    case 2: return 3;
    case 3: return 4;
    case 4: return 5;
    case 5: return 6;
    case 6: return 7;
    case 7: return 8;
    case 8: return 9;
    case 9: return 10;
    case 10: return 11;
    default:
      j++;
      goto Label;
    }
}

static const int ans[12] = { 9, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 9 };
int main()
{
  int i, c;
  for(i=0;i<12;i++) {
    j = 0;
    c = foo(i);
    if ( c != ans[i] ) {
       printf("NG %d %d %d \n", i, c, ans[i]);
       abort();
    }
  }
  printf("OK\n");
}
