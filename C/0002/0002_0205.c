#include <stdio.h>
long long int res[6]={-3989547400LL, 1311768469162688511LL, 1311954866448324216LL,
		      1311954863604170751LL, -261456134187400LL, -261458978340865LL};

long long int foo1()
{
  return -3989547400; // ffffffff_12345678
}
long long int foo2()
{
  return 1311768469162688511; // 12345678_ffffffff
}
long long int foo3()
{
  return 1311954866448324216; // 1234ffff_ffff5678
}
long long int foo4()
{
  return 1311954863604170751; //1234ffff_5678ffff
}
long long int foo5()
{
  return -261456134187400; //ffff1234_ffff_5678
}
long long int foo6()
{
  return -261458978340865; // ffff1234_5678ffff
}
int main()
{
  int i;
  long long int calc[6];
  calc[0] = foo1();
  calc[1] = foo2();
  calc[2] = foo3();
  calc[3] = foo4();
  calc[4] = foo5();
  calc[5] = foo6();

  for(i=0;i<6;i++) {
    if (calc[i] != res[i]) {
      printf(" NG calc=%Ld res=%Ld \n", calc[i], res[i]);
    }
  }
  printf(" OK\n");
  return 0;
}

