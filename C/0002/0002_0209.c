#include <stdio.h>
long long int res[4]={-261458978366788LL, 1311954863604144828LL,
		      1311768469162662588LL, 1311768467463798783LL};

long long int foo1()
{
  return -261458978366788; // ffff1234_56789abc
}

long long int foo2()
{
  return 1311954863604144828; // 1234ffff_56789abc
}
long long int foo3()
{
  return 1311768469162662588; // 12345678_ffff9abc
}

long long int foo4()
{
  return 1311768467463798783; //12345678_9abcffff
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

