#include <stdio.h>
long long int res[4]={20015998343868LL, -6066930335424145290LL, 0,0};

long long int foo1()
{
  return 20015998343868 ; // 00001234_56789abc
}

long long int foo2()
{
  return -6066930335424145290; // abcdef01_00009876
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

