
#include<stdio.h>
int npsub (void);
int m3ermv02 (void);
int scood02 (void);
int m3edc321 (void);
int m3mptr03 (void);
int m3edc318 (void);
int m3edc309 (void);
int scoprl1 (void);
int m3mpsi07 (void);
int m3edc306 (void);
int m3edc303 (void);
int m3edc177 (void);
int m3esad52 (void);
int m3esad60 (void);
int main()
{

   printf("***  **** START ***\n");

   m3edc177();  
   m3edc303();  
   m3esad52();  
   m3edc306();  
   m3mpsi07();  
   scoprl1();   
   m3edc309();  
   m3edc318();  
   m3mptr03();  
   m3edc321();  
   scood02();   
   m3ermv02();  
   m3esad60();  

   printf("***  **** END ***\n");

}



 typedef int inttype;

 extern volatile const inttype  fe1a5;
 volatile const inttype  fe1a6;
 typedef volatile const inttype  fe1intp2;

int 
m3edc177 (void)
{
   volatile const int  *addr,*addr2;

   auto volatile const inttype  a1;
   auto volatile const inttype  a2,b2;
   register volatile const inttype  a3=0;
   static volatile const inttype  a4[2]={-1,0x7fffffff};

   extern volatile const inttype  fe1a5;
   extern volatile const inttype  fe1a6;
   fe1intp2  a7;

   printf("*** M3EDC177 ** MK3 TEST FOR DCL ** STARTED ***\n");

   addr = &a1;
   if (a1!=*addr)
       printf(" *** M3EDC177 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC177 TEST-01 OK ***\n");

   addr = &a2;  addr2 = &b2;
   if (a2!=*addr || b2!=*addr2)
       printf(" *** M3EDC177 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC177 TEST-02 OK ***\n");

   if (a3!=0)
       printf(" *** M3EDC177 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC177 TEST-03 OK ***\n");

   if (a4[0]!=-1 || a4[1]!=2147483647)
       printf(" *** M3EDC177 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC177 TEST-04 OK ***\n");

   if (fe1a5)
       printf(" *** M3EDC177 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC177 TEST-05 OK ***\n");

   if (fe1a6)
       printf(" *** M3EDC177 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC177 TEST-06 OK ***\n");

   addr = &a7;
   if (a7!=*addr)
       printf(" *** M3EDC177 TEST-07 ERROR ***\n");
   else
       printf(" *** M3EDC177 TEST-07 OK ***\n");

   printf("*** M3EDC177 TEST ENDED ***\n");
}
volatile const inttype fe1a5=0;



void fe2f3(register volatile unsigned long int,int);
void fe2f2(register volatile unsigned int,int);
void fe2f1(register volatile int,int);
void fe2f0(register volatile int ,int);

int 
m3edc303 (void)
{
  fe2f3(1ul,2);
  fe2f2(1u,2);
  fe2f1(1,2);
  fe2f0(1,2);
}

void fe2f3(register volatile unsigned long int a,int b)
{
  if (a == 1ul)
      printf("***** M3EDC303 - 01 ***** O K *****\n");
    else
      printf("***** M3EDC303 - 01 ***** N G *****\n");

  if (b == 2)
      printf("***** M2EDC303 - 02 ***** O K *****\n");
    else
      printf("***** M2EDC303 - 02 ***** N G *****\n");
}

void fe2f2(register volatile unsigned int a,int b)
{
  if (a == 1u)
      printf("***** M3EDC303 - 03 ***** O K *****\n");
    else
      printf("***** M3EDC303 - 03 ***** N G *****\n");

  if (b == 2)
      printf("***** M2EDC303 - 04 ***** O K *****\n");
    else
      printf("***** M2EDC303 - 04 ***** N G *****\n");
}

void fe2f1(register volatile int a,int b)
{
  if (a == 1)
      printf("***** M3EDC303 - 05 ***** O K *****\n");
    else
      printf("***** M3EDC303 - 05 ***** N G *****\n");

  if (b == 2)
      printf("***** M2EDC303 - 06 ***** O K *****\n");
    else
      printf("***** M2EDC303 - 06 ***** N G *****\n");
}

void fe2f0(register volatile  int a,int b)
{
  if (a == 1)
      printf("***** M3EDC303 - 07 ***** O K *****\n");
    else
      printf("***** M3EDC303 - 07 ***** N G *****\n");

  if (b == 2)
      printf("***** M2EDC303 - 08 ***** O K *****\n");
    else
      printf("***** M2EDC303 - 08 ***** N G *****\n");
}



void fe3f3(volatile unsigned long int,int);
void fe3f2(volatile unsigned int,int);
void fe3f1(volatile int,int);
void fe3f0(volatile int ,int);

int 
m3edc306 (void)
{
  fe3f3(1ul,2);
  fe3f2(1u,2);
  fe3f1(1,2);
  fe3f0(1,2);
}

void fe3f3(volatile unsigned long int a,int b)
{
  if (a == 1ul)
      printf("***** M3EDC306 - 01 ***** O K *****\n");
    else
      printf("***** M3EDC306 - 01 ***** N G *****\n");

  if (b == 2)
      printf("***** M2EDC306 - 02 ***** O K *****\n");
    else
      printf("***** M2EDC306 - 02 ***** N G *****\n");
}

void fe3f2(volatile unsigned int a,int b)
{
  if (a == 1u)
      printf("***** M3EDC306 - 03 ***** O K *****\n");
    else
      printf("***** M3EDC306 - 03 ***** N G *****\n");

  if (b == 2)
      printf("***** M2EDC306 - 04 ***** O K *****\n");
    else
      printf("***** M2EDC306 - 04 ***** N G *****\n");
}

void fe3f1(volatile int a,int b)
{
  if (a == 1)
      printf("***** M3EDC306 - 05 ***** O K *****\n");
    else
      printf("***** M3EDC306 - 05 ***** N G *****\n");

  if (b == 2)
      printf("***** M2EDC306 - 06 ***** O K *****\n");
    else
      printf("***** M2EDC306 - 06 ***** N G *****\n");
}

void fe3f0(volatile  int a,int b)
{
  if (a == 1)
      printf("***** M3EDC306 - 07 ***** O K *****\n");
    else
      printf("***** M3EDC306 - 07 ***** N G *****\n");

  if (b == 2)
      printf("***** M2EDC306 - 08 ***** O K *****\n");
    else
      printf("***** M2EDC306 - 08 ***** N G *****\n");
}



typedef int a;

void fe4f1(register volatile const a,
        register const volatile a);
void fe4f2(register volatile a);
void fe4f3(register a);
void fe4f4(volatile const a);
void fe4f5(volatile a);
void fe4f6(a);

int 
m3edc309 (void)
{
  fe4f1(1,2);
  fe4f2(1);
  fe4f3(1);
  fe4f4(1);
  fe4f5(1);
  fe4f6(1);
}

void fe4f1(register volatile const a b,
        register const volatile a c)
{
  if (b == 1)
      printf("***** M3EDC309 - 01 ***** O K *****\n");
    else
      printf("***** M3EDC309 - 01 ***** N G *****\n");

  if (c == 2)
      printf("***** M3EDC309 - 02 ***** O K *****\n");
    else
      printf("***** M3EDC309 - 02 ***** N G *****\n");
}

void fe4f2(register volatile a b)
{
  if (b == 1)
      printf("***** M3EDC309 - 03 ***** O K *****\n");
    else
      printf("***** M3EDC309 - 03 ***** N G *****\n");
}

void fe4f3(register a b)
{
  if (b == 1)
      printf("***** M3EDC309 - 04 ***** O K *****\n");
    else
      printf("***** M3EDC309 - 04 ***** N G *****\n");
}

void fe4f4(volatile const a b)
{
  if (b == 1)
      printf("***** M3EDC309 - 05 ***** O K *****\n");
    else
      printf("***** M3EDC309 - 05 ***** N G *****\n");
}

void fe4f5(volatile a b)
{
  if (b == 1)
      printf("***** M3EDC309 - 06 ***** O K *****\n");
    else
      printf("***** M3EDC309 - 06 ***** N G *****\n");
}

void fe4f6(a b)
{
  if (b == 1)
      printf("***** M3EDC309 - 07 ***** O K *****\n");
    else
      printf("***** M3EDC309 - 07 ***** N G *****\n");
}




typedef int aa;

void fe6f1(register volatile const aa);
void fe6f2(register volatile aa);
void fe6f3(register aa);
void fe6f4(volatile const aa);
void fe6f5(volatile aa);
void fe6f6(aa);

int 
m3edc318 (void)
{
  fe6f1(1);
  fe6f2(1);
  fe6f3(1);
  fe6f4(1);
  fe6f5(1);
  fe6f6(1);
}

void 
fe6f1 (register volatile const aa b)
{
  if (b == 1)
      printf("***** M3EDC318 - 01 ***** O K *****\n");
    else
      printf("***** M3EDC318 - 01 ***** N G *****\n");
}

void 
fe6f2 (register volatile aa b)
{
  if (b == 1)
      printf("***** M3EDC318 - 02 ***** O K *****\n");
    else
      printf("***** M3EDC318 - 02 ***** N G *****\n");
}

void 
fe6f3 (register aa b)
{
  if (b == 1)
      printf("***** M3EDC318 - 03 ***** O K *****\n");
    else
      printf("***** M3EDC318 - 03 ***** N G *****\n");
}

void 
fe6f4 (volatile const aa b)
{
  if (b == 1)
      printf("***** M3EDC318 - 04 ***** O K *****\n");
    else
      printf("***** M3EDC318 - 04 ***** N G *****\n");
}

void 
fe6f5 (volatile aa b)
{
  if (b == 1)
      printf("***** M3EDC318 - 05 ***** O K *****\n");
    else
      printf("***** M3EDC318 - 05 ***** N G *****\n");
}

void 
fe6f6 (aa b)
{
  if (b == 1)
      printf("***** M3EDC318 - 06 ***** O K *****\n");
    else
      printf("***** M3EDC318 - 06 ***** N G *****\n");
}


enum { aaa, bbb, ccc } ss1;
enum { ddd, eee, fff = 10 } ss2;

int 
m3edc321 (void)
{
  ss1 = bbb;
  ss2 = fff;

  if (ss1 == 1)
      printf("***** M3EDC321 - 01 ***** O K *****\n");
    else
      printf("***** M3EDC321 - 01 ***** N G *****\n");

  if (ss2 == 10)
      printf("***** M3EDC321 - 02 ***** O K *****\n");
    else
      printf("***** M3EDC321 - 02 ***** N G *****\n");
}


int 
m3ermv02 (void)
{
  printf("********** M3ERMV02 TEST START **********\n");
  {
    int a,b = 1,c = 2;

    a = b + 1 + ( c + 2 );
    if (a == 6)
        printf("***** M3ERMV02 - 01 ***** O K *****\n");
      else
        printf("***** M3ERMV02 - 01 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;

    a = b + 1 + ( c - 2 );
    if (a == 2)
        printf("***** M3ERMV02 - 02 ***** O K *****\n");
      else
        printf("***** M3ERMV02 - 02 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;

    a = b + 1 - ( c + 2 );
    if (a == -2)
        printf("***** M3ERMV02 - 03 ***** O K *****\n");
      else
        printf("***** M3ERMV02 - 03 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;

    a = b + 1 - ( c - 2 );
    if (a == 2)
        printf("***** M3ERMV02 - 04 ***** O K *****\n");
      else
        printf("***** M3ERMV02 - 04 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;

    a = b - 1 + ( c + 2 );
    if (a == 4)
        printf("***** M3ERMV02 - 05 ***** O K *****\n");
      else
        printf("***** M3ERMV02 - 05 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;

    a = b - 1 + ( c - 2 );
    if (a == 0)
        printf("***** M3ERMV02 - 06 ***** O K *****\n");
      else
        printf("***** M3ERMV02 - 06 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;

    a = b - 1 - ( c + 2 );
    if (a == -4)
        printf("***** M3ERMV02 - 07 ***** O K *****\n");
      else
        printf("***** M3ERMV02 - 07 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;

    a = b - 1 - ( c - 2 );
    if (a == 0)
        printf("***** M3ERMV02 - 08 ***** O K *****\n");
      else
        printf("***** M3ERMV02 - 08 ***** N G *****\n");
  }
  printf("********** M3ERMV02 TEST  END  **********\n");
}



int 
m3esad52 (void)
  {
printf("*** M3ESAD52 ** MK3 TEST FOR X_SADCHK **** STARTED \n");
{
  int *arr[2];
  int i=2;
  i=arr<arr;
  if(i==0)
    printf("*** M3ESAD52-01 *****     O    K     *****\n");
  else
    printf("*** M3ESAD52-01 *** N G ********** N G ***\n");
}
{
  int i=2;
  struct tag {
               int a;
               int b;
             }st;
  struct tag *arr[2];
  i=arr<arr;
  if(i==0)
    printf("*** M3ESAD52-02 *****     O    K     *****\n");
  else
    printf("*** M3ESAD52-02 *** N G ********** N G ***\n");
}
{
  int i=2;
  int arr[2][2];
  i=arr<arr;
  if(i==0)
    printf("*** M3ESAD52-03 *****     O    K     *****\n");
  else
    printf("*** M3ESAD52-03 *** N G ********** N G ***\n");
}
{
  int i=2;
  struct tag {int a;
               int b;
             }st;
  struct tag *arr[2];
  i=arr<arr;
  if(i==0)
    printf("*** M3ESAD52-04 *****     O    K     *****\n");
  else
    printf("*** M3ESAD52-04 *** N G ********** N G ***\n");
}
{
  int i=2;
  static int volatile  arr[2];
  i=arr<arr;
  if(i==0)
    printf("*** M3ESAD52-05 *****     O    K     *****\n");
  else
    printf("*** M3ESAD52-05 *** N G ********** N G ***\n");
}
{
  int i=2;
  struct tag {int a;int b;}st;
  struct tag  volatile    arr[2];
  i=arr<arr;
  if(i==0)
    printf("*** M3ESAD52-06 *****     O    K     *****\n");
  else
    printf("*** M3ESAD52-06 *** N G ********** N G ***\n");
}
{
  int i=2;
  int  const  arr[2];
  i=arr<arr;
  if(i==0)
    printf("*** M3ESAD52-07 *****     O    K     *****\n");
  else
    printf("*** M3ESAD52-07 *** N G ********** N G ***\n");
}
{
  int i=2;
  struct tag {int a;int b;}st;
  struct tag   const  arr[2];
  i=arr<arr;
  if(i==0)
    printf("*** M3ESAD52-08 *****     O    K     *****\n");
  else
    printf("*** M3ESAD52-08 *** N G ********** N G ***\n");
}
{
  int i=2;
  int   volatile const  arr[2];
  i=arr<arr;
  if(i==0)
    printf("*** M3ESAD52-09 *****     O    K     *****\n");
  else
    printf("*** M3ESAD52-09 *** N G ********** N G ***\n");
}
{
  int i=2;
  struct tag {int a;int b;}st;
  struct tag   volatile const  arr[2];
  i=arr<arr;
  if(i==0)
    printf("*** M3ESAD52-10 *****     O    K     *****\n");
  else
    printf("*** M3ESAD52-10 *** N G ********** N G ***\n");
}
{
  int i=2;
  static int arr[2]={1,2};
  i=arr<arr;
  if(i==0)
    printf("*** M3ESAD52-11 *****     O    K     *****\n");
  else
    printf("*** M3ESAD52-11 *** N G ********** N G ***\n");
}
{
  int i=2;
  struct tag {int a;int b;}st;
  struct tag arr[2];
  i=arr<arr;
  if(i==0)
    printf("*** M3ESAD52-12 *****     O    K     *****\n");
  else
    printf("*** M3ESAD52-12 *** N G ********** N G ***\n");
}
printf("*** M3ESAD52 ** MK3 TEST FOR X_SADCHK **** ENDED \n");
  }



int 
m3esad60 (void)
  {
printf("*** M3ESAD60 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
{
  int *arr[2];
  int *ayy[2];
  int a=2,**x;
  int b=3,i=1;
  arr[0]=&a;
  ayy[0]=&b;
  x=(i==1)?arr:ayy;
  if(**x==2)
    printf("*** M3ESAD60-01 *****     O    K     *****\n");
  else
    printf("*** M3ESAD60-01 *** N G ********** N G ***\n");
}
  {
  int i=1;
  struct tag {
               int a;
               int b;
             }st;
  struct tag *arr[2],**x;
  arr[0]=&st;
  st.a=2;
  x=(i==1)?arr:arr;
  if((&(**x))->a==2)
    printf("*** M3ESAD60-02 *****     O    K     *****\n");
  else
    printf("*** M3ESAD60-02 *** N G ********** N G ***\n");
}
{
  int i=10,(*x)[2];
  static int arr[2][2]={1,2,3,4};
  static int ayy[2][2]={5,6,7,8};
  x=(i==1)?arr:ayy;
  if((int)x[0][0]==5)
    printf("*** M3ESAD60-03 *****     O    K     *****\n");
  else
    printf("*** M3ESAD60-03 *** N G ********** N G ***\n");
}
{
  int i=1;
  struct tag {int a;
               int b;
             }st,**x;
  struct tag *arr[2];
  arr[0]=&st;
  st.a=2;
  x=(i==1)?arr:arr;
  if((int)x[0]->a==2)
    printf("*** M3ESAD60-04 *****     O    K     *****\n");
  else
    printf("*** M3ESAD60-04 *** N G ********** N G ***\n");
}
{
  int i=1,*x;
  static int   volatile    arr[2]={4,5};
  static int   volatile    ayy[2]={6,7};
  x=(int *)((i==1)?arr:ayy);
  if(*x==4)
    printf("*** M3ESAD60-05 *****     O    K     *****\n");
  else
    printf("*** M3ESAD60-05 *** N G ********** N G ***\n");
}
{
  int i=1;
  struct tag {int a;int b;}st;
  struct tag     volatile    arr[2],*x;
  arr[0].a=2;
  x=(i==1)?arr:arr;
  if((&(*x))->a==2)
    printf("*** M3ESAD60-06 *****     O    K     *****\n");
  else
    printf("*** M3ESAD60-06 *** N G ********** N G ***\n");
}
{
  int i=2,*x;
  static int    const    arr[2]={1,3};
  x=(int *)((i==2)?arr:arr);
  if(*x==1)
    printf("*** M3ESAD60-07 *****     O    K     *****\n");
  else
    printf("*** M3ESAD60-07 *** N G ********** N G ***\n");
}
{
  int i=1;
  struct tag {int a;int b;}st,*x;
  struct tag              arr[2];
  arr[0].a=2;
  x=(i==1)?arr:arr;
  if((&(*x))->a==2)
    printf("*** M3ESAD60-08 *****     O    K     *****\n");
  else
    printf("*** M3ESAD60-08 *** N G ********** N G ***\n");
}
{
  int i=2,*x;
  static int     volatile const    arr[2]={1,3};
  x=(int *)((i==2)?arr:arr);
  if(*x==1)
    printf("*** M3ESAD60-09 *****     O    K     *****\n");
  else
    printf("*** M3ESAD60-09 *** N G ********** N G ***\n");
}
{
  int i=2;
  struct tag {int a;int b;}st,*x;
  struct tag     volatile          arr[2];
  arr[0].a=3;
  x=(struct tag *)((i==2)?arr:arr);
  if((&(*x))->a==3)
    printf("*** M3ESAD60-10 *****     O    K     *****\n");
  else
    printf("*** M3ESAD60-10 *** N G ********** N G ***\n");
}
{
  int i=2,*x;
  static int arr[2]={1,2};
  static int ayy[2]={3,4};
  x=(i==2)?arr:ayy;
  if(*x==1)
    printf("*** M3ESAD60-11 *****     O    K     *****\n");
  else
    printf("*** M3ESAD60-11 *** N G ********** N G ***\n");
}
{
  int i=2;
  struct tag {int a;int b;}st,*x;
  struct tag arr[2];
  arr[0].a=3;
  x=(i==2)?arr:arr;
  if((&(*x))->a==3)
    printf("*** M3ESAD60-12 *****     O    K     *****\n");
  else
    printf("*** M3ESAD60-12 *** N G ********** N G ***\n");
}
printf("*** M3ESAD60 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
  }


 int y;
 int 
m3mpsi07 (void) {
 struct tag {
     int    mema;
     int    memb;
     char   memc[4];
     };
 struct tag var1,var2,var3,*pint;
 int a[10];
 int x;
 pint=&var3;
 npsub();
 y=y-17;
 pint->mema=y;
 npsub();
 pint->memb=15;
 a[4]=pint->mema;
 a[pint->mema]=3;
 pint=&var2;
 pint->memb=4;
 x=pint->memb;
 pint->memb=a[4];
 x=pint->memb;
 pint=&var3;
 y=x;
 a[1]=y;
 pint=&var3;
 npsub();
 x=a[1];
 pint->memc[1]=y+pint->memb;
 if (pint->memc[1]==37) printf("M3MPSI07 OK\n");
 else
 printf(" NG %d\n",pint->memc[1]);
 }
 int 
npsub (void)
 {
 y=22;
 return 0;
 }



int 
m3mptr03 (void)
{
  int flag=0;
  int a,b,c,d,e,f;
  a=10;
  a=15;
  d=30;
  d=5;
  if(a!=20){
    flag++;
  }
  if((a>5) ||(d<50)){
    a=b+f;
    flag++;
  }
  else {
    a=c+f;
    flag++;
  }
  if(flag==2){
    printf("*****   OK   *****\n",a);
  }
  else {
    printf("*****   NG   *****\n",a);
  }
  d=20;
  e=30;
  b=55;
  c=60;
  a=100;
  f=200;
}



int 
scoprl1 (void)
{
    int i1,i2,i3,i4,*pi,ii                                      ;
    short int *p1,*p2                                           ;

    printf("********** SCOPRL1 STARTED *********\n")  ;

    i1     = 1                                                  ;
    i2     = 2                                                  ;

    p1     =  (short int*) &i1                                  ;
    p2     =  (short int*) &i2                                  ;
    pi     =  &i1                                               ;

    i3     = *(int *)p1                                         ;
    i4     = *(int *)p2                                         ;
    ii     = *pi                                                ;

    if (i3 == 1 )
        printf("********** SCOPRL1 -01 OK **********\n")    ;
    else
        printf("********** SCOPRL1 -01 NG **********\n")    ;

    if (ii == 1 )
        printf("********** SCOPRL1 -01.5 OK **********\n")  ;
    else
        printf("********** SCOPRL1 -01.5 NG **********\n")  ;

    if (i4 == 2 )
        printf("********** SCOPRL1 -02 OK **********\n")    ;
    else
        printf("********** SCOPRL1 -02 NG **********\n")    ;

    printf("********** SCOPRL1 ENDED **********\n")    ;

}


int 
scood02 (void)
{
    int    i,k                                                ;



    printf("********** SCOOD02 STARTED *********\n");

    i = 1                                                     ;
    k = 2                                                     ;

    switch (i) {
    case 1:
        printf("********** SCOOD02 -01 OK **********\n")  ;
        break                                                 ;
    default:
        printf("********** SCOOD02 -01 NG **********\n")  ;
        break                                                 ;
    }

    switch (i) {
    case 1:
        printf("********** SCOOD02 -02 OK **********\n")  ;
        break                                                 ;
    case 2:
        printf("********** SCOOD02 -02 NG **********\n")  ;
        break                                                 ;
    default:
        printf("********** SCOOD02 -02 NG **********\n")  ;
        break                                                 ;
    }

    switch (i) {
    case 1:
        printf("********** SCOOD02 -03 OK **********\n")  ;
        break                                                 ;
    case 2:
        printf("********** SCOOD02 -03 NG **********\n")  ;
        break                                                 ;
    case 3:
        printf("********** SCOOD02 -03 NG **********\n")  ;
        break                                                 ;
    default:
        printf("********** SCOOD02 -03 NG **********\n")  ;
        break                                                 ;
    }

    switch (i) {
    case 1:
        printf("********** SCOOD02 -04 OK **********\n")  ;
        break                                                 ;
    case 2:
        printf("********** SCOOD02 -04 NG **********\n")  ;
        break                                                 ;
    case 3:
        printf("********** SCOOD02 -04 NG **********\n")  ;
        break                                                 ;
    case 4:
        printf("********** SCOOD02 -04 NG **********\n")  ;
        break                                                 ;
    default:
        printf("********** SCOOD02 -04 NG **********\n")  ;
        break                                                 ;
    }

    switch (i) {
    case 1:
        printf("********** SCOOD02 -05 OK **********\n")  ;
        break                                                 ;
    case 2:
        printf("********** SCOOD02 -05 NG **********\n")  ;
        break                                                 ;
    case 3:
        printf("********** SCOOD02 -05 NG **********\n")  ;
        break                                                 ;
    case 4:
        printf("********** SCOOD02 -05 NG **********\n")  ;
        break                                                 ;
    case 5:
        printf("********** SCOOD02 -05 NG **********\n")  ;
        break                                                 ;
    default:
        printf("********** SCOOD02 -05 NG **********\n")  ;
        break                                                 ;
    }


}
