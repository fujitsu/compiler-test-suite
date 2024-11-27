#include <stdio.h>


#define N 10
#define ANS 10
static void ptr_res();
int main()
{
  int ans = 0;
  static int aa[N],bb[N];
 
  ptr_res(aa,bb);

  ans = ans + aa[0] + bb[0];

  if (ans == ANS)
    printf("OK\n");
  else
    printf("NG\n");
}

static void ptr_res(aa,bb)
     int aa[N],bb[N];
{
  int *ptr1 = &aa[0];
  int *end_ptr1 = &aa[N-1];
  int *ptr2;
  int *end_ptr2;

  for ( ; ptr1 <= end_ptr1; ) {
    *ptr1 = 0;
    ptr2 = &bb[0];
    end_ptr2 = &bb[N-1];
    for ( ; ptr2 <= end_ptr2; ) {
      *ptr1 += (*ptr2++) + 1;
    }
    ptr1++;
  }
}
