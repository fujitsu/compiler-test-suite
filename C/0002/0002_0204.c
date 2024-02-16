#include <stdio.h>
long long int res[8]={65537LL, 4294967293LL, 1311673392922361856LL, 1450704896LL,
		      20014547621496LL,1311768464867721216LL,
		      1311673391471679096LL, 20015998304256LL};
		      
long long int foo1()
{
  return 65537; // 00000000_00010001
}
long long int foo2()
{
  return 4294967293;  // 00000000_fffffffd
}
long long int foo3()
{
  return 1311673392922361856; // 12340000_56780000
}

long long int foo3a()
{
  return 1450704896;  //  00000000_56780000
}

long long int foo4()
{
  return 20014547621496;  // 00001234_00005678
}
long long int foo5()
{
  return 1311768464867721216;  // 12345678_00000000
}
long long int foo6()
{
  return 1311673391471679096; // 12340000_00005678
}
long long int foo7()
{
  return 20015998304256; // 00001234_56780000
}

int main()
{
  int i;
  long long int calc[8];
  calc[0] = foo1();
  calc[1] = foo2();
  calc[2] = foo3();
  calc[3] = foo3a();
  calc[4] = foo4();
  calc[5] = foo5();
  calc[6] = foo6();
  calc[7] = foo7();

  for(i=0;i<8;i++) {
    if (calc[i] != res[i]) {
      printf(" NG calc=%Ld res=%Ld \n", calc[i], res[i]);
    }
  }
  printf(" OK\n");
  return 0;
}

