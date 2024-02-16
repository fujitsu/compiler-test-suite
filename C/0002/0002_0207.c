#include <stdio.h>
long long int res[8]={8319119876378817395LL, 8102099357864587376LL,
		      217020518514230019LL, 3689348814741910323LL,
		      4629771061636907072LL, 9223372028264939520LL,
		      9223372028264841216LL, 98304LL};

long long int foo1()
{
  return 8319119876378817395;  // 73737373_73737373
}

long long int foo2()
{
  return 8102099357864587376; // 70707070_70707070
}
long long int foo3()
{
  return 217020518514230019; // 03030303_03030303
}
long long int foo4()
{
  return 3689348814741910323; // 33333333_33333333
}

long long int foo5()
{
  return 4629771061636907072; // 40404040_40404040
}
long long int foo6()
{
  return 9223372028264939520; // 7ffffffe_00018000
}
long long int foo7()
{
  return 9223372028264841216; // 7ffffffe_00000000
}
long long int foo8()
{
  return 98304; // 00000000_00018000
}
int main()
{
  int i;
  long long int calc[8];
  calc[0] = foo1();
  calc[1] = foo2();
  calc[2] = foo3();
  calc[3] = foo4();
  calc[4] = foo5();
  calc[5] = foo6();
  calc[6] = foo7();
  calc[7] = foo8();

  for(i=0;i<8;i++) {
    if (calc[i] != res[i]) {
      printf(" NG calc=%Ld res=%Ld \n", calc[i], res[i]);
    }
  }
  printf(" OK\n");
  return 0;
}

