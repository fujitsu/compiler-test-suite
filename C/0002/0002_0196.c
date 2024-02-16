#include <stdio.h>
long long int res[4]={65535LL, 4294901760LL, 281470681743360LL, -281474976710656LL};

long long int foo1()
{
  return 65535;  // 00000000_0000ffff 
}
long long int foo2()
{
  return 4294901760; // 00000000_ffff0000
}
long long int foo3()
{
  return 281470681743360; // 0000ffff_00000000
}
long long int foo4()
{
  return -281474976710656; // ffff0000_00000000
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

