#include <stdio.h>


#define N 10
#define M 3
#define ANS 30
static int ptr_res();
int main()
{
  int aa[N],bb[N];
  int ptr_print();
  int ans;
  int i;

  for (i=0; i<N; i++) {
    aa[i] = i%3;
    bb[i] = i%6;
  }
  ans = ptr_res(aa, bb, &ptr_print);

  if (ans == ANS)
    printf("OK\n");
  else
    printf("NG\n");
}

static int ptr_res(aa,bb,print)
     int aa[N], bb[N];
     int (*print)();
{
  int res1, res2;
  int i;

  for (i=0; i<M; i++) {
    print++;
    if (print != 0) {
      print--;
      res1 = (*print)(aa);
      res2 = (*print)(bb);
    }
  }

  return(res1+res2);
}

int ptr_print(ary)
     int ary[N];
{
  int sum = 0;
  int i;

  for (i=0; i<N; i++) {
    sum = sum + ary[i];
  }
  return(sum);
}

