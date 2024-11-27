#include <stdio.h>
int func2();
int func1();
int main()
{
  printf("M3XLOR01 START\n");
  printf("ERROR CASE  CONTROL NOT PASSED\n");
  func1();
  func2();
  printf("M3XLOR01 END  \n");
}
int func1(){
  static int       i = 0, a;
  static short int s = 1;
  static char      c = 2;
  static unsigned int       ui = 3;
  static unsigned short int us = 4;
  static unsigned char      uc = 5;

  a = ((0+0)&&(i||c));
  if (a == 1)
    printf("M3XLOR01 FUNC1-1 NG\n");
  else
    printf("M3XLOR01 FUNC1-1 OK\n");

  a = (((1-1)||(0-0))&&((ui*ui-9)||(uc/uc)));
  if (a == 1)
    printf("M3XLOR01 FUNC1-2 NG\n");
  else
    printf("M3XLOR01 FUNC1-2 OK\n");

  a = (((s+s)&&(0-0))&&((ui*ui-9)&&(uc/uc)));
  if (a == 1)
    printf("M3XLOR01 FUNC1-3 NG\n");
  else
    printf("M3XLOR01 FUNC1-3 OK\n");

  a = ((!(2*3*4+1*1))&&((ui<=ui)&&(uc/uc)));
  if (a == 1)
    printf("M3XLOR01 FUNC1-4 NG\n");
  else
    printf("M3XLOR01 FUNC1-4 OK\n");

  a = ((100<10)&&((ui*ui-9)||(uc/uc)));
  if (a == 1)
    printf("M3XLOR01 FUNC1-5 NG\n");
  else
    printf("M3XLOR01 FUNC1-5 OK\n");

  a = ((s<=s)&&(0&&(uc/uc)));
  if (a == 1)
    printf("M3XLOR01 FUNC1-6 NG\n");
  else
    printf("M3XLOR01 FUNC1-6 OK\n");

  a = ((s<=s)&&(1||(uc/uc)));
  if (a == 0)
    printf("M3XLOR01 FUNC1-7 NG\n");
  else
    printf("M3XLOR01 FUNC1-7 OK\n");

  a = ((i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||s&&c)&&
      (i&&0||0||i&&0||i&&0||i&&0||i&&0||0||i&&0||i&&
      i&&0||0||i&&0||i&&0||i&&0||i&&0||i||i&&0||i&&
      i&&0||i||i&&0||i&&0||i&&0||i&&0||i||i&&0||i&&
      i&&0||i||i&&0||i&&0||i&&0||i&&0||i||i&&0||0&&0));
  if (a == 1)
    printf("M3XLOR01 FUNC1-8 NG\n");
  else
    printf("M3XLOR01 FUNC1-8 OK\n");

  a = (i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&
      i&&i||i||i&&i||i&&i||i&&i||0&&i||i||i&&i||i&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&i);
  if (a == 1)
    printf("M3XLOR01 FUNC1-9 NG\n");
  else
    printf("M3XLOR01 FUNC1-9 OK\n");
}
int func2(){
  static int       i = 0, a;
  static short int s = 1;
  static char      c = 2;
  static unsigned int       ui = 3;
  static unsigned short int us = 4;
  static unsigned char      uc = 5;

  a = ((0+1)||(i||c));
  if (a == 1)
    printf("M3XLOR01 FUNC2-1 OK\n");
  else
    printf("M3XLOR01 FUNC2-1 NG\n");

  a = (((0+0)||(1+1))||((ui*ui-9)||(uc/uc)));
  if (a == 1)
    printf("M3XLOR01 FUNC2-2 OK\n");
  else
    printf("M3XLOR01 FUNC2-2 NG\n");

  a = (((1+1)&&(2-1))||((ui*ui-9)&&(uc/uc)));
  if (a == 1)
    printf("M3XLOR01 FUNC2-3 OK\n");
  else
    printf("M3XLOR01 FUNC2-3 NG\n");

  a = ((!(0+0+0+1*0))||((ui<=ui)&&(uc/uc)));
  if (a == 1)
    printf("M3XLOR01 FUNC2-4 OK\n");
  else
    printf("M3XLOR01 FUNC2-4 NG\n");

  a = ((100>10)||((ui*ui-9)||(uc/uc)));
  if (a == 1)
    printf("M3XLOR01 FUNC2-5 OK\n");
  else
    printf("M3XLOR01 FUNC2-5 NG\n");

  a = ((s<=s)||(0&&(uc/uc)));
  if (a == 1)
    printf("M3XLOR01 FUNC2-6 OK\n");
  else
    printf("M3XLOR01 FUNC2-6 NG\n");

  a = ((s<=s)||(1||(uc/uc)));
  if (a == 1)
    printf("M3XLOR01 FUNC2-7 OK\n");
  else
    printf("M3XLOR01 FUNC2-7 NG\n");

  a = ((i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&1||1&&1)||
      (i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&i));
  if (a == 1)
    printf("M3XLOR01 FUNC2-8 OK\n");
  else
    printf("M3XLOR01 FUNC2-8 NG\n");

  a = (i||i||i||i||i||i||i||i||i||i||i||i||i||i||i||
      i||i||i||i||i||i||i||i||i||i||i||i||i||i||i||
      i||i||i||i||i||i||i||i||i||i||i||i||i||i||i||
      i||i||i||i||i||i||i||i||i||i||i||i||i||i||i||
      i||i||i||i||i||i||i||i||i||i||i||i||i||i||i||
      i||i||i||i||i||i||i||i||i||i||i||i||i||i||i||
      i||i||i||i||i||i||i||i||i||1||1||i||i||i||i||
      i||i||i||i||i||i||i||i||i||i||i||i||i||i||i||i);
  if (a == 1)
    printf("M3XLOR01 FUNC2-9 OK\n");
  else
    printf("M3XLOR01 FUNC2-9 NG\n");
}
