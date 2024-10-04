


#include<stdio.h>
#include<stddef.h>
#include<time.h>
void mptest36 (void);
void m3edtr03 (void);
void m3edtr02 (void);
void m3edtr01 (void);
void mptest34 (void);
void m3edc030 (void);
void scosn01 (void);
void m3edc029 (void);
void m3edc028 (void);
void mptest33 (void);
void m3edc027 (void);
void mptest37 (void);
void m3edc024 (void);
void m3edc023 (void);
int main()
{
   m3edc023();  
   m3edc024();  
   mptest37();  
   m3edc027();  
   mptest33();  
   m3edc028();  
   m3edc029();  
   scosn01();   
   m3edc030();  
   mptest34();  
   m3edtr01();  
   m3edtr02();  
   m3edtr03();  
   mptest36();  

}


void
m3edtr01 (void)
{
  int a01 = 1;
  static int a02[2] = { 1,2 };
  static int a03[2][2] = { { 1,2 }, { 3,4 } };
  static int a04[2][2][2]
              = { { { 1,2 }, { 3,4 } },
                   { { 5,6 }, { 7,8 } } };
  static int a05[2][2][2][2][2][2][2][2][2][2]
              = { 0,0,0,0,0,0,0,0,0,1 };
  extern int fecf01();
  extern int fecf02(int);
  static struct tag1 { int a:2; } s01 = { 3 };
  int (a06) = 1;
  static int (a07)[2] = { 1,2 };
  extern int (fecf03)();
  static struct tag2 { int (a):1; } s02 = { 1 };
  int ((a08)) = 1;

  if (a01 == 1)
      printf("***** M3EDTR01 - 01 ***** O K *****\n");
    else
      printf("***** M3EDTR01 - 01 ***** N G *****\n");

  if (a02[1] == 2)
      printf("***** M3EDTR01 - 02 ***** O K *****\n");
    else
      printf("***** M3EDTR01 - 02 ***** N G *****\n");

  if (a03[1][0] == 3)
      printf("***** M3EDTR01 - 03 ***** O K *****\n");
    else
      printf("***** M3EDTR01 - 03 ***** N G *****\n");

  if (a04[0][1][1] == 4)
      printf("***** M3EDTR01 - 04 ***** O K *****\n");
    else
      printf("***** M3EDTR01 - 04 ***** N G *****\n");

  if (a05[0][0][0][0][0][0][1][0][0][1] == 1)
      printf("***** M3EDTR01 - 05 ***** O K *****\n");
    else
      printf("***** M3EDTR01 - 05 ***** N G *****\n");

  if (fecf01() == 1)
      printf("***** M3EDTR01 - 06 ***** O K *****\n");
    else
      printf("***** M3EDTR01 - 06 ***** N G *****\n");

  if (fecf02(100) == 10)
      printf("***** M3EDTR01 - 07 ***** O K *****\n");
    else
      printf("***** M3EDTR01 - 07 ***** N G *****\n");

#if defined(BIT_SIGNED) || defined(__GNUC__)
  if (s01.a == -1)
#else
  if (s01.a == 3)
#endif
      printf("***** M3EDTR01 - 08 ***** O K *****\n");
    else
      printf("***** M3EDTR01 - 08 ***** N G *****\n");

  if (a06 == 1)
      printf("***** M3EDTR01 - 09 ***** O K *****\n");
    else
      printf("***** M3EDTR01 - 09 ***** N G *****\n");

  if (a07[0] == 1)
      printf("***** M3EDTR01 - 10 ***** O K *****\n");
    else
      printf("***** M3EDTR01 - 10 ***** N G *****\n");

  if (fecf03() == 3)
      printf("***** M3EDTR01 - 11 ***** O K *****\n");
    else
      printf("***** M3EDTR01 - 11 ***** N G *****\n");

#if defined(BIT_SIGNED) || defined(__GNUC__)
  if (s02.a == -1)
#else
  if (s02.a == 1)
#endif
      printf("***** M3EDTR01 - 12 ***** O K *****\n");
    else
      printf("***** M3EDTR01 - 12 ***** N G *****\n");

  if (a08 == 1)
      printf("***** M3EDTR01 - 13 ***** O K *****\n");
    else
      printf("***** M3EDTR01 - 13 ***** N G *****\n");
}

int 
fecf01 (void)
{
  return (1);
}

int fecf02(int a)
{
  return (a/10);
}

int 
fecf03 (void)
{
  return (3);
}




 volatile const int short fe1a4=-1;
 volatile const short int fe1a5;
 typedef const volatile int short fe1t_si;

void
m3edc023 (void)
{

   volatile const short int *addr,*addr2;

   auto volatile const int short a1,b1;
   register volatile const short int a2=0x7fff;
   static volatile const int short a3[2]={-2,};
   extern volatile const short int fe1a4;
   extern volatile const int short fe1a5;
   fe1t_si a6;


   printf("*** M3EDC023 ** MK3 TEST FOR DCL ** STARTED ***\n");

   addr = &a1;  addr2 = &b1;
   if (a1!=*addr || b1!=*addr2)
       printf(" *** M3EDC023 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC023 TEST-01 OK ***\n");

   if (a2!=32767)
       printf(" *** M3EDC023 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC023 TEST-02 OK ***\n");

   if (a3[0]!=-2 || a3[1])
       printf(" *** M3EDC023 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC023 TEST-03 OK ***\n");

   if (fe1a4!=-1)
       printf(" *** M3EDC023 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC023 TEST-04 OK ***\n");

   if (fe1a5!=0)
       printf(" *** M3EDC023 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC023 TEST-05 OK ***\n");

   addr = &a6;
   if (a6!=*addr)
       printf(" *** M3EDC023 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC023 TEST-06 OK ***\n");

   printf("*** M3EDC023 TEST ENDED ***\n");
}



 volatile const int short fe2a4;
 volatile const short int fe2a5;

void
m3edc024 (void)
{

   volatile const short int *addr,*addr2;

   printf("*** M3EDC024 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     auto volatile const int short a1;
     register volatile const short int a2=-1,b2=0;
     static volatile const int short a3[2]={-2,3};
     extern volatile const short int fe2a4;
     extern volatile const int short fe2a5;
     typedef const volatile int short t_si;
     t_si  a6;


     addr = &a1;
     if (a1!=*addr)
         printf(" *** M3EDC024 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC024 TEST-01 OK ***\n");

     if (a2!=-1 || b2)
         printf(" *** M3EDC024 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC024 TEST-02 OK ***\n");

     if (a3[0]!=-2 || a3[1]!=3)
         printf(" *** M3EDC024 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC024 TEST-03 OK ***\n");

     if (fe2a4!=0)
         printf(" *** M3EDC024 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC024 TEST-04 OK ***\n");

     if (fe2a5!=0)
         printf(" *** M3EDC024 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC024 TEST-05 OK ***\n");

     addr = &a6;
     if (a6!=*addr)
         printf(" *** M3EDC024 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC024 TEST-06 OK ***\n");
   }

   printf("*** M3EDC024 TEST ENDED ***\n");
}



 volatile const wchar_t fe3a4;
 volatile const wchar_t fe3a5;
 typedef const volatile wchar_t fe3t_lc;

void
m3edc027 (void)
{

   volatile const wchar_t *addr,*addr2;

   auto volatile const wchar_t a1=1,b1;
   register volatile const wchar_t a2=1;
   static volatile const wchar_t a3[2]={2,3};
   extern volatile const wchar_t fe3a4;
   extern volatile const wchar_t fe3a5;
   fe3t_lc a6;


   printf("*** M3EDC027 ** MK3 TEST FOR DCL ** STARTED ***\n");

   addr = &b1;
   if (a1!=1 || b1!=*addr)
       printf(" *** M3EDC027 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC027 TEST-01 OK ***\n");

   if (a2!=1)
       printf(" *** M3EDC027 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC027 TEST-02 OK ***\n");

   if (a3[0]!=2 || a3[1]!=3)
       printf(" *** M3EDC027 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC027 TEST-03 OK ***\n");

   if (fe3a4!=0)
       printf(" *** M3EDC027 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC027 TEST-04 OK ***\n");

   if (fe3a5!=0)
       printf(" *** M3EDC027 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC027 TEST-05 OK ***\n");

   addr = &a6;
   if (a6!=*addr)
       printf(" *** M3EDC027 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC027 TEST-06 OK ***\n");

   printf("*** M3EDC027 TEST ENDED ***\n");
}



 volatile const wchar_t fe4a4=1;
 volatile const wchar_t fe4a5;

void
m3edc028 (void)
{

   volatile const wchar_t *addr,*addr2;

   printf("*** M3EDC028 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     auto volatile const wchar_t a1,b1;
     register volatile const wchar_t a2=100;
     static volatile const wchar_t a3[2]={2,3};
     extern volatile const wchar_t fe4a4;
     extern volatile const wchar_t fe4a5;
     typedef const volatile wchar_t t_lc;
     t_lc  a6;


     addr = &a1;  addr2 = &b1;
     if (a1!=*addr || b1!=*addr2)
         printf(" *** M3EDC028 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC028 TEST-01 OK ***\n");

     if (a2!=100)
         printf(" *** M3EDC028 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC028 TEST-02 OK ***\n");

     if (a3[0]!=2 || a3[1]!=3)
         printf(" *** M3EDC028 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC028 TEST-03 OK ***\n");

     if (fe4a4!=1)
         printf(" *** M3EDC028 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC028 TEST-04 OK ***\n");

     if (fe4a5!=0)
         printf(" *** M3EDC028 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC028 TEST-05 OK ***\n");

     addr = &a6;
     if (a6!=*addr)
         printf(" *** M3EDC028 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC028 TEST-06 OK ***\n");
   }

   printf("*** M3EDC028 TEST ENDED ***\n");
}



 volatile const void *fe5a4;
 volatile const void *ef5a5;
 typedef const volatile void fe5t_void;

void
m3edc029 (void)
{

   volatile const void *addr,*addr2;

   auto volatile const void *a1=0;
   register volatile const void *a2=a1,*b2=NULL;
   static volatile const void *a3[2]={0,(void*)3};
   extern volatile const void *fe5a4;
   extern volatile const void *ef5a5;
   fe5t_void *a6=NULL;


   printf("*** M3EDC029 ** MK3 TEST FOR DCL ** STARTED ***\n");

   addr = a1;
   if (a1!=addr)
       printf(" *** M3EDC029 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC029 TEST-01 OK ***\n");

   addr = b2;
   if (a2!=a1 || b2!=addr)
       printf(" *** M3EDC029 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC029 TEST-02 OK ***\n");

   if (a3[0]!=0 || a3[1]!=(void*)3)
       printf(" *** M3EDC029 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC029 TEST-03 OK ***\n");

   if (fe5a4!=0)
       printf(" *** M3EDC029 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC029 TEST-04 OK ***\n");

   if (ef5a5!=0)
       printf(" *** M3EDC029 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC029 TEST-05 OK ***\n");

   addr = a6;
   if (a6!=addr)
       printf(" *** M3EDC029 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC029 TEST-06 OK ***\n");

   printf("*** M3EDC029 TEST ENDED ***\n");
}



 volatile const void *fe6a4;
 volatile const void *fe6a5;

void
m3edc030 (void)
{

   volatile const void *addr,*addr2;

   printf("*** M3EDC030 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     auto volatile const void *a1=0;
     register volatile const void *a2=NULL, *b2=NULL;
     static volatile const void *a3[2]={0,(void*)3};
     extern volatile const void *fe6a4;
     extern volatile const void *fe6a5;
     typedef const volatile void t_void;
     t_void *a6=NULL;


     if (a1!=0)
         printf(" *** M3EDC030 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC030 TEST-01 OK ***\n");

     addr = a2;  addr2 = b2;
     if (a2!=addr || b2!=addr2)
         printf(" *** M3EDC030 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC030 TEST-02 OK ***\n");

     if (a3[0]!=0 || a3[1]!=(void*)3)
         printf(" *** M3EDC030 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC030 TEST-03 OK ***\n");

     if (fe6a4!=0)
         printf(" *** M3EDC030 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC030 TEST-04 OK ***\n");

     if (fe6a5!=0)
         printf(" *** M3EDC030 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC030 TEST-05 OK ***\n");

     addr = a6;
     if (a6!=addr)
         printf(" *** M3EDC030 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC030 TEST-06 OK ***\n");
   }

   printf("*** M3EDC030 TEST ENDED ***\n");
}

void
m3edtr02 (void)
{
  int *a01;
  int **a02;
  int ***a03;
  int **********a04;
  int *a05[2];
  int *a06[2][2];
  int **a07[2];
  int **a08[2][2];
  int (*a09)[2];
  int (*a10[2])[2];
  int *(a11[2])[2];
  int a = 10;

  a01 = &a;
  if (*a01 == 10)
      printf("***** M3EDTR02 - 01 ***** O K *****\n");
    else
      printf("***** M3EDTR02 - 01 ***** N G *****\n");

  a02 = &a01;
  if (**a02 == 10)
      printf("***** M3EDTR02 - 02 ***** O K *****\n");
    else
      printf("***** M3EDTR02 - 02 ***** N G *****\n");

  a03 = &a02;
  if (***a03 == 10)
      printf("***** M3EDTR02 - 03 ***** O K *****\n");
    else
      printf("***** M3EDTR02 - 03 ***** N G *****\n");

  {
    int ****d1      = &a03;
    int *****d2     = &d1;
    int ******d3    = &d2;
    int *******d4   = &d3;
    int ********d5  = &d4;
    int *********d6 = &d5;

    a04 = &d6;
    if (**********a04 == 10)
        printf("***** M3EDTR02 - 04 ***** O K *****\n");
      else
        printf("***** M3EDTR02 - 04 ***** N G *****\n");
  }

  a05[0] = a01;
  if (*a05[0] == 10)
      printf("***** M3EDTR02 - 05 ***** O K *****\n");
    else
      printf("***** M3EDTR02 - 05 ***** N G *****\n");

  a06[0][0] = a01;
  if (*a06[0][0] == 10)
      printf("***** M3EDTR02 - 06 ***** O K *****\n");
    else
      printf("***** M3EDTR02 - 06 ***** N G *****\n");

  a07[1] = a02;
  if (**a07[1] == 10)
      printf("***** M3EDTR02 - 07 ***** O K *****\n");
    else
      printf("***** M3EDTR02 - 07 ***** N G *****\n");

  a08[1][1] = a02;
  if (**a08[1][1] == 10)
      printf("***** M3EDTR02 - 08 ***** O K *****\n");
    else
      printf("***** M3EDTR02 - 08 ***** N G *****\n");

  {
    static int aa[2] = { 10,20 };

    a09 = &aa;
    if ((*a09)[1] == 20)
        printf("***** M3EDTR02 - 09 ***** O K *****\n");
      else
        printf("***** M3EDTR02 - 09 ***** N G *****\n");

    a10[0] = &aa;
    if ((*a10[0])[0] == 10)
        printf("***** M3EDTR02 - 10 ***** O K *****\n");
      else
        printf("***** M3EDTR02 - 10 ***** N G *****\n");

    (a11[1])[0] = a01;
    if (*(a11[1])[0] == 10)
        printf("***** M3EDTR02 - 11 ***** O K *****\n");
      else
        printf("***** M3EDTR02 - 11 ***** N G *****\n");
  }
}


void
m3edtr03 (void)
{
  int a = 10,*aa = &a,**aaa = &aa;

  int *volatile const a01 = (int *volatile const)aa;
  int **volatile const a02 = (int **volatile const)aaa;
  int *volatile *const a03 = (int *volatile *const)aaa;
  int *const *volatile a04 = (int *const *volatile)aaa;
  int *volatile const *a05 = (int *volatile const *)aaa;
  int *volatile *const *a06 = (int *volatile *const *)&aaa;
  int *const *volatile *a07 = (int *const *volatile *)&aaa;
  int *volatile a08 = (int *volatile)aa;
  int **volatile a09 = (int **volatile)aaa;
  int *volatile *a10 = (int *volatile *)aaa;
  int *const a11 = (int *const)aa;
  int **const a12 = (int **const)aaa;
  int *const *a13 = (int *const *)aaa;

  if (*a01 == 10)
      printf("***** M3EDTR03 - 01 ***** O K *****\n");
    else
      printf("***** M3EDTR03 - 01 ***** N G *****\n");

  if (**a02 == 10)
      printf("***** M3EDTR03 - 02 ***** O K *****\n");
    else
      printf("***** M3EDTR03 - 02 ***** N G *****\n");

  if (**a03 == 10)
      printf("***** M3EDTR03 - 03 ***** O K *****\n");
    else
      printf("***** M3EDTR03 - 03 ***** N G *****\n");

  if (**a04 == 10)
      printf("***** M3EDTR03 - 04 ***** O K *****\n");
    else
      printf("***** M3EDTR03 - 04 ***** N G *****\n");

  if (**a05 == 10)
      printf("***** M3EDTR03 - 05 ***** O K *****\n");
    else
      printf("***** M3EDTR03 - 05 ***** N G *****\n");

  if (***a06 == 10)
      printf("***** M3EDTR03 - 06 ***** O K *****\n");
    else
      printf("***** M3EDTR03 - 06 ***** N G *****\n");

  if (***a07 == 10)
      printf("***** M3EDTR03 - 07 ***** O K *****\n");
    else
      printf("***** M3EDTR03 - 07 ***** N G *****\n");

  if (*a08 == 10)
      printf("***** M3EDTR03 - 08 ***** O K *****\n");
    else
      printf("***** M3EDTR03 - 08 ***** N G *****\n");

  if (**a09 == 10)
      printf("***** M3EDTR03 - 09 ***** O K *****\n");
    else
      printf("***** M3EDTR03 - 09 ***** N G *****\n");

  if (**a10 == 10)
      printf("***** M3EDTR03 - 10 ***** O K *****\n");
    else
      printf("***** M3EDTR03 - 10 ***** N G *****\n");

  if (*a11 == 10)
      printf("***** M3EDTR03 - 11 ***** O K *****\n");
    else
      printf("***** M3EDTR03 - 11 ***** N G *****\n");

  if (**a12 == 10)
      printf("***** M3EDTR03 - 12 ***** O K *****\n");
    else
      printf("***** M3EDTR03 - 12 ***** N G *****\n");

  if (**a13 == 10)
      printf("***** M3EDTR03 - 13 ***** O K *****\n");
    else
      printf("***** M3EDTR03 - 13 ***** N G *****\n");
}



void
mptest33 (void)
 {
    int a,b,c,d,e=0,f=0;
    a=c=d=10;
    b=a+5;
    goto l11;
l00:
    c=0;
    d=1;
    e=c+d;
    goto l02;
l01:
    c++;
    e=++d+c;
    goto l01;
l02:
    a++;
    if(a==0) goto l02;
l03:
    b++;
l04:
    goto l00;
l11:
    if(a!=10){printf("*** A  NG ** a=%d ***\n",a);f++;}
    if(b!=15){printf("*** B  NG ** b=%d ***\n",b);f++;}
    if(c!=10){printf("*** C  NG ** c=%d ***\n",c);f++;}
    if(d!=10){printf("*** D  NG ** d=%d ***\n",d);f++;}
    if(e!=0) {printf("*** E  NG ** e=%d ***\n",e);f++;}
    if(f==0) printf("*** MPTEST33  OK ***\n");
    else     printf("*** MPTEST33  NG ***\n");
}



void
mptest34 (void)
{
   int  mp2fnc01(int);
   int  mp2fnc02(int);

   int a1,a2,a3,a4,a5;
   a1=a2=2;
   a4 = mp2fnc01(a1);
   a5 = mp2fnc02(a2);
   a3=a4-a5;
   if(a3==0)
     printf("***** MPTEST34 OK *****\n");
   else
     printf("***** MPTEST34 NG ***** a3=%d \n",a3);
}

 int mp2fnc01(int i)
{
   static int rv=0;
   static int s=0;
   s++;
   if(i>=1) rv=mp2fnc01(--i);
   return(s);
}

 int mp2fnc02(int i)
{
  int mp2fnc03(int);
  int rv02;

  rv02=mp2fnc03(i);
  if(rv02==3) return(rv02);
  return(0);
}

 int mp2fnc03(int i)
{
  int mp2fnc04(int);
  int rv03;

  if(i<3){
    rv03 = mp2fnc04(++i);
    return(rv03);
  }
  return(i);
}

 int mp2fnc04(int i)
{
  int mp2fnc02(int);
  int rv04;

  rv04=mp2fnc02(i);
  return(rv04);
}



void
mptest36 (void)
{ int mp2fnc();
   if(mp2fnc()!=0) printf("***** MPTEST36 NG *****\n");
   else          printf("***** MPTEST36 OK *****\n");
}
int 
mp2fnc (void)
{
  int mp2f_fr(int),mp2f_wl(int),mp2f_if(int),mp2f_rn(int),mp2f_dw(int);
  int i1,i2,i3,i4;
  int r1,r3,r4,r5;

     i1=1;i2=2;i3=3;i4=4;
     for(r1=mp2f_fr(i1);mp2f_fr(i2);mp2f_fr(i3))
        r4=mp2f_fr(i4);
     while(mp2f_wl(i1))
        mp2f_wl(i2);
     do { r5=mp2f_dw(i1); }
     while(mp2f_dw(i2));
     if(mp2f_if(i1)!=1) printf("*** MPTEST36 NG ***\n");
     else if(mp2f_if(i2)!=2) printf("*** MPTEST36 NG ***\n");
     else r3=mp2f_if(i3);
     return(mp2f_rn(r3));
}
int 
mp2f_fr (int i)
{
   switch(i){ case 1 : return(1);
               case 2 : return(0);
               default: printf(
                   "*** MPTEST36 NG > IN MP2F_FR *** = %d\n",i);
                        return(i);
   }
}
int 
mp2f_wl (int i)
{ switch(i){ case 1 : return(0);
               default: printf("*** MPTEST36 NG > IN F_WL ***\n");
                        return(i);
            }
}
int 
mp2f_dw (int i)
{ switch(i){ case 1 : return(1);
               case 2 : return(0);
               default: printf("*** MPTEST36 NG > IN F_DW ***\n");
                        return(i);
            }
}
int 
mp2f_if (int i)
{ switch(i){ case 1 : return(1);
               case 2 : return(2);
               case 3 : return(3);
               default: printf("*** MPTEST36 NG > IN F_IF ***\n");
                        return(i);
            }
}
int 
mp2f_rn (int i)
{ switch(i){ case 3 : return(0);
               default: printf("*** MPTEST36 NG > IN F_RN ***\n");
                        return(i);
            }
}



void
mptest37 (void)
 {
   int tbl01[8][8],tbl02[8][8],tbl03[8][8];
   int tbl04[8][8],tbl05[8][8],tbl06[8][8];
   int tbl07[8][8];
   int count,a1,a2,a3,a4,a5,a6,a7,a8,a9,b1,b2,b3;
   long int time;
   printf("      \n");
   printf("    MPTEST37 START \n");
   clock();
   count=0;


   for(a2=0;a2<8;a2++)
    for(a1=1;a1<8;a1++)
     tbl01[a1][a2]=0;


   for(a1=0;a1<8;a1++) {                
    for(a2=1;a2<8;a2++)
     tbl01[a2][a1]=1;

    for(a2=1;a2<8;a2++) {
     b1=0+a2;
     b2=a1+a2;
     b3=a1-a2;
     if(b2<=7) tbl01[b1][b2]=1;
     if(b3>=0) tbl01[b1][b3]=1;
    }

    for(a3=0;a3<8;a3++)
     for(a2=1;a2<8;a2++)
      tbl02[a2][a3]=tbl01[a2][a3];


    for(a2=0;a2<8;a2++) {               
     if(tbl02[1][a2]==0) {
      for(a3=2;a3<8;a3++)
       tbl02[a3][a2]=1;

      for(a3=1;a3<7;a3++) {
       b1=1+a3;
       b2=a2+a3;
       b3=a2-a3;
       if(b2<=7)tbl02[b1][b2]=1;
       if(b3>=0)tbl02[b1][b3]=1;
      }

      for(a4=0;a4<8;a4++)
       for(a3=2;a3<8;a3++)
        tbl03[a3][a4]=tbl02[a3][a4];


      for(a3=0;a3<8;a3++) {             
       if(tbl03[2][a3]==0) {
        for(a4=3;a4<8;a4++)
         tbl03[a4][a3]=1;
        for(a4=1;a4<6;a4++) {
         b1=2+a4;
         b2=a3+a4;
         b3=a3-a4;
         if(b2<=7)tbl03[b1][b2]=1;
         if(b3>=0)tbl03[b1][b3]=1;
        }

       for(a5=0;a5<8;a5++)
        for(a4=3;a4<8;a4++)
         tbl04[a4][a5]=tbl03[a4][a5];


       for(a4=0;a4<8;a4++) {            
        if(tbl04[3][a4]==0) {
         for(a5=4;a5<8;a5++)
          tbl04[a5][a4]=1;
         for(a5=1;a5<5;a5++) {
          b1=3+a5;
          b2=a4+a5;
          b3=a4-a5;
          if(b2<=7)tbl04[b1][b2]=1;
          if(b3>=0)tbl04[b1][b3]=1;
         }

         for(a6=0;a6<8;a6++)
          for(a5=4;a5<8;a5++)
           tbl05[a5][a6]=tbl04[a5][a6];


         for(a5=0;a5<8;a5++) {          
          if(tbl05[4][a5]==0) {
           for(a6=5;a6<8;a6++)
            tbl05[a6][a5]=1;
           for(a6=1;a6<4;a6++) {
            b1=4+a6;
            b2=a5+a6;
            b3=a5-a6;
            if(b2<=7)tbl05[b1][b2]=1;
            if(b3>=0)tbl05[b1][b3]=1;
           }

           for(a7=0;a7<8;a7++)
            for(a6=5;a6<8;a6++)
             tbl06[a6][a7]=tbl05[a6][a7];


           for(a6=0;a6<8;a6++) {        
            if(tbl06[5][a6]==0) {
             tbl06[6][a6]=1;
             tbl06[7][a6]=1;
             for(a7=1;a7<3;a7++) {
              b1=5+a7;
              b2=a6+a7;
              b3=a6-a7;
              if(b2<=7)tbl06[b1][b2]=1;
              if(b3>=0)tbl06[b1][b3]=1;
             }

             for(a8=0;a8<8;a8++)
              for(a7=6;a7<8;a7++)
               tbl07[a7][a8]=tbl06[a7][a8];


             for(a7=0;a7<8;a7++) {     
              if(tbl07[6][a7]==0) {
               tbl07[7][a7]=1;
               if(a7+1<=7)tbl07[7][a7+1]=1;
               if(a7-1>=0)tbl07[7][a7-1]=1;


               for(a8=0;a8<8;a8++) {
                if(tbl07[7][a8]==0)
                 count=count+1;
               }

               for(a9=0;a9<8;a9++)
                for(a8=6;a8<8;a8++)
                 tbl07[a8][a9]=tbl06[a8][a9];

              }                        
             }                         
             for(a8=0;a8<8;a8++)
              for(a7=5;a7<8;a7++)
               tbl06[a7][a8]=tbl05[a7][a8];

            }                          
           }                           
           for(a7=0;a7<8;a7++)
            for(a6=4;a6<8;a6++)
             tbl05[a6][a7]=tbl04[a6][a7];

          }                            
         }                             
         for(a6=0;a6<8;a6++)
          for(a5=3;a5<8;a5++)
           tbl04[a5][a6]=tbl03[a5][a6];

        }                              
       }                               
       for(a5=0;a5<8;a5++)
        for(a4=2;a4<8;a4++)
         tbl03[a4][a5]=tbl02[a4][a5];

       }                               
      }                                
      for(a4=0;a4<8;a4++)
       for(a3=1;a3<8;a3++)
        tbl02[a3][a4]=tbl01[a3][a4];

     }                                 
    }                                  

    for(a3=0;a3<8;a3++)
     for(a2=1;a2<8;a2++)
      tbl01[a2][a3]=0;

   }                                   

   time=clock();
   printf("      \n");
   printf("    EIGHT QUEEN PATTERN  = %d \n",count);
   printf("      \n");
   if(count==92) {
    printf("      \n");
    printf("    MPTEST37 OK \n");  }
   else          {
    printf("      \n");
    printf("    MPTEST37 NG \n");  }
   printf("      \n");
   printf("    MPTEST37 END \n");
   printf("      \n");
 }


void
scosn01 (void)
{
  unsigned       int    ui3 = 3u                                 ;
  unsigned       int    tu                                       ;
  signed         int    ts                                       ;
  signed         int    si3 = 3                                  ;

  const          int    ci3 = 3                                  ;

  const unsigned int    cui1 = 1u                                ;
  const unsigned int    cui8 = 8u                                ;
  const   signed int    csi1 = 1                                 ;
  const   signed int    csi8 = 8                                 ;

  printf("********** SCOSN01 TEST STARTED **********\n")     ;


  tu = 1u << ui3                                                 ;
  if   (tu == 8)
    printf("********** SCOSN01 - 01 OK **********\n")        ;
  else
    printf("********** SCOSN01 - 01 NG **********\n")        ;


  ts = 1  << si3                                                 ;
  if   (ts == 8)
    printf("********** SCOSN01 - 02 OK **********\n")        ;
  else
    printf("********** SCOSN01 - 02 NG **********\n")        ;


  tu = cui1 << 3                                                 ;
  if   (tu == 8)
    printf("********** SCOSN01 - 03 OK **********\n")        ;
  else
    printf("********** SCOSN01 - 03 NG **********\n")        ;


  ts = csi1 << 3                                                 ;
  if   (ts == 8)
    printf("********** SCOSN01 - 04 OK **********\n")          ;
  else
    printf("********** SCOSN01 - 04 NG **********\n")          ;


  tu = 1u << ci3                                                 ;
  if   (tu == 8)
    printf("********** SCOSN01 - 05 OK **********\n")          ;
  else
    printf("********** SCOSN01 - 05 NG **********\n")          ;


  ts = 1  << ci3                                                 ;
  if   (ts == 8)
    printf("********** SCOSN01 - 06 OK **********\n")          ;
  else
    printf("********** SCOSN01 - 06 NG **********\n")          ;


  tu = 8u >> ui3                                                 ;
  if   (tu == 1)
    printf("********** SCOSN01 - 07 OK **********\n")          ;
  else
    printf("********** SCOSN01 - 07 NG **********\n")          ;


  ts = 8  >> si3                                                 ;
  if   (ts == 1)
    printf("********** SCOSN01 - 08 OK **********\n")          ;
  else
    printf("********** SCOSN01 - 08 NG **********\n")          ;


  tu = cui8 >> 3                                                 ;
  if   (tu == 1)
    printf("********** SCOSN01 - 09 OK **********\n")          ;
  else
    printf("********** SCOSN01 - 09 NG **********\n")          ;


  ts = csi8  >> 3                                                   ;
  if   (ts == 1)
    printf("********** SCOSN01 - 10 OK **********\n")          ;
  else
    printf("********** SCOSN01 - 10 NG **********\n")          ;


  tu = 8u >> ci3                                                 ;
  if   (tu == 1)
    printf("********** SCOSN01 - 11 OK **********\n")          ;
  else
    printf("********** SCOSN01 - 11 NG **********\n")          ;


  ts = 8  >> ci3                                                 ;
  if   (ts == 1)
    printf("********** SCOSN01 - 12 OK **********\n")          ;
  else
    printf("********** SCOSN01 - 12 NG **********\n")          ;


  printf("********** SCOSN01 TEST STARTED **********\n")     ;
}
