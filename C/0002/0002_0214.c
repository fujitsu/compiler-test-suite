#include <stdio.h>
long long int res[4]={1311768464867721216LL, 1311673392922361856LL,
		      20015998304256LL,0};

long long int foo1()
{
  return 1311768464867721216; // 12345678_00000000
}
long long int foo2()
{
  return 1311673392922361856;  // 12340000_56780000
}
long long int foo3()
{
  return 20015998304256; // 00001234_56780000
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

