#include <stdio.h>
#include <string.h>
int m3enrd01 (void);
int m3elva01 (void);
int m3edc322 (void);
int mptest29 (void);
int m3edc189 (void);
int scpa015 (void);
int m3ermv03 (void);
int m3edc307 (void);
int scpba01 (void);
int m3ermv08 (void);
int m3edc159 (void);
int m3esad53 (void);

int main()
{

   printf("***  **** START ***\n");

   m3edc159();  
   m3ermv08();  
   scpba01();   
   m3edc307();  
   m3esad53();  
   m3ermv03();  
   scpa015();   
   m3edc189();  
   mptest29();  
   m3edc322();  
   m3elva01();  
   m3enrd01();  

   printf("***  ****  END  ***\n");

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
struct { int a; int b; int c; } fsst,*exb;

int 
m3edc322 (void)
{
  exb = &fsst;
  fsst.a = 1;
  fsst.b = 2;
  fsst.c = 3;
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



 struct f1stag1;
 union  f1utag1;

 struct f1stag1 {
       short  s;
       long   l;
 } ;
 union f1utag1 {
       int    i;
       long   l;
 } ;
 enum f1etag1 {
       f1ena, f1enb, f1enc
 } ;

int 
m3edc189 (void)
{
   static volatile const struct f1stag1 f1st1={-1,0};
   static volatile const union f1utag1 f1un1={-1};
   static volatile enum f1etag1 f1en1=f1ena;
   static struct f1stag1 f1st2={0x7fff,0x7fffffff};


   printf("*** M3EDC189 ** MK3 TEST FOR DCL ** STARTED ***\n");

   if (f1st1.s!=-1 || f1st1.l!=0)
       printf(" *** M3EDC189 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC189 TEST-01 OK ***\n");

#if defined(LONG64) 
   if (f1un1.i!=-1 || f1un1.l!=0xffffffff00000000)
#elif defined(__x86_64__) || defined(__aarch64__)
   if (f1un1.i!=0xffffffff || f1un1.l!=0xffffffff)
#else
   if (f1un1.i!=-1 || f1un1.l!=-1)
#endif
       printf(" *** M3EDC189 TEST-02 ERROR ***\nf1un1.i:%llx\n,f1un1.l:%llx",
	   f1un1.i,f1un1.l);
   else
       printf(" *** M3EDC189 TEST-02 OK ***\n");

   if (f1en1!=0 || f1ena!=0 || f1enb!=1 || f1enc!=2)
       printf(" *** M3EDC189 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC189 TEST-03 OK ***\n");

   if (f1st2.s!=32767 || f1st2.l!=2147483647)
       printf(" *** M3EDC189 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC189 TEST-04 OK ***\n");

   printf("*** M3EDC189 TEST ENDED ***\n");
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



#define ml(x) ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( x + /*   39 */
#define m1(x) ( ( ( ( ( ( ( ( ( x ) ) ) ) ) ) ) ) )   /*   37 */
#define mr(x) + x ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) /*   39 */
#define m2(x) ml(x) ml(x) m1(x) mr(x) mr(x)           /*  197 */
#define m3(x) m2(x) + m2(x) + m2(x) + m2(x) + m2(x)   /*  997 */
#define m4(x) m3(x) + m3(x)                           /* 1997 */

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



void fxf3(unsigned long int,int);
void fxf2(unsigned int,int);
void fxf1(int,int);

int 
m3edc307 (void)
{
  fxf3(1ul,2);
  fxf2(1u,2);
  fxf1(1,2);
}

void fxf3(unsigned long int a,int b)
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

void fxf2(unsigned int a,int b)
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

void fxf1(int a,int b)
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
m3ermv03 (void)
{
  printf("********** M3ERMV03 TEST START **********\n");
  {
    int a,b = 1,c = 2,d = 3;

    a = b + c + ( d + 1 );
    if (a == 7)
        printf("***** M3ERMV03 - 01 ***** O K *****\n");
      else
        printf("***** M3ERMV03 - 01 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2,d = 3;

    a = b + c + ( d - 1 );
    if (a == 5)
        printf("***** M3ERMV03 - 02 ***** O K *****\n");
      else
        printf("***** M3ERMV03 - 02 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2,d = 3;

    a = b + c - ( d + 1 );
    if (a == -1)
        printf("***** M3ERMV03 - 03 ***** O K *****\n");
      else
        printf("***** M3ERMV03 - 03 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2,d = 3;

    a = b + c - ( d - 1 );
    if (a == 1)
        printf("***** M3ERMV03 - 04 ***** O K *****\n");
      else
        printf("***** M3ERMV03 - 04 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2,d = 3;

    a = b - c + ( d + 1 );
    if (a == 3)
        printf("***** M3ERMV03 - 05 ***** O K *****\n");
      else
        printf("***** M3ERMV03 - 05 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2,d = 3;

    a = b - c + ( d - 1 );
    if (a == 1)
        printf("***** M3ERMV03 - 06 ***** O K *****\n");
      else
        printf("***** M3ERMV03 - 06 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2,d = 3;

    a = b - c - ( d + 1 );
    if (a == -5)
        printf("***** M3ERMV03 - 07 ***** O K *****\n");
      else
        printf("***** M3ERMV03 - 07 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2,d = 3;

    a = b - c - ( d - 1 );
    if (a == -3)
        printf("***** M3ERMV03 - 08 ***** O K *****\n");
      else
        printf("***** M3ERMV03 - 08 ***** N G *****\n");
  }
  printf("********** M3ERMV03 TEST  END  **********\n");
}



int 
m3ermv08 (void)
{
  printf("********** M3ERMV08 TEST START **********\n");
  {
    int a,b = 1,c = 2;

    a = b * 1 * ( c * 2 );
    if (a == 4)
        printf("***** M3ERMV08 - 01 ***** O K *****\n");
      else
        printf("***** M3ERMV08 - 01 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;

    a = b & 3 & ( c & 6 );
    if (a == 0)
        printf("***** M3ERMV08 - 02 ***** O K *****\n");
      else
        printf("***** M3ERMV08 - 02 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;

    a = b ^ 3 ^ ( c ^ 6 );
    if (a == 6)
        printf("***** M3ERMV08 - 03 ***** O K *****\n");
      else
        printf("***** M3ERMV08 - 03 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;

    a = b | 3 | ( c | 6 );
    if (a == 7)
        printf("***** M3ERMV08 - 04 ***** O K *****\n");
      else
        printf("***** M3ERMV08 - 04 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2,d = 3;

    a = b * c * ( d * 1 );
    if (a == 6)
        printf("***** M3ERMV08 - 05 ***** O K *****\n");
      else
        printf("***** M3ERMV08 - 05 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 3,d = 2;

    a = b & c & ( d & 6 );
    if (a == 0)
        printf("***** M3ERMV08 - 06 ***** O K *****\n");
      else
        printf("***** M3ERMV08 - 06 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 3,d = 2;

    a = b ^ c ^ ( d ^ 6 );
    if (a == 6)
        printf("***** M3ERMV08 - 07 ***** O K *****\n");
      else
        printf("***** M3ERMV08 - 07 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 3,d = 2;

    a = b | c | ( d | 6 );
    if (a == 7)
        printf("***** M3ERMV08 - 08 ***** O K *****\n");
      else
        printf("***** M3ERMV08 - 08 ***** N G *****\n");
  }
  printf("********** M3ERMV08 TEST  END  **********\n");
}



  struct fytag {int a;int b;}fyst;
  struct fytag2 {int a;int b;}fyst2;
int 
m3esad53 (void)
  {
printf("*** M3ESAD53 ** MK3 TEST FOR X_SAMDCK **** STARTED \n");
{
  int i=2;
  int *f();
  i=f<f;
  if(i==0)
    printf("*** M3ESAD53-01 *****     O    K     *****\n");
  else
    printf("*** M3ESAD53-01 *** N G ********** N G ***\n");
}
{
  int i=2;
  struct fytag *g();
  i=g<g;
  if(i==0)
    printf("*** M3ESAD53-02 *****     O    K     *****\n");
  else
    printf("*** M3ESAD53-02 *** N G ********** N G ***\n");
}
{
  int i=2;
  int h();
  i=h<h;
  if(i==0)
    printf("*** M3ESAD53-03 *****     O    K     *****\n");
  else
    printf("*** M3ESAD53-03 *** N G ********** N G ***\n");
}
{
  int i=2;
  struct fytag2 j();
  i=j<j;
  if(i==0)
    printf("*** M3ESAD53-04 *****     O    K     *****\n");
  else
    printf("*** M3ESAD53-04 *** N G ********** N G ***\n");
}
{
  int i=2,a=1;
  int * volatile p;
  int * volatile q;
  p=&a;
  q=&a;
  i=p<q;
  if(i==0)
    printf("*** M3ESAD53-05 *****     O    K     *****\n");
  else
    printf("*** M3ESAD53-05 *** N G ********** N G ***\n");
}
{
  int i=2,a=1;
  struct fytag * volatile p;
  struct fytag * volatile q;
  p=&fyst;
  q=&fyst;
  i=p<q;
  if(i==0)
    printf("*** M3ESAD53-06 *****     O    K     *****\n");
  else
    printf("*** M3ESAD53-06 *** N G ********** N G ***\n");
}
{
  int i=2,a=1;
  int * const p=&a;
  int * const q=&a;
  i=p<q;
  if(i==0)
    printf("*** M3ESAD53-07 *****     O    K     *****\n");
  else
    printf("*** M3ESAD53-07 *** N G ********** N G ***\n");
}
{
  int i=2,a=1;
  struct fytag * const p=&fyst;
  struct fytag * const q=&fyst;
  i=p<q;
  if(i==0)
    printf("*** M3ESAD53-08 *****     O    K     *****\n");
  else
    printf("*** M3ESAD53-08 *** N G ********** N G ***\n");
}
{
  int i=2;
  int volatile p=1;
  i=p<p;
  if(i==0)
    printf("*** M3ESAD53-09 *****     O    K     *****\n");
  else
    printf("*** M3ESAD53-09 *** N G ********** N G ***\n");
}
printf("*** M3ESAD53 ** MK3 TEST FOR X_SAMDCK **** ENDED \n");
  }
int *
f (void)
  {}
struct fytag *
g (void)
{
}
int 
h (void)
{}
struct fytag2 
j (void)
{}



 int id01;
 char cd01;
 short int sd01;
 unsigned int uid01;
 unsigned char ucd01;
 unsigned short int usd01;
 float fd01;
 double dd01;
 int 
mptest29 (void)
 {
    void mfnc01(),mfnc02(),mfnc03(),mfnc04(),mfnc05(),mfnc06();
    void mfnc07(),mfnc08();
    mfnc01();
    mfnc02();
    mfnc03();
    mfnc04();
    mfnc05();
    mfnc06();
    mfnc07();
    mfnc08();
 }
 void 
mfnc01 (void)
 {
      int  ia01,ia02,ia03,ia04,ia05;
      void mfnc011(int ia01,int ia02,int ia03,int ia04,int ia05);
      ia01=1;
      ia02=2;
      ia03=3;
      ia04=4;
      ia05=5;
      mfnc011(ia01,ia02,ia03,ia04,ia05);
      if(id01==1)
        printf("******* MFNC01 IA01            OK ****\n");
      else
        printf("******* MFNC01 IA01            NG ****\n");
      if(ia02==2)
        printf("******* MFNC01 IA02 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC01 IA05 REAL ARGUM NG ****\n");
      if(ia03==3)
        printf("******* MFNC01 IA03 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC01 IA03 REAL ARGUM NG ****\n");
      if(ia05==5)
        printf("******* MFNC01 IA05 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC01 IA05 REAL ARGUM NG ****\n");
 }
 void mfnc011(int ib01,int ib02,int ib03,int ib04,int ib05)
 {
      void mfnc0111(int ib04);
      int ic01,ic02;
      ic01=ib03;
      ib05=10;
      ib02=ib01+ic01;
      mfnc0111(ib04);
      ib03=ic01+2;
      ic02=ib05;
      id01=ib01;
      if(ic02==10)
        printf("******* MFNC011 IB05 CHECK     OK ****\n");
      else
        printf("******* MFNC011 IB05 CHECK     NG ****\n");
 }
 void mfnc0111(int ie04)
 {
      ie04=ie04+10;
      return;
 }
 void 
mfnc02 (void)
 {
      char ca01,ca02,ca03,ca04,ca05;
      void mfnc021(char ca01,char ca02,char ca03,char ca04,char ca05);
      ca01='a';
      ca02='b';
      ca03='c';
      ca04='d';
      ca05='e';
      mfnc021(ca01,ca02,ca03,ca04,ca05);
      if(cd01=='a')
        printf("******* MFNC02 CA01            OK ****\n");
      else
        printf("******* MFNC02 CA01            NG ****\n");
      if(ca02=='b')
        printf("******* MFNC02 CA02 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC02 CA02 REAL ARGUM NG ****\n");
      if(ca03=='c')
        printf("******* MFNC02 CA03 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC02 CA03 REAL ARGUM NG ****\n");
      if(ca05=='e')
        printf("******* MFNC02 CA05 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC02 CA05 REAL ARGUM NG ****\n");
 }
 void mfnc021(char cb01,char cb02,char cb03,char cb04,char cb05)
 {
      void mfnc0211(char cb04);
      char cc01;
      cb05=cb03;
      cb02=cb01;
      mfnc0211(cb04);
      cb03='g';
      cc01=cb05;
      cd01=cb01;
      if(cc01=='c')
        printf("******* MFNC021 CB05 CHECK     OK ****\n");
      else
        printf("******* MFNC021 CB05 CHECK     NG ****\n");
 }
 void mfnc0211(char ce04)
 {
      ce04='h';
      return;
 }
 void 
mfnc03 (void)
 {
      short int  sa01,sa02,sa03,sa04,sa05;
      void mfnc031(short int sa01,short int sa02,short int sa03,
                   short int sa04,short int sa05);
      sa01=1;
      sa02=2;
      sa03=3;
      sa04=4;
      sa05=5;
      mfnc031(sa01,sa02,sa03,sa04,sa05);
      if(sd01==1)
        printf("******* MFNC03 SA01            OK ****\n");
      else
        printf("******* MFNC03 SA01            NG ****\n");
      if(sa02==2)
        printf("******* MFNC03 SA02 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC03 SA05 REAL ARGUM NG ****\n");
      if(sa03==3)
        printf("******* MFNC01 SA03 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC01 SA03 REAL ARGUM NG ****\n");
      if(sa05==5)
        printf("******* MFNC01 SA05 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC01 SA05 REAL ARGUM NG ****\n");
 }
 void mfnc031(short int sb01,short int sb02,short int sb03,
              short int sb04,short int sb05)
 {
      void mfnc0311(short int sb04);
      short int sc01,sc02;
      sc01=sb03;
      sb05=10;
      sb02=sb01+sc01;
      mfnc0311(sb04);
      sb03=sc01+2;
      sc02=sb05;
      sd01=sb01;
      if(sc02==10)
        printf("******* MFNC031 SB05 CHECK     OK ****\n");
      else
        printf("******* MFNC031 SB05 CHECK     NG ****\n");
 }
 void mfnc0311(short int se04)
 {
      se04=se04+10;
      return;
 }
 void 
mfnc04 (void)
 {
      unsigned int  uia01,uia02,uia03,uia04,uia05;
      void mfnc041(unsigned int uia01,unsigned int uia02,
       unsigned int uia03,unsigned int uia04,unsigned int uia05);
      uia01=1;
      uia02=2;
      uia03=3;
      uia04=4;
      uia05=5;
      mfnc041(uia01,uia02,uia03,uia04,uia05);
      if(uid01==1)
        printf("******* MFNC04 UIA01           OK ****\n");
      else
        printf("******* MFNC04 UIA01           NG ****\n");
      if(uia02==2)
        printf("******* MFNC04 UIA02 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC04 UIA05 REAL ARGUM NG ****\n");
      if(uia03==3)
        printf("******* MFNC04 UIA03 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC04 UIA03 REAL ARGUM NG ****\n");
      if(uia05==5)
        printf("******* MFNC04 UIA05 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC01 UIA05 REAL ARGUM NG ****\n");
 }
 void mfnc041(unsigned int uib01,unsigned int uib02,
         unsigned int uib03,unsigned int uib04,unsigned int uib05)
 {
      void mfnc0411(unsigned int uib04);
      unsigned int uic01,uic02;
      uic01=uib03;
      uib05=10;
      uib02=uib01+uic01;
      mfnc0411(uib04);
      uib03=uic01+2;
      uic02=uib05;
      uid01=uib01;
      if(uic02==10)
        printf("******* MFNC041 UIB05 CHECK    OK ****\n");
      else
        printf("******* MFNC041 UIB05 CHECK    NG ****\n");
 }
 void mfnc0411(unsigned int uie04)
 {
      uie04=uie04+10;
      return;
 }
 void 
mfnc05 (void)
 {
      unsigned char uca01,uca02,uca03,uca04,uca05;
      void mfnc051(unsigned char uca01,unsigned char uca02,
      unsigned char uca03,unsigned char uca04,unsigned char uca05);
      uca01='a';
      uca02='b';
      uca03='c';
      uca04='d';
      uca05='e';
      mfnc051(uca01,uca02,uca03,uca04,uca05);
      if(ucd01=='a')
        printf("******* MFNC05 UCA01           OK ****\n");
      else
        printf("******* MFNC05 UCA01           NG ****\n");
      if(uca02=='b')
        printf("******* MFNC05 UCA02 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC05 UCA02 REAL ARGUM NG ****\n");
      if(uca03=='c')
        printf("******* MFNC05 UCA03 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC05 UCA03 REAL ARGUM NG ****\n");
      if(uca05=='e')
        printf("******* MFNC05 UCA05 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC05 UCA05 REAL ARGUM NG ****\n");
 }
 void mfnc051(unsigned char ucb01,unsigned char ucb02,
      unsigned char ucb03,unsigned char ucb04,unsigned char ucb05)
 {
      void mfnc0511(unsigned char ucb04);
      unsigned char ucc01;
      ucb05=ucb03;
      ucb02=ucb01;
      mfnc0511(ucb04);
      ucb03='g';
      ucc01=ucb05;
      ucd01=ucb01;
      if(ucc01=='c')
        printf("******* MFNC051 UCB05 CHECK    OK ****\n");
      else
        printf("******* MFNC051 UCB05 CHECK    NG ****\n");
 }
 void mfnc0511(unsigned char uce04)
 {
      uce04='h';
      return;
 }
 void 
mfnc06 (void)
 {
      unsigned short int usa01,usa02,usa03,usa04,usa05;
      void mfnc061(unsigned short int usa01,unsigned short int usa02,
      unsigned short int usa03,unsigned short int sa04,
      unsigned short int usa05);
      usa01=1;
      usa02=2;
      usa03=3;
      usa04=4;
      usa05=5;
      mfnc061(usa01,usa02,usa03,usa04,usa05);
      if(usd01==1)
        printf("******* MFNC06 USA01           OK ****\n");
      else
        printf("******* MFNC06 USA01           NG ****\n");
      if(usa02==2)
        printf("******* MFNC06 USA02 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC06 USA05 REAL ARGUM NG ****\n");
      if(usa03==3)
        printf("******* MFNC06 USA03 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC06 USA03 REAL ARGUM NG ****\n");
      if(usa05==5)
        printf("******* MFNC06 USA05 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC01 USA05 REAL ARGUM NG ****\n");
 }
 void mfnc061(unsigned short int usb01,unsigned short int usb02,
      unsigned short int usb03,unsigned short int usb04,
      unsigned short int usb05)
 {
      void mfnc0611(unsigned short int usb04);
      unsigned short int usc01,usc02;
      usc01=usb03;
      usb05=10;
      usb02=usb01+usc01;
      mfnc0611(usb04);
      usb03=usc01+2;
      usc02=usb05;
      usd01=usb01;
      if(usc02==10)
        printf("******* MFNC061 USB05 CHECK    OK ****\n");
      else
        printf("******* MFNC061 USB05 CHECK    NG ****\n");
 }
 void mfnc0611(unsigned short int use04)
 {
      use04=use04+10;
      return;
 }
 void 
mfnc07 (void)
 {
      float fa01,fa02,fa03,fa04,fa05;
      void mfnc071(float fa01,float fa02,float fa03,
                   float fa04,float fa05);
      fa01=1;
      fa02=2;
      fa03=3;
      fa04=4;
      fa05=5;
      mfnc071(fa01,fa02,fa03,fa04,fa05);
      if(fd01==1)
        printf("******* MFNC07 FA01            OK ****\n");
      else
        printf("******* MFNC07 FA01            NG*****\n");
      if(fa02==2)
        printf("******* MFNC07 FA02 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC07 FA05 REAL ARGUM NG ****\n");
      if(fa03==3)
        printf("******* MFNC07 FA03 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC07 FA03 REAL ARGUM NG ****\n");
      if(fa05==5)
        printf("******* MFNC07 FA05 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC07 FA05 REAL ARGUM NG ****\n");
 }
 void mfnc071(float fb01,float fb02,float fb03,float fb04,float fb05)
 {
      void mfnc0711(float fb04);
      float fc01,fc02;
      fc01=fb03;
      fb05=10;
      fb02=fb01+fc01;
      mfnc0711(fb04);
      fb03=fc01+2;
      fc02=fb05;
      fd01=fb01;
      if(fc02==10)
        printf("******* MFNC071 FB05 CHECK     OK ****\n");
      else
        printf("******* MFNC071 FB05 CHECK     NG ****\n");
 }
 void mfnc0711(float fe04)
 {
      fe04=fe04+10;
      return;
 }
 void 
mfnc08 (void)
 {
      double da01,da02,da03,da04,da05;
      void mfnc081(double da01,double da02,double da03,
                   double da04,double da05);
      da01=1;
      da02=2;
      da03=3;
      da04=4;
      da05=5;
      mfnc081(da01,da02,da03,da04,da05);
      if(dd01==1)
        printf("******* MFNC08 DA01            OK ****\n");
      else
        printf("******* MFNC08 DA01            NG ****\n");
      if(da02==2)
        printf("******* MFNC08 DA02 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC08 DA05 REAL ARGUM NG ****\n");
      if(da03==3)
        printf("******* MFNC08 DA03 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC08 DA03 REAL ARGUM NG ****\n");
      if(da05==5)
        printf("******* MFNC08 DA05 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC08 DA05 REAL ARGUM NG ****\n");
 }
 void mfnc081(double db01,double db02,double db03,
                   double db04,double db05)
 {
      void mfnc0811(double db04);
      double dc01,dc02;
      dc01=db03;
      db05=10;
      db02=db01+dc01;
      mfnc0811(db04);
      db03=dc01+2;
      dc02=db05;
      dd01=db01;
      if(dc02==10)
        printf("******* MFNC081 DB05 CHECK     OK ****\n");
      else
        printf("******* MFNC081 DB05 CHECK     NG ****\n");
 }
 void mfnc0811(double de04)
 {
      de04=de04+10;
      return;
 }





long int      eli1;
long int      eli2;

int 
scpa015 (void)
{
    long int     li1;
    long int     li2;
    long int     be1sub();

    printf("---- SCPA015 START ---- \n");
    eli1 = 2;    eli2 = eli1*5;
    li1 = 2;     li2 = li1*5;

    if ( be1sub(li1, li2) )
        printf ("     ***  OK  *** \n");
    else {
        printf ("     ???  NG  ??? \n");
        printf ("       ANS = %d, %d\n", li1, li2);
        printf ("       CAL = %d, %d\n", eli1, eli2);
    }

    printf("---- SCPA015  END  ---- \n");
}
long int 
be1sub (long int pli1, long int pli2)
{
    return (pli1==eli1 && pli2==eli2);
}




 static char be4o1[]={"**** ITEM1 OK ****"};
 static char be4n1[]={"**** ITEM1 NG ****"};
 int 
scpba01 (void) {
   int    a,b,z,be4fnc1();
   char   c[3],d[5];
   void   be4ok(),be4ng();
     a=0xa;
     z=1000;
     b=be4fnc1(z);
     memcpy(c,"aoh",3);
     memcpy(d,"12aoh",5);
     if(a==b)
       {
         be4ok(1);
       }
     else
       {
         be4ng(1);
       }
     if(memcmp(c,&d[2],3)==0)
       {
         be4ok(2);
       }
     else
       {
         be4ng(2);
       }
}
 int 
be4fnc1 (int a)
 {
     a=a/10;
     a=a-95;
     a=a*2;
     return (a);
 }
 void 
be4ok (int a)
 {
     if(a==1)
       {
           printf("%s\n",be4o1);
       }
     else
       {
           be4o1[9]='2';
           printf("%s\n",be4o1);
       }
 }
 void 
be4ng (int a)
 {
     if(a==1)
       {
           printf("%s\n",be4n1);
       }
     else
       {
           be4n1[4]='2';
           printf("%s\n",be4n1);
       }
 }

