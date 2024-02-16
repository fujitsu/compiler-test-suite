#include <stdio.h>
long long int res[4]={2303626359948713976LL, -571965880182769649LL, 0,0};

long long int foo1()
{
  return 2303626359948713976; // 1ff81ff8_1ff81ff8
}
long long int foo2()
{
  return -571965880182769649; //f80ff80f_f80ff80f
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

