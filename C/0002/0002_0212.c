#include <stdio.h>
long long int res[12]={-281474976705996LL, -281474671312896LL, -261460429111296LL,
		       281470681748020LL, 281470987141120LL, 1311954862153400320LL,
		       4294906420LL, 1311673395766558720LL, 20018842501120LL,
		       1311673391471722495LL, 20014547664895LL, 305463295LL};

long long int foo1()
{
  return -281474976705996; // ffff0000_00001234
}
long long int foo2()
{
  return -281474671312896; // ffff0000_12340000
}
long long int foo3()
{
  return -261460429111296; // ffff1234_00000000
}

long long int foo4()
{
  return 281470681748020; // 0000ffff_00001234
}
long long int foo5()
{
  return 281470987141120;  // 0000ffff_12340000
}

long long int foo6()
{
  return 1311954862153400320; // 1234ffff_00000000
}

long long int foo7()
{
  return 4294906420; // 00000000_ffff1234
}
long long int foo8()
{
  return 1311673395766558720;  // 12340000_ffff0000
}
long long int foo9()
{
  return 20018842501120;  //  00001234_ffff0000
}

long long int foo10()
{
  return 1311673391471722495; // 12340000_0000ffff
}
long long int foo11()
{
  return 20014547664895;  // 00001234_0000ffff
}
long long int foo12()
{
  return 305463295; // 00000000_1234ffff
}

int main()
{
  int i;
  long long int calc[12];
  calc[0] = foo1();
  calc[1] = foo2();
  calc[2] = foo3();
  calc[3] = foo4();
  calc[4] = foo5();
  calc[5] = foo6();
  calc[6] = foo7();
  calc[7] = foo8();
  calc[8] = foo9();
  calc[9] = foo10();
  calc[10] = foo11();
  calc[11] = foo12();

  for(i=0;i<12;i++) {
    if (calc[i] != res[i]) {
      printf(" NG calc=%Ld res=%Ld \n", calc[i], res[i]);
    }
  }
  printf(" OK\n");
  return 0;
}

