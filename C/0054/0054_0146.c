#include<stdio.h>
int func5();
int func4();
int func3();
int func2();
int func1();
 

int main()
{
  printf("02 START\n");
  func1();
  func2();
  func3();
  func4();
  func5();
  printf("02 END  \n");
}

int func1(){
  static char           ch = 1;
  static unsigned char  uc = 2;
  static int            in = 3, a;
  static unsigned int   ui = 4, b;
  static short int           sh = 5;
  static unsigned short int  us = 6;
  static long int            lo = 7 ;
  static unsigned long int   ul = 8 ;

  a = ch % in;
  if (a == 1)
    printf("02 FUNC1-1 OK\n");
  else
    printf("02 FUNC1-1 NG\n");

  a = us%ch;
  if (a == 0)
    printf("02 FUNC1-2 OK\n");
  else
    printf("02 FUNC1-2 NG\n");

  a = ch%lo;
  if (a == 1)
    printf("02 FUNC1-3 OK\n");
  else
    printf("02 FUNC1-3 NG\n");

  a = in%ui;
  if (a == 3)
    printf("02 FUNC1-4 OK\n");
  else
    printf("02 FUNC1-4 NG\n");

  a = ui%sh;
  if (a == 4)
    printf("02 FUNC1-5 OK\n");
  else
    printf("02 FUNC1-5 NG\n");

  a = ui%ul;
  if (a == 4)
    printf("02 FUNC1-6 OK\n");
  else
    printf("02 FUNC1-6 NG\n");

  a = us%ui;
  if (a == 2)
    printf("02 FUNC1-7 OK\n");
  else
    printf("02 FUNC1-7 NG\n");

  a = sh%lo;
  if (a == 5)
    printf("02 FUNC1-8 OK\n");
  else
    printf("02 FUNC1-8 NG\n");

  a = ul%sh;
  if (a == 3)
    printf("02 FUNC1-9 OK\n");
  else
    printf("02 FUNC1-9 NG\n");

  a = lo%uc;
  if (a == 1)
    printf("02 FUNC1-10 OK\n");
  else
    printf("02 FUNC1-10 NG\n");

}

int func2(){
  static char           ch = 1;
  static unsigned char  uc = 2;
  static int           in = 3, a;
  static unsigned int  ui = 4;
  static short int           sh = 5;
  static unsigned short int  us = 6;
  static long int           lo = 7 ;
  static unsigned long int  ul = 8 ;

  a = ch <<in;
  if (a == 8)
    printf("02 FUNC2-1 OK\n");
  else
    printf("02 FUNC2-1 NG\n");

  a = us<<ch;
  if (a == 12)
    printf("02 FUNC2-2 OK\n");
  else
    printf("02 FUNC2-2 NG\n");

  a = ch<<lo;
  if (a ==128)
    printf("02 FUNC2-3 OK\n");
  else
    printf("02 FUNC2-3 NG\n");

  a = uc<<in;
  if (a ==16)
    printf("02 FUNC2-4 OK\n");
  else
    printf("02 FUNC2-4 NG\n");

  a = sh<<ui;
  if (a ==80)
    printf("02 FUNC2-5 OK\n");
  else
    printf("02 FUNC2-5 NG\n");

  a = ul>>uc;
  if (a == 2)
    printf("02 FUNC2-6 OK\n");
  else
    printf("02 FUNC2-6 NG\n");

  a = lo>>ch;
  if (a == 3)
    printf("02 FUNC2-7 OK\n");
  else
    printf("02 FUNC2-7 NG\n");

  a = sh>>uc;
  if (a == 1)
    printf("02 FUNC2-8 OK\n");
  else
    printf("02 FUNC2-8 NG\n");

  a = sh>>ch;
  if (a == 2)
    printf("02 FUNC2-9 OK\n");
  else
    printf("02 FUNC2-9 NG%x\n" ,a);

  a = us>>ch;
  if (a == 3)
    printf("02 FUNC2-10 OK\n");
  else
    printf("02 FUNC2-10 NG\n");

}

int func3(){
  static char           ch = 1;
  static unsigned char  uc = 2;
  static int           in = 3, a;
  static unsigned int  ui = 4;
  static short int           sh = 5;
  static unsigned short int  us = 6;
  static long int           lo = 7 ;
  static unsigned long int  ul = 8 ;

  a = ch & in;
  if (a == 1)
    printf("02 FUNC3-1 OK\n");
  else
    printf("02 FUNC3-1 NG\n");

  a = us&ch;
  if (a == 0)
    printf("02 FUNC3-2 OK\n");
  else
    printf("02 FUNC3-2 NG\n");

  ch = -1;
  a = ch&lo;
  if (a == 7)
    printf("02 FUNC3-3 OK\n");
  else
    printf("02 FUNC3-3 NG\n");

  a = ch&sh;
  if (a == 5)
    printf("02 FUNC3-4 OK\n");
  else
    printf("02 FUNC3-4 NG\n");

  a = sh&ui;
  if (a == 4)
    printf("02 FUNC3-5 OK\n");
  else
    printf("02 FUNC3-5 NG\n");

  a = ul&ui;
  if (a == 0)
    printf("02 FUNC3-6 OK\n");
  else
    printf("02 FUNC3-6 NG\n");

  ui = 0xffffffff;
  a = us&ui;
  if (a == 6)
    printf("02 FUNC3-7 OK\n");
  else
    printf("02 FUNC3-7 NG\n");

  a = sh&lo;
  if (a == 5)
    printf("02 FUNC3-8 OK\n");
  else
    printf("02 FUNC3-8 NG\n");

  sh = 0xffff;
  a = sh&ch;

#if INT64
  if (a == 0xffffffffffffffff)
#else
  if (a == 0xffffffff)
#endif
    printf("02 FUNC3-9 OK\n");
  else
    printf("02 FUNC3-9 NG\n");

  a = 15 & ch;
  if (a == 15)
    printf("02 FUNC3-10 OK\n");
  else
    printf("02 FUNC3-10 NG\n");

}

int func4(){
  static char           ch =-1;
  static unsigned char  uc = 0;
  static int           in = 1, a;
  static unsigned int  ui = 2;
  static short int           sh = 3;
  static unsigned short int  us = 4;
  static long int           lo = 5 ;
  static unsigned long int  ul = 6 ;

  a = ch | in;

  if (a == -1)
    printf("02 FUNC4-1 OK\n");
  else
    printf("02 FUNC4-1 NG\n");

  a = us|ch;
  if (a == -1)
    printf("02 FUNC4-2 OK\n");
  else
    printf("02 FUNC4-2 NG\n");

  a = lo|ch;
  if (a == -1)
    printf("02 FUNC4-3 OK\n");
  else
    printf("02 FUNC4-3 NG\n");

  a = uc|ch;
  if (a == -1)
    printf("02 FUNC4-4 OK\n");
  else
    printf("02 FUNC4-4 NG\n");

  a = sh|ui;
  if (a == 3)
    printf("02 FUNC4-5 OK\n");
  else
    printf("02 FUNC4-5 NG\n");

  a = ul|ui;
  if (a == 6)
    printf("02 FUNC4-6 OK\n");
  else
    printf("02 FUNC4-6 NG\n");

  a = in|ui;
  if (a == 3)
    printf("02 FUNC4-7 OK\n");
  else
    printf("02 FUNC4-7 NG\n");

  a = lo|sh;
  if (a == 7)
    printf("02 FUNC4-8 OK\n");
  else
    printf("02 FUNC4-8 NG\n");

  a = sh|uc;
  if (a == 3)
    printf("02 FUNC4-9 OK\n");
  else
    printf("02 FUNC4-9 NG\n");

  a = sh|us;
  if (a == 7)
    printf("02 FUNC4-10 OK\n");
  else
    printf("02 FUNC4-10 NG\n");

}

int func5(){
  static char           ch =-1;
  static unsigned char  uc = 0;
  static int            in = 1, a;
  static unsigned int   ui = 2;
  static short int           sh = 3;
  static unsigned short int  us = 4;
  static long int            lo = 5 ;
  static unsigned long int   ul = 6 ;

  a = ch ^ in;

#if INT64
  if (a == 0xfffffffffffffffe)
#else
  if (a == 0xfffffffe)
#endif
    printf("02 FUNC5-1 OK\n");
  else
    printf("02 FUNC5-1 NG\n");

  a = us^ch;
#if INT64
  if (a == 0xfffffffffffffffb)
#else
  if (a == 0xfffffffb)
#endif
    printf("02 FUNC5-2 OK\n");
  else
    printf("02 FUNC5-2 NG %X\n",a);

  a = lo^ch;
#if INT64
  if (a == 0xfffffffffffffffa)
#else
  if (a == 0xfffffffa)
#endif
    printf("02 FUNC5-3 OK\n");
  else
    printf("02 FUNC5-3 NG %X\n",a);

  a = uc^ch;
#if INT64
  if (a == 0xffffffffffffffff)
#else
  if (a == 0xffffffff)
#endif
    printf("02 FUNC5-4 OK\n");
  else
    printf("02 FUNC5-4 NG%d\n",a);

  a = sh^ui;
  if (a == 1)
    printf("02 FUNC5-5 OK\n");
  else
    printf("02 FUNC5-5 NG\n");

  a = ul^ui;
  if (a == 4)
    printf("02 FUNC5-6 OK\n");
  else
    printf("02 FUNC5-6 NG\n");

  a = in^ui;
  if (a == 3)
    printf("02 FUNC5-7 OK\n");
  else
    printf("02 FUNC5-7 NG\n");

  a = lo^sh;
  if (a == 6)
    printf("02 FUNC5-8 OK\n");
  else
    printf("02 FUNC5-8 NG\n");

  a = sh^uc;
  if (a == 3)
    printf("02 FUNC5-9 OK\n");
  else
    printf("02 FUNC5-9 NG\n");

  a = sh^us;
  if (a == 7)
    printf("02 FUNC5-10 OK\n");
  else
    printf("02 FUNC5-10 NG\n");

}
