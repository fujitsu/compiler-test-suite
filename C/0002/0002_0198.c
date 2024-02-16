#include <stdio.h>
long long int res[4]={9187201950435737471LL, -1012762419733073423LL, 8319119876378817395LL, 0};
  
long long int foo1()
{
  return 9187201950435737471;
}
long long int foo2()
{
  return -1012762419733073423;
}

long long int foo3()
{
  return 8319119876378817395;
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

