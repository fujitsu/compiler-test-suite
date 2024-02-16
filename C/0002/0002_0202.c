#include <stdio.h>
long long int res[4]={2305840810727308800LL, -36028788437417983LL, 0,0};

long long int foo1()
{
  return 2305840810727308800; // 1ffffe00_1ffffe00
}
long long int foo2()
{
  return -36028788437417983; // ff800001_ff800001
}

int main()
{
  int i;
  long long int calc[4];
  calc[0] = foo1();
  calc[1] = foo2();
  calc[2] = 0;
  calc[3] = 0;

  for(i=0;i<4;i++) {
    if (calc[i] != res[i]) {
      printf(" NG calc=%Ld res=%Ld \n", calc[i], res[i]);
    }
  }
  printf(" OK\n");
  return 0;
}

