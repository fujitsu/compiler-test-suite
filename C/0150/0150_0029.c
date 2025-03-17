#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int f1();
int f();
int func11();
int func10();
int func9();
int func8();
int func7();
int func6();
int func5();
int func4();
int func3();
int func2();
int func1();
int main()
{
  printf(" START\n");
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
  printf(" END  \n");
exit (0);
}
int func1(){
  static int i=0;
  static short int s=1;
  static char  c=2;
  static unsigned int ui=3;
  static unsigned short int us=4;
  static unsigned char   uc=5;
 
  if ((i||i)||(i||c))
    printf(" FUNC1-1 OK\n");
  else
    printf(" FUNC1-1 NG\n");
  if (((s-s)||(s-s))||((ui*ui-9)||(uc/uc)))
    printf(" FUNC1-2 OK\n");
  else
    printf(" FUNC1-2 NG\n");
  return 0;
}
int func2(){
  static int i=0;
  static short int s=2;
  static char  c=3;
  static unsigned int ui[2]={4,0};
  static unsigned short int us[3]={0,5,0};
  static unsigned char   uc[4]={0,0,0,6};
  static int *ip=&i;
  static short int *sp=&s;
  static char  *cp=&c;
 
  if ((i&&i)||(s&&c))
    printf(" FUNC2-1 OK\n");
  else
    printf(" FUNC2-1 NG\n");
  if (((i+i)&&(i*s))||(us[1]&&uc[3]))
    printf(" FUNC2-2 OK\n");
  else
    printf(" FUNC2-2 NG\n");
  return 0;
}
int func3(){
  static int i=0,*ip=&i;
  static short int s=2;
  static char  c=3;
  static unsigned int ui[2]={4,0};
  static unsigned short int us[3]={0,5,0};
  static unsigned char   uc[4]={0,0,0,6};
  static struct tag{ int a;} st={1},*stp=&st;
 
  if ((i||i)||(c&&c))
    printf(" FUNC3-1 OK\n");
  else
    printf(" FUNC3-1 NG\n");
  if (((*ip)||(ui[1]))||((s+s)&&((*stp).a)))
    printf(" FUNC3-2 OK\n");
  else
    printf(" FUNC3-2 NG\n");
  if (((f())||(c+3))||(((*stp).a)&&(f()+1)))
    printf(" FUNC3-3 OK\n");
  else
    printf(" FUNC3-3 NG\n");
  return 0;
}
int f()
{
   return 0;
}
int func4(){
  static int i=0;
  static short int s=2;
  static char  c=3;
  static unsigned int ui=4;
  static unsigned short int us=5;
  static unsigned char   uc=6;
  static unsigned int    ar[4]={0,0,1,1};
  static struct tag{ unsigned int a:3;
                      unsigned int b:5;
                   }bit={2,0};
  static union utag{ int a;
                      int b;
                   }uni;
  uni.a=1;
 
  if (!(s)||!(i))
    printf(" FUNC4-1 OK\n");
  else
    printf(" FUNC4-1 NG\n");
  if (!(uni.a)||!(ar[1]))
    printf(" FUNC4-2 OK\n");
  else
    printf(" FUNC4-2 NG\n");
  return 0;
}
int func5(){
  static int i=0;
  static short int s=2;
  static char  c=3;
  static unsigned int ui=4;
  static unsigned short int us=5;
  static unsigned char   uc=6;
  static unsigned int    ar[4]={0,0,1,1};
  static struct tag{ unsigned int a:3;
                      unsigned int b:5;
                   }bit={2,0};
  static union utag{ int a;
                      int b;
                   }uni;
  uni.a=1;
 
  if ((ar[i])||(bit.a))
    printf(" FUNC5-1 OK\n");
  else
    printf(" FUNC5-1 NG\n");
  if (f()||f1())
    printf(" FUNC5-2 OK\n");
  else
    printf(" FUNC5-2 NG\n");
  if ((bit.b*ar[2])||(uni.a*bit.a))
    printf(" FUNC5-3 OK\n");
  else
    printf(" FUNC5-3 NG\n");
  return 0;
}
int f1()
{
  return 1;
}
int func6(){
  static int i=0;
  static short int s=2;
  static char  c=3;
  static unsigned int ui=4;
  static unsigned short int us=5;
  static unsigned char   uc=6;
  static unsigned int    ar[4]={0,0,1,1};
  static struct tag{ unsigned int a:3;
                      unsigned int b:5;
                   }bit={2,0};
 
  if ((s<0)||(uc>ui))
    printf(" FUNC6-1 OK\n");
  else
    printf(" FUNC6-1 NG\n");
  if ((ar[2]>=s)||(bit.a<=uc))
    printf(" FUNC6-2 OK\n");
  else
    printf(" FUNC6-2 NG\n");
  if ((bit.b!=bit.b)||(bit.a==bit.a))
    printf(" FUNC6-3 OK\n");
  else
    printf(" FUNC6-3 NG\n");
  return 0;
}
int func7(){
  static int i=0;
  static short int s=2;
  static char  c=3;
  static unsigned int ui=4;
  static unsigned short int us=5;
  static unsigned char   uc=6;
  static unsigned int    ar[4]={0,0,1,1};
  static struct tag{ unsigned int a:3;
                      unsigned int b:5;
                   }bit={2,0};
 
  if ((i||0)||(ui<uc))
    printf(" FUNC7-1 OK\n");
  else
    printf(" FUNC7-1 NG\n");
  if (((c-c)||i)||(bit.a>=s))
    printf(" FUNC7-2 OK\n");
  else
    printf(" FUNC7-2 NG\n");
  if ((ui*i||ar[0])||(bit.a!=bit.b))
    printf(" FUNC7-3 OK\n");
  else
    printf(" FUNC7-3 NG\n");
  if ((ui*i||ar[0])||(s*s+s))
    printf(" FUNC7-4 OK\n");
  else
    printf(" FUNC7-4 NG\n");
  return 0;
}
int func8(){
  static int i=0;
  static short int s=2;
  static char  c=3;
  static unsigned int ui=4;
  static unsigned short int us=5;
  static unsigned char   uc=6;
  static unsigned int    ar[4]={0,0,1,1};
  static struct tag{ unsigned int a:3;
                      unsigned int b:5;
                   }bit={2,0};
 
  if ((uc>ui)||(ui||ui))
    printf(" FUNC8-1 OK\n");
  else
    printf(" FUNC8-1 NG\n");
  if ((c>=uc)||(bit.a||s))
    printf(" FUNC8-2 OK\n");
  else
    printf(" FUNC8-2 NG\n");
  if ((ui*i!=ar[0])||(bit.a||bit.b))
    printf(" FUNC8-3 OK\n");
  else
    printf(" FUNC8-3 NG\n");
  if (((int)(ui*i*ar[0]))||(bit.a||bit.b))
    printf(" FUNC8-4 OK\n");
  else
    printf(" FUNC8-4 NG\n");
  return 0;
}
int func9(){
  static int i=0;
  static short int s=2;
  static char  c=3;
  static unsigned int ui=4;
  static unsigned short int us=5;
  static unsigned char   uc=6;
  static unsigned int    ar[4]={0,0,1,1};
  static struct tag{ unsigned int a:3;
                      unsigned int b:5;
                   }bit={2,0};
 
  if ((i&&0)||(ui<uc))
    printf(" FUNC9-1 OK\n");
  else
    printf(" FUNC9-1 NG\n");
  if (((c-c)&&i)||(bit.a>=s))
    printf(" FUNC9-2 OK\n");
  else
    printf(" FUNC9-2 NG\n");
  if ((ui*i&&ar[0])||(bit.a!=bit.b))
    printf(" FUNC9-3 OK\n");
  else
    printf(" FUNC9-3 NG\n");
  if ((ui*i&&ar[0])||(s*s+s))
    printf(" FUNC9-4 OK\n");
  else
    printf(" FUNC9-4 NG\n");
  return 0;
}
int func10(){
  static int i=0;
  static short int s=2;
  static char  c=3;
  static unsigned int ui=4;
  static unsigned short int us=5;
  static unsigned char   uc=6;
  static unsigned int    ar[4]={0,0,1,1};
  static struct tag{ unsigned int a:3;
                      unsigned int b:5;
                   }bit={2,0};
 
  if ((uc>ui)||(ui&&ui))
    printf(" FUNC10-1 OK\n");
  else
    printf(" FUNC10-1 NG\n");
  if ((c>=uc)||(bit.a&&s))
    printf(" FUNC10-2 OK\n");
  else
    printf(" FUNC10-2 NG\n");
  if ((ui*i!=ar[0])||(bit.a&&(bit.b+1)))
    printf(" FUNC10-3 OK\n");
  else
    printf(" FUNC10-3 NG\n");
  if (((int)(ui*i*ar[0]))||(bit.a&&bit.a))
    printf(" FUNC10-4 OK\n");
  else
    printf(" FUNC10-4 NG\n");
  return 0;
}
 int func11(){
  static int i=0;
  static short int s=2;
  static char  c=3;
  static unsigned int ui=4;
  static unsigned short int us=5;
  static unsigned char   uc=6;
  static unsigned int    ar[4]={0,0,1,1};
  static struct tag{ unsigned int a:3;
                      unsigned int b:5;
                   }bit={2,0};
 
  if (((i||i)||(i||i))||((s&&s)&&(ui&&ui)))
    printf(" FUNC11-1 OK\n");
  else
    printf(" FUNC11-1 NG\n");
  if (((bit.a&&bit.b)||(uc&&i))||((i||ar[2])&&(i||bit.a)))
    printf(" FUNC11-2 OK\n");
  else
    printf(" FUNC11-2 NG\n");
  if (((bit.a||bit.b)||(uc&&i))||((i||ar[2])&&(i&&bit.a)))
    printf(" FUNC11-3 OK\n");
  else
    printf(" FUNC11-3 NG\n");
  if ((i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&i)||
      (i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||s&&c))
    printf(" FUNC11-4 OK\n");
  else
    printf(" FUNC11-4 NG\n");
  return 0;
}
