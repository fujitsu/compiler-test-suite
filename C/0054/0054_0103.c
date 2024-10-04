#include<stdio.h>
int f1 (void);
int func11 (void);
int func10 (void);
int func9 (void);
int func8 (void);
int func7 (void);
int func6 (void);
int func5 (void);
int func4 (void);
int func3 (void);
int func2 (void);
int func1 (void);
int f (void);
 

int main()
{
  printf("01 START\n");
  func1();
  func2();
  func3();
  func4();
  func5();
  func6();
  func7();
  func8();
  func9();
  func10();
  func11();
  printf("01 END  \n");
}

int 
func1 (void){
  static char               ch = 0;
  static unsigned char      uc = 1;
  static int             a, in = 2;
  static unsigned int       ui = 3;
  static short int          si = 4;
  static unsigned short int us = 5;
  static long int           li = 6;
  static unsigned long int  ul = 7;
  static float              fl = 8.0f;
  static double             db = 9.0 ;
  static long double        ld = 0.0l;

  a = ((ch || ch) || (ld || ui));
  if (a == 1)
    printf("01 FUNC1-1 OK\n");
  else
    printf("01 FUNC1-1 NG\n");

  a = (((in-in)||(si-si)) || ((us*ul-35)||(fl+db)));
  if (a == 1)
    printf("01 FUNC1-2 OK\n");
  else
    printf("01 FUNC1-2 NG\n");

  a = (((uc-uc)||(ui*0)) || ((li-6)||(fl*db)));
  if (a == 1)
    printf("01 FUNC1-3 OK\n");
  else
    printf("01 FUNC1-3 NG\n");
}

int 
func2 (void){
  static int             a, i = 0, *ip = &i;
  static short int          s = 2, *sp = &s;
  static char               c = 3, *cp = &c;
  static unsigned int       ui[2] = {4,0};
  static unsigned short int us[3] = {0,5,0};
  static unsigned char      uc[4] = {0,0,0,6};
  static float              fl = 8.0f, *flp = &fl;
  static double             db = 9.0 , *dbp = &db;
  static long double        ld = 0.0l, *ldp = &ld;

  a = ((i&&i)||(s&&c));
  if (a == 1)
    printf("01 FUNC2-1 OK\n");
  else
    printf("01 FUNC2-1 NG\n");

  a = (((i+i)&&(i*s))||(us[1]&&uc[3]));
  if (a == 1)
    printf("01 FUNC2-2 OK\n");
  else
    printf("01 FUNC2-2 NG\n");

  a = ((((*ip)+(*ip))&&((*ip)*(*sp)))||((*cp)&&(*sp)));
  if (a == 1)
    printf("01 FUNC2-3 OK\n");
  else
    printf("01 FUNC2-3 NG\n");

  a = ((((*flp)+(*flp))&&((*dbp)-(*dbp)))||((*dbp)&&(*ldp+1)));
  if (a == 1)
    printf("01 FUNC2-4 OK\n");
  else
    printf("01 FUNC2-4 NG\n");
}

int 
func3 (void){
  static int    a, i = 0, *ip = &i;
  static short int s = 2;
  static char      c = 3;
  static unsigned int       ui[2] = {4,0};
  static unsigned short int us[3] = {0,5,0};
  static unsigned char      uc[4] = {0,0,0,6};
  static float              fl = 8.0f, *flp = &fl;
  static double             db = 9.0 , *dbp = &db;
  static long double        ld = 0.0l, *ldp = &ld;
  static struct tag{ int a;} st = {1},*stp = &st;

  a = ((i||i)||(c&&c));
  if (a == 1)
    printf("01 FUNC3-1 OK\n");
  else
    printf("01 FUNC3-1 NG\n");

  a = (((*ip)||(ui[1]))||((s+s)&&((*stp).a)));
  if (a == 1)
    printf("01 FUNC3-2 OK\n");
  else
    printf("01 FUNC3-2 NG\n");

  a = (((f())||(c+3))||(((*stp).a)&&(f()+1)));
  if (a == 1)
    printf("01 FUNC3-3 OK\n");
  else
    printf("01 FUNC3-3 NG\n");

  a = ((*ldp)||ld) || ((*dbp+db)&&((*flp)*fl));
  if (a == 1)
    printf("01 FUNC3-4 OK\n");
  else
    printf("01 FUNC3-4 NG\n");
}
int 
f (void)
{
   return 0;
}

int 
func4 (void){
  static int    a, i = 0;
  static short int s = 2;
  static char      c = 3;
  static unsigned int       ui = 4;
  static unsigned short int us = 5;
  static unsigned char      uc = 6;
  static unsigned int    ar[4] = {0,0,1,1};
  static float              fl = 1.0f, *flp = &fl;
  static double             db = 2.0 , *dbp = &db;
  static long double        ld = 0.0l, *ldp = &ld;
  static struct tag{ unsigned int a:3;
                      unsigned int b:5;
                   }bit = {2,0};
  static union utag{ int a;
                      int b;
                   }uni;
  uni.a = 1;

  a = (!(s)||!(i));
  if (a == 1)
    printf("01 FUNC4-1 OK\n");
  else
    printf("01 FUNC4-1 NG\n");

  a = (!(uni.a)||!(ar[1]));
  if (a == 1)
    printf("01 FUNC4-2 OK\n");
  else
    printf("01 FUNC4-2 NG\n");

  a = (!(*flp)||!(*ldp));
  if (a == 1)
    printf("01 FUNC4-3 OK\n");
  else
    printf("01 FUNC4-3 NG\n");
}

int 
func5 (void){
  static int    a, i = 0;
  static short int s = 2;
  static char      c = 3;
  static unsigned int       ui = 4;
  static unsigned short int us = 5;
  static unsigned char      uc = 6;
  static unsigned int    ar[4] = {0,0,1,1};
  static struct tag{ unsigned int a:3;
                      unsigned int b:5;
                   }bit = {2,0};
  static union utag{ int a;
                      int b;
                   }uni;
  uni.a = 1;

  a = ((ar[i])||(bit.a));
  if (a == 1)
    printf("01 FUNC5-1 OK\n");
  else
    printf("01 FUNC5-1 NG\n");

  a = (f()||f1());
  if (a == 1)
    printf("01 FUNC5-2 OK\n");
  else
    printf("01 FUNC5-2 NG\n");

  a = ((bit.b*ar[2])||(uni.a*bit.a));
  if (a == 1)
    printf("01 FUNC5-2 OK\n");
  else
    printf("01 FUNC5-2 NG\n");
}
int 
f1 (void)
{
  return 1;
}

int 
func6 (void){
  static int    a, i = 0;
  static short int s = 2;
  static char      c = 3;
  static unsigned int       ui = 4;
  static unsigned short int us = 5;
  static unsigned char      uc = 6;
  static unsigned int    ar[4] = {0,0,1,1};
  static float              fl = 1.0f, *flp = &fl;
  static double             db = 2.0 , *dbp = &db;
  static long double        ld = 0.0l, *ldp = &ld;
  static struct tag{ unsigned int a:3;
                      unsigned int b:5;
                   }bit = {2,0};

  a = ((s<0)||(uc>ui));
  if (a == 1)
    printf("01 FUNC6-1 OK\n");
  else
    printf("01 FUNC6-1 NG\n");

  a = ((ar[2]>=s)||(bit.a<=uc));
  if (a == 1)
    printf("01 FUNC6-2 OK\n");
  else
    printf("01 FUNC6-2 NG\n");

  a = ((bit.b!=bit.b)||(bit.a==bit.a));
  if (a == 1)
    printf("01 FUNC6-3 OK\n");
  else
    printf("01 FUNC6-3 NG\n");

  a = (((*dbp)<(*flp))||(ld>=(*ldp)));
  if (a == 1)
    printf("01 FUNC6-4 OK\n");
  else
    printf("01 FUNC6-4 NG\n");

}

int 
func7 (void){
  static int     a,i = 0;
  static short int s = 2;
  static char      c = 3;
  static unsigned int       ui = 4;
  static unsigned short int us = 5;
  static unsigned char      uc = 6;
  static unsigned int    ar[4] = {0,0,1,1};
  static float              fl = 1.0f, *flp = &fl;
  static double             db = 2.0 , *dbp = &db;
  static long double        ld = 0.0l, *ldp = &ld;
  static struct tag{ unsigned int a:3;
                      unsigned int b:5;
                   }bit = {2,0};

  a = ((i||0)||((*flp)<uc));
  if (a == 1)
    printf("01 FUNC7-1 OK\n");
  else
    printf("01 FUNC7-1 NG\n");

  a = (((c-c)||ld)||(bit.a>=s));
  if (a == 1)
    printf("01 FUNC7-2 OK\n");
  else
    printf("01 FUNC7-2 NG\n");

  a = ((ui*i||ar[0])||(bit.a!=bit.b));
  if (a == 1)
    printf("01 FUNC7-3 OK\n");
  else
    printf("01 FUNC7-3 NG\n");

  a = ((ui*i||ar[0])||(s*s+s));
  if (a == 1)
    printf("01 FUNC7-4 OK\n");
  else
    printf("01 FUNC7-4 NG\n");
}

int 
func8 (void){
  static int    a, i = 0;
  static short int s = 2;
  static char      c = 3;
  static unsigned int       ui = 4;
  static unsigned short int us = 5;
  static unsigned char      uc = 6;
  static unsigned int    ar[4] = {0,0,1,1};
  static float              fl = 1.0f, *flp = &fl;
  static double             db = 2.0 , *dbp = &db;
  static long double        ld = 0.0l, *ldp = &ld;
  static struct tag{ unsigned int a:3;
                      unsigned int b:5;
                   }bit = {2,0};

  a = ((uc>ui)||(ui||(*dbp)));
  if (a == 1)
    printf("01 FUNC8-1 OK\n");
  else
    printf("01 FUNC8-1 NG\n");

  a = ((c>=uc)||(bit.a||s));
  if (a == 1)
    printf("01 FUNC8-2 OK\n");
  else
    printf("01 FUNC8-2 NG\n");

  a = ((ui*i!=ar[0])||(bit.a||bit.b));
  if (a == 1)
    printf("01 FUNC8-3 OK\n");
  else
    printf("01 FUNC8-3 NG\n");

  a = (((int)(ui*i*ar[0]))||((*flp)||bit.b));
  if (a == 1)
    printf("01 FUNC8-4 OK\n");
  else
    printf("01 FUNC8-4 NG\n");
}

int 
func9 (void){
  static int    a, i = 0;
  static short int s = 2;
  static char      c = 3;
  static unsigned int       ui = 4;
  static unsigned short int us = 5;
  static unsigned char      uc = 6;
  static unsigned int    ar[4] = {0,0,1,1};
  static float              fl = 1.0f, *flp = &fl;
  static double             db = 2.0 , *dbp = &db;
  static long double        ld = 0.0l, *ldp = &ld;
  static struct tag{ unsigned int a:3;
                      unsigned int b:5;
                   }bit = {2,0};

  a = ((i&&0)||(db<uc));
  if (a == 1)
    printf("01 FUNC9-1 OK\n");
  else
    printf("01 FUNC9-1 NG\n");

  a = (((c-c)&&ld)||(bit.a>=s));
  if (a == 1)
    printf("01 FUNC9-2 OK\n");
  else
    printf("01 FUNC9-2 NG\n");

  a = ((ui*i&&ar[0])||(bit.a!=bit.b));
  if (a == 1)
    printf("01 FUNC9-3 OK\n");
  else
    printf("01 FUNC9-3 NG\n");

  a = ((ui*i&&ar[0])||(s*s+s));
  if (a == 1)
    printf("01 FUNC9-4 OK\n");
  else
    printf("01 FUNC9-4 NG\n");
}

int 
func10 (void){
  static int    a, i = 0;
  static short int s = 2;
  static char      c = 3;
  static unsigned int       ui = 4;
  static unsigned short int us = 5;
  static unsigned char      uc = 6;
  static unsigned int    ar[4] = {0,0,1,1};
  static float              fl = 1.0f, *flp = &fl;
  static double             db = 2.0 , *dbp = &db;
  static long double        ld = 0.0l, *ldp = &ld;
  static struct tag{ unsigned int a:3;
                      unsigned int b:5;
                   }bit = {2,0};

  a = ((uc>ui)||((*flp)&&db));
  if (a == 1)
    printf("01 FUNC10-1 OK\n");
  else
    printf("01 FUNC10-1 NG\n");

  a = ((c>=uc)||(bit.a&&s));
  if (a == 1)
    printf("01 FUNC10-2 OK\n");
  else
    printf("01 FUNC10-2 NG\n");

  a = ((ui*i!=ar[0])||(bit.a&&(bit.b+1)));
  if (a == 1)
    printf("01 FUNC10-3 OK\n");
  else
    printf("01 FUNC10-3 NG\n");

  a = (((int)(ui*i*ar[0]))||(bit.a&&(*flp)));
  if (a == 1)
    printf("01 FUNC10-4 OK\n");
  else
    printf("01 FUNC10-4 NG\n");
}

int 
func11 (void){
  static int    a, i = 0;
  static short int s = 2;
  static char      c = 3;
  static unsigned int       ui = 4;
  static unsigned short int us = 5;
  static unsigned char      uc = 6;
  static unsigned int    ar[4] = {0,0,1,1};
  static float              fl = 1.0f, *flp = &fl;
  static double             db = 2.0 , *dbp = &db;
  static long double        ld = 0.0l, *ldp = &ld;
  static struct tag{ unsigned int a:3;
                      unsigned int b:5;
                   }bit = {2,0};

  a = (((i||(*ldp))||(ld||i))||((s&&fl)&&(ui&&db)));
  if (a == 1)
    printf("01 FUNC11-1 OK\n");
  else
    printf("01 FUNC11-1 NG\n");

  a = (((bit.a&&bit.b)||(uc&&i))||((i||ar[2])&&(i||bit.a)));
  if (a == 1)
    printf("01 FUNC11-2 OK\n");
  else
    printf("01 FUNC11-2 NG\n");

  a = (((bit.a||bit.b)||(uc&&i))||(((*dbp)||ar[2])&&(i&&bit.a)));
  if (a == 1)
    printf("01 FUNC11-3 OK\n");
  else
    printf("01 FUNC11-3 NG\n");

  a = ((i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||(*ldp)&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||ld&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&i)||
      (i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||(*ldp)&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||ld&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||s&&fl));
  if (a == 1)
    printf("01 FUNC11-4 OK\n");
  else
    printf("01 FUNC11-4 NG\n");
}
