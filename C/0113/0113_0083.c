#include <stdio.h>


#define N 10
static void ptr_ini();
static void ptr_res1();
static void ptr_res2();
static void ptr_res3();
static void ptr_pri1();
static void ptr_pri2();
static void ptr_val1();
static int  sumary();
int main()
{
  int ans = 0, i;
  int aa[N],bb[N];
  int val=0;

  ptr_ini(aa,bb);
  ans = ans + sumary(aa) + sumary(bb);
  ptr_pri1(aa,bb);

  for (i=0; i<N; i++)
    ptr_res1(&aa[i],&bb[i],i);
  ans = ans + sumary(aa) + sumary(bb);
  ptr_pri1(aa,bb);

  ptr_res2(&aa[0],&bb[0]);
  ans = ans + sumary(aa) + sumary(bb);
  ptr_pri1(aa,bb);

  ptr_res3(&aa[N/2],&bb[N/2]);
  ans = ans + sumary(aa) + sumary(bb);
  ptr_pri1(aa,bb);

  ptr_val1(&val);
  ans = ans + val;

  ptr_pri2(&val);
  ptr_pri2(&ans);
}

static void ptr_ini(aa,bb)
     int aa[N], bb[N];
{
  int *ptr1     = &aa[0];
  int *end_ptr1 = &aa[N-1];
  int *ptr2     = &bb[0];
  int *end_ptr2 = &bb[N-1];
  int i = 0;

  for ( ; ptr1 <= end_ptr1 || ptr2 <= end_ptr2; ) {
    *ptr1 = i;
    i++;
    *ptr2 = i;
    ptr1++;
    ptr2++;
  }
  if (ptr1 <= end_ptr1) {
    for ( ; ptr1 <= end_ptr1; ) {
      *ptr1 = i;
      ptr1++;
    }
  }
  if (ptr2 <= end_ptr2) {
    for ( ; ptr2 <= end_ptr2; ) {
      *ptr2 = i;
      ptr2++;
    }
  }

}

static void ptr_res1(aa,bb,i)
     int *aa,*bb;
     int i;
{
  int * ptr1     = aa;
  int * end_ptr1 = &aa[(N-1)-i];
  int * ptr2     = bb;
  int * end_ptr2 = &bb[(N-1)-i];

  for ( ; ptr1 <= end_ptr1; ) {
    for ( ; ptr2 < end_ptr2; ) {
      *ptr2 = *ptr2 + 1;
      ptr2++;
    }
    *ptr2 = *ptr2 + 1;
    *ptr1 = *ptr1 + *ptr2;
    ptr1++;
  }
}

static void ptr_res2(aa,bb)
     int aa[N],bb[N];
{
  int * ptr1     = &aa[0];
  int * end_ptr1 = &aa[N-1];
  int * ptr2    ;
  int * end_ptr2;

  for ( ; ptr1 <= end_ptr1; ) {
    *ptr1 = 0;
    ptr2 = &bb[0];
    end_ptr2 = &bb[N-1];
    for ( ; ptr2 <= end_ptr2; ) {
      *ptr1 = (*ptr2++) + 1;
    }
    ptr1++;
  }
}

static void ptr_res3(aa,bb)
     int aa[N/2],bb[N/2];
{
  int * ptr1     = &aa[0];
  int * end_ptr1 = &aa[N/2-1];
  int * ptr2    ;
  int * end_ptr2;

  for ( ; ptr1 <= end_ptr1; ) {
    *ptr1 = 0;
    ptr2 = &bb[0];
    end_ptr2 = &bb[N/2-1];
    for ( ; ptr2 <= end_ptr2; ) {
      *ptr1 = (*ptr2++) + 1;
    }
    ptr1++;
  }
}

static void ptr_val1(val)
     int *val;
{
  int *tmp, i;

  for (i=0; i<N; i++) {
    tmp = val;
    tmp++;
    if (tmp == 0) {
      printf("Error");
    }
    tmp--;
    if (tmp == 0) {
      printf("Error");
    }
    *tmp = *tmp + 1;
  }
}

static void ptr_pri1(aa,bb)
     int aa[N],bb[N];
{
  int * ptr1     = &aa[0];
  int * end_ptr1 = &aa[N-1];
  int * ptr2     = &bb[0];
  int * end_ptr2 = &bb[N-1];

  for ( ; ptr1 <= end_ptr1; ) {
    printf("aa = %3d ",*ptr1);
    ptr1++;
  }
  printf("\n");
  for ( ; ptr2 <= end_ptr2; ) {
    printf("bb = %3d ",*ptr2);
    ptr2++;
  }
  printf("\n\n");
}

static void ptr_pri2(val)
     int *val;
{
  printf("val = %d\n",*val);
}

static int sumary(ary)
     int *ary;
{
  int *next, *end;
  int sum = 0;

  next = &ary[0];
  end  = &ary[N-1];

  while (next != end) {
    sum = sum + *next;
    next++;
  }
  sum = sum + *next;
  
  return(sum);
}
