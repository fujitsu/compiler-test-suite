#include <stdio.h>
long long int res[4]={6148914690110281045LL,9223372032559852493LL,9223372035442180096LL,-9895299250177};

long long int foo1()
{
  return 6148914690110281045; // 55555555_12345555
}
long long int foo2()
{
  return 9223372032559852493;  // 7fffffff_0000abcd
}
long long int foo3()
{
  return 9223372035442180096; // 7fffffff_abcd8000
}
long long int foo4()
{
  return -9895299250177; //fffff700_123407ff
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

