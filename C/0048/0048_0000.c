
#include <stdio.h>
int m3enrd01 (void);
int m3elva01 (void);
int m3edc322 (void);
int m3edc159 (void);
int m3edc307 (void);

int main()
{

   printf("***  **** START ***\n");

   m3edc307();  
   m3edc159();  
   m3edc322();  
   m3elva01();  
   m3enrd01();  

   printf("***  ****  END  ***\n");

}


void f2f3(unsigned long int,int);
void f2f2(unsigned int,int);
void f2f1(int,int);

int 
m3edc307 (void)
{
  f2f3(1ul,2);
  f2f2(1u,2);
  f2f1(1,2);
}

void f2f3(unsigned long int a,int b)
{
  if (a == 1ul)
      printf("***** M3EDC307 - 01 ***** O K *****\n");
    else
      printf("***** M3EDC307 - 01 ***** N G *****\n");

  if (b == 2)
      printf("***** M2EDC307 - 02 ***** O K *****\n");
    else
      printf("***** M2EDC307 - 02 ***** N G *****\n");
}

void f2f2(unsigned int a,int b)
{
  if (a == 1u)
      printf("***** M3EDC307 - 03 ***** O K *****\n");
    else
      printf("***** M3EDC307 - 03 ***** N G *****\n");

  if (b == 2)
      printf("***** M2EDC307 - 04 ***** O K *****\n");
    else
      printf("***** M2EDC307 - 04 ***** N G *****\n");
}

void f2f1(int a,int b)
{
  if (a == 1)
      printf("***** M3EDC307 - 05 ***** O K *****\n");
    else
      printf("***** M3EDC307 - 05 ***** N G *****\n");

  if (b == 2)
      printf("***** M2EDC307 - 06 ***** O K *****\n");
    else
      printf("***** M2EDC307 - 06 ***** N G *****\n");
}



int 
m3edc159 (void)
{

   signed long     a1;
   long unsigned   a2,b2;
   signed short    a3=-1,b3;
   unsigned short  a4[2];
   int unsigned    a5,b5[2];
   signed int      a6[2],b6=8;
   char unsigned   a7,b7,c7;
   signed char     a8,b8=1,c8[2];

   a4[0] = 2;
   a4[1] = 3;
   b5[0] = 4;
   b5[1] = 5;
   a6[0] = 6;
   a6[1] = 7;
   c8[0] = 9;
   c8[1] = 0;

   printf("*** M3EDC159 **  ** STARTED ***\n");

   a1 = 0;
   if (a1!=0)
       printf(" *** M3EDC159 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC159 TEST-01 OK ***\n");

   a2 = 0;  b2 = 1;
   if (a2!=0 || b2!=1)
       printf(" *** M3EDC159 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC159 TEST-02 OK ***\n");

   b3 = -1;
   if (a3!=-1 || b3!=-1)
       printf(" *** M3EDC159 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC159 TEST-03 OK ***\n");

   if (a4[0]!=2 || a4[1]!=3)
       printf(" *** M3EDC159 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC159 TEST-04 OK ***\n");

   a5 = 0xffffffff;
   if (a5!=4294967295 || b5[0]!=4 || b5[1]!=5)
       printf(" *** M3EDC159 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC159 TEST-05 OK ***\n");

   if (a6[0]!=6 || a6[1]!=7 || b6!=8)
       printf(" *** M3EDC159 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC159 TEST-06 OK ***\n");

   a7 = b7 = c7 = 0x7f;
   if (a7!=127 || b7!=127 || c7!=127)
       printf(" *** M3EDC159 TEST-07 ERROR ***\n");
   else
       printf(" *** M3EDC159 TEST-07 OK ***\n");

   a8 = -1;
   if (a8!=-1 || b8!=1 || c8[0]!=9 || c8[1]!=0)
       printf(" *** M3EDC159 TEST-08 ERROR ***\n");
   else
       printf(" *** M3EDC159 TEST-08 OK ***\n");

   printf("*** M3EDC159 TEST ENDED ***\n");
}



int exa;
struct { int a; int b; int c; } f3st,*exb;

int 
m3edc322 (void)
{
  exb = &f3st;
  f3st.a = 1;
  f3st.b = 2;
  f3st.c = 3;
  exa = 10;

  if (exa == 10)
      printf("***** M3EDC322 - 01 ***** O K *****\n");
    else
      printf("***** M3EDC322 - 01 ***** N G *****\n");

  if (exb->b == 2)
      printf("***** M3EDC322 - 02 ***** O K *****\n");
    else
      printf("***** M3EDC322 - 02 ***** N G *****\n");
}



int 
m3elva01 (void)
  {
  int a[3];
  static int a1[]={1,2,3,4,5};
  struct fftt{ int i;
              char c;
              int t;
           }fftag1,fftag2,*fftag3=&fftag2;
  static struct fftt1{ int i1;
                    char c1;
                    int t1;
            }fftag11={1,2,3},fftag12={1,2,3},*fftag13=&fftag12;

printf("* M3ELVA01 ***      MK3  TEST     ****** STARTED *\n");
{
  int  i;
  char c;
  i=1;
  c=100;
  if(i==1 && c==100)
    printf("*** M3ELVA01-01 *** O K ***\n");
  else
    printf("*** M3ELVA01-01 ***   N   G   ***\n");
}
{
  a[2]=1;
  a1[2]=1;
  if(a[2]==1 && a1[2]==1)
    printf("*** M3ELVA01-02 *** O K ***\n");
  else
    printf("*** M3ELVA01-02 ***   N   G   ***\n");
}
{
  fftag1.t=1;
  fftag11.t1=1;
  if(fftag1.t==1 && fftag11.t1==1)
    printf("*** M3ELVA01-03 *** O K ***\n");
  else
    printf("*** M3ELVA01-03 ***   N   G   ***\n");
}
{
  fftag3->t=1;
  fftag13->t1=1;
  if(fftag3->t==1 && fftag13->t1==1)
    printf("*** M3ELVA01-04 *** O K ***\n");
  else
    printf("*** M3ELVA01-04 ***   N   G   ***\n");
}
{
  int i,*p=&i;
  *p=1;
  if(*p==1 && i==1)
    printf("*** M3ELVA01-05 *** O K ***\n");
  else
    printf("*** M3ELVA01-05 ***   N   G   ***\n");
}
printf("* M3ELVA01 ***      MK3  TEST     ****** ENDED ***\n");
}



#define ml(x) ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( x + 
#define m1(x) ( ( ( ( ( ( ( ( ( x ) ) ) ) ) ) ) ) )   
#define mr(x) + x ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) 
#define m2(x) ml(x) ml(x) m1(x) mr(x) mr(x)           
#define m3(x) m2(x) + m2(x) + m2(x) + m2(x) + m2(x)   
#define m4(x) m3(x) + m3(x)                           

int 
m3enrd01 (void)
{
  printf("********** M3ENRD01 TEST START **********\n");
  {
    int a = 1234567890;

    if (a == 1234567890)
        printf("***** M3ENRD01 - 01 ***** O K *****\n");
      else
        printf("***** M3ENRD01 - 01 ***** N G *****\n");
  }
  {
    int z = 0 + 0 +m4(0); int a = 1234567890;

    if (a == 1234567890)
        printf("***** M3ENRD01 - 02 ***** O K *****\n");
      else
        printf("***** M3ENRD01 - 02 ***** N G *****\n");
  }
  printf("********** M3ENRD01 TEST  END  **********\n");
}



