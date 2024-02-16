#include <stdio.h>
long long int res[4]={8319119874747298675LL, 9221140251588788224LL, 0,0};

long long int foo1()
{
  return 8319119874747298675; // 73737373_12347373
}

long long int foo2()
{
  return 9221140251588788224; // 7ff81234_00018000
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

