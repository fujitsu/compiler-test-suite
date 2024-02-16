#include <stdio.h>
long long int res[4]={1311673391471656960LL, 20014547599360LL, 305397760LL,0};

long long int foo1()
{
  return 1311673391471656960; // 12340000_00000000
}
long long int foo2()
{
  return 20014547599360;  // 00001234_00000000
}
long long int foo3()
{
  return 305397760; // 00000000_12340000
}


int main()
{
  int i;
  long long int calc[4];
  calc[0] = foo1();
  calc[1] = foo2();
  calc[2] = foo3();
  calc[3] = 0;

  for(i=0;i<4;i++) {
    if (calc[i] != res[i]) {
      printf(" NG calc=%Ld res=%Ld \n", calc[i], res[i]);
    }
  }
  printf(" OK\n");
  return 0;
}

