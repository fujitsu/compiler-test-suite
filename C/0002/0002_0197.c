#include <stdio.h>
long long int res[4]={-65280LL, -4278124545LL, -280371170115585LL, 72339069014638591LL};

long long int foo1()
{
  return -65280;  // ffffffff_ffff0100
}
long long int foo2()
{
  return -4278124545; // ffffffff_0100ffff
}
long long int foo3()
{
  return -280371170115585; // ffff0100_ffffffff
}
long long int foo4()
{
  return 72339069014638591; // 0100ffffffffffff
}

int main()
{
  int i;
  long long int calc[4];
  calc[0] = foo1();
  calc[1] = foo2();
  calc[2] = foo3();
  calc[3] = foo4();

  for(i=0;i<4;i++) {
    if (calc[i] != res[i]) {
      printf(" NG calc=%Ld res=%Ld \n", calc[i], res[i]);
    }
  }
  printf(" OK\n");
  return 0;
}

