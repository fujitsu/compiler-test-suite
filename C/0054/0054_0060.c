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
  printf("02 START\n");
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
  printf("02 END  \n");
}

int 
func1 (void){
  static int i=0;
  static short int s=1;
  static char  c=2;
  static unsigned int ui=3;
  static unsigned short int us=4;
  static unsigned char   uc=5;

  if ((i||i)||(i||c))
    printf("02 FUNC1-1 OK\n");
  else
    printf("02 FUNC1-1 NG\n");
  if (((s-s)||(s-s))||((ui*ui-9)||(uc/uc)))
    printf("02 FUNC1-2 OK\n");
  else
    printf("02 FUNC1-2 NG\n");
}

int 
func2 (void){
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
    printf("02 FUNC2-1 OK\n");
  else
    printf("02 FUNC2-1 NG\n");
  if (((i+i)&&(i*s))||(us[1]&&uc[3]))
    printf("02 FUNC2-2 OK\n");
  else
    printf("02 FUNC2-2 NG\n");
}

int 
func3 (void){
  static int i=0,*ip=&i;
  static short int s=2;
  static char  c=3;
  static unsigned int ui[2]={4,0};
  static unsigned short int us[3]={0,5,0};
  static unsigned char   uc[4]={0,0,0,6};
  static struct tag{ int a;} st={1},*stp=&st;

  if ((i||i)||(c&&c))
    printf("02 FUNC3-1 OK\n");
  else
    printf("02 FUNC3-1 NG\n");
  if (((*ip)||(ui[1]))||((s+s)&&((*stp).a)))
    printf("02 FUNC3-2 OK\n");
  else
    printf("02 FUNC3-2 NG\n");
  if (((f())||(c+3))||(((*stp).a)&&(f()+1)))
    printf("02 FUNC3-3 OK\n");
  else
    printf("02 FUNC3-3 NG\n");
}
int 
f (void)
{
   return 0;
}

int 
func4 (void){
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
    printf("02 FUNC4-1 OK\n");
  else
    printf("02 FUNC4-1 NG\n");
  if (!(uni.a)||!(ar[1]))
    printf("02 FUNC4-2 OK\n");
  else
    printf("02 FUNC4-2 NG\n");
}

int 
func5 (void){
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
    printf("02 FUNC5-1 OK\n");
  else
    printf("02 FUNC5-1 NG\n");
  if (f()||f1())
    printf("02 FUNC5-2 OK\n");
  else
    printf("02 FUNC5-2 NG\n");
  if ((bit.b*ar[2])||(uni.a*bit.a))
    printf("02 FUNC5-3 OK\n");
  else
    printf("02 FUNC5-3 NG\n");
}
int 
f1 (void)
{
  return 1;
}

int 
func6 (void){
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
    printf("02 FUNC6-1 OK\n");
  else
    printf("02 FUNC6-1 NG\n");
  if ((ar[2]>=s)||(bit.a<=uc))
    printf("02 FUNC6-2 OK\n");
  else
    printf("02 FUNC6-2 NG\n");
  if ((bit.b!=bit.b)||(bit.a==bit.a))
    printf("02 FUNC6-3 OK\n");
  else
    printf("02 FUNC6-3 NG\n");
}

int 
func7 (void){
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
    printf("02 FUNC7-1 OK\n");
  else
    printf("02 FUNC7-1 NG\n");
  if (((c-c)||i)||(bit.a>=s))
    printf("02 FUNC7-2 OK\n");
  else
    printf("02 FUNC7-2 NG\n");
  if ((ui*i||ar[0])||(bit.a!=bit.b))
    printf("02 FUNC7-3 OK\n");
  else
    printf("02 FUNC7-3 NG\n");
  if ((ui*i||ar[0])||(s*s+s))
    printf("02 FUNC7-4 OK\n");
  else
    printf("02 FUNC7-4 NG\n");
}

int 
func8 (void){
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
    printf("02 FUNC8-1 OK\n");
  else
    printf("02 FUNC8-1 NG\n");
  if ((c>=uc)||(bit.a||s))
    printf("02 FUNC8-2 OK\n");
  else
    printf("02 FUNC8-2 NG\n");
  if ((ui*i!=ar[0])||(bit.a||bit.b))
    printf("02 FUNC8-3 OK\n");
  else
    printf("02 FUNC8-3 NG\n");
  if (((int)(ui*i*ar[0]))||(bit.a||bit.b))
    printf("02 FUNC8-4 OK\n");
  else
    printf("02 FUNC8-4 NG\n");
}

int 
func9 (void){
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
    printf("02 FUNC9-1 OK\n");
  else
    printf("02 FUNC9-1 NG\n");
  if (((c-c)&&i)||(bit.a>=s))
    printf("02 FUNC9-2 OK\n");
  else
    printf("02 FUNC9-2 NG\n");
  if ((ui*i&&ar[0])||(bit.a!=bit.b))
    printf("02 FUNC9-3 OK\n");
  else
    printf("02 FUNC9-3 NG\n");
  if ((ui*i&&ar[0])||(s*s+s))
    printf("02 FUNC9-4 OK\n");
  else
    printf("02 FUNC9-4 NG\n");
}

int 
func10 (void){
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
    printf("02 FUNC10-1 OK\n");
  else
    printf("02 FUNC10-1 NG\n");
  if ((c>=uc)||(bit.a&&s))
    printf("02 FUNC10-2 OK\n");
  else
    printf("02 FUNC10-2 NG\n");
  if ((ui*i!=ar[0])||(bit.a&&(bit.b+1)))
    printf("02 FUNC10-3 OK\n");
  else
    printf("02 FUNC10-3 NG\n");
  if (((int)(ui*i*ar[0]))||(bit.a&&bit.a))
    printf("02 FUNC10-4 OK\n");
  else
    printf("02 FUNC10-4 NG\n");
}

int 
func11 (void){
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
    printf("02 FUNC11-1 OK\n");
  else
    printf("02 FUNC11-1 NG\n");
  if (((bit.a&&bit.b)||(uc&&i))||((i||ar[2])&&(i||bit.a)))
    printf("02 FUNC11-2 OK\n");
  else
    printf("02 FUNC11-2 NG\n");
  if (((bit.a||bit.b)||(uc&&i))||((i||ar[2])&&(i&&bit.a)))
    printf("02 FUNC11-3 OK\n");
  else
    printf("02 FUNC11-3 NG\n");
  if ((i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&i)||
      (i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||i&&
      i&&i||i||i&&i||i&&i||i&&i||i&&i||i||i&&i||s&&c))
    printf("02 FUNC11-4 OK\n");
  else
    printf("02 FUNC11-4 NG\n");
}
