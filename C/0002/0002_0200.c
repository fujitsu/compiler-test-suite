#include <stdio.h>
long long int res[4]={1229782938247303441LL, -1229782938247303442LL, 0,0};

long long int foo1()
{
  return 1229782938247303441; // 11111111_11111111
}
long long int foo2()
{
  return -1229782938247303442; // eeeeeeee_eeeeeeee
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

