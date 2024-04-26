#include  <stdio.h>
void sub123456();
void sub____1();

int ext1=1;
int ext23456=1;
int ext345678=1;
int ext_1=1;
int ext_2345=1;
int ext_34567=1;
static int st______1=1;
static int st___________2=2;
static int st________________3=3;
static void sub();
int main() {
  static int stxxxxxx1=1;
  static int stxxxxxxxxxxx2=2;
  static int stxxxxxxxxxxxxxxxx3=3;
  printf("*** TEST START ***\n");
  if (st______1 == stxxxxxx1)
       { printf(" ** NO.1 TEST OK **\n"); }
  else { printf(" ## NO.1 TEST NG ##\n"); }
  if (st___________2 == stxxxxxxxxxxx2)
       { printf(" ** NO.2 TEST OK **\n"); }
  else { printf(" ## NO.2 TEST NG ##\n"); }
  if (st________________3 == stxxxxxxxxxxxxxxxx3)
       { printf(" ** NO.3 TEST OK **\n"); }
  else { printf(" ## NO.3 TEST NG ##\n"); }
  sub();
  sub____1();
  sub123456();
  printf("***  TEST END  ***\n");
}
static void sub() {
  if (ext1 == ext_1)
       { printf(" ** NO.4 TEST OK **\n"); }
  else { printf(" ## NO.4 TEST NG ##\n"); }
}
void sub____1() {
  if (ext23456 == ext_2345)
       { printf(" ** NO.5 TEST OK **\n"); }
  else { printf(" ## NO.5 TEST NG ##\n"); }
}
void sub123456() {
  if (ext345678 == ext_34567)
       { printf(" ** NO.6 TEST OK **\n"); }
  else { printf(" ## NO.6 TEST NG ##\n"); }
}
