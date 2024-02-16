#include <stdio.h>
long long int res[5]={6148840882242606421LL, 9223372032865250253LL,
		      2305581550235336704LL,-144095172077551615LL,
		      35767340880647800LL};
		      
long long int foo1()
{
  return 6148840882242606421; // 55551234_56785555
}

long long int foo2()
{
  return 9223372032865250253; // 7fffffff_1234abcd
}
long long int foo3()
{
  return 2305581550235336704; // 1fff1234_5678c000
}

long long int foo4()
{
  return -144095172077551615; // fe001234_56780001
}
long long int foo5()
{
  return 35767340880647800; // 007f1234_ffc05678
}
int main()
{
  int i;
  long long int calc[5];
  calc[0] = foo1();
  calc[1] = foo2();
  calc[2] = foo3();
  calc[3] = foo4();
  calc[4] = foo5();

  for(i=0;i<5;i++) {
    if (calc[i] != res[i]) {
      printf(" NG calc=%Ld res=%Ld \n", calc[i], res[i]);
    }
  }
  printf(" OK\n");
  return 0;
}

