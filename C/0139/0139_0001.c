#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <string.h>
int befun(int e, int f, int g);
int befunc();
int scobe03();
int scobe02();
int scobe01();
int mptest02();
int mptest01();
int m3ecas02();
int m3ecas01();
int m3easg01();
int m3eain01();
int main()
{
   m3eain01();  
   m3easg01();  
   m3ecas01();  
   m3ecas02();  
   mptest01();  
   mptest02();  
   scobe01();   
   scobe02();   
   scobe03();   

exit (0);
}
int m3eain01()
{
    printf("*** M3EAIN01 TEST FOR E_AINIEX *** STARTED ***\n");

     {
     int   ia = { 1 };
     if(ia == 1)
         printf("*** M3EAIN01-01 *** O   K ***\n");
     else
         printf("*** M3EAIN01-01 ***  ERR  ***\n");
     }
     {
     static int   ib[] = { { 2147483647 } };
     if(ib[0] == 2147483647)
         printf("*** M3EAIN01-02 *** O   K ***\n");
     else
         printf("*** M3EAIN01-02 ***  ERR  ***\n");
     }
     {
     static int   ic[][1] = { { {255} } };
     if(ic[0][0] == 255)
         printf("*** M3EAIN01-03 *** O   K ***\n");
     else
         printf("*** M3EAIN01-03 ***  ERR  ***\n");
     }
     {
     enum tag1 { ena,enb,enc } en1;

     int   id = {  ena  };
     if(id == ena)
         printf("*** M3EAIN01-04 *** O   K ***\n");
     else
         printf("*** M3EAIN01-04 ***  ERR  ***\n");
     }
     {
     enum tag2 { ena,enb,enc } en2;

     static int   ie[] = { { enb } };
     if(ie[0] == enb)
         printf("*** M3EAIN01-05 *** O   K ***\n");
     else
         printf("*** M3EAIN01-05 ***  ERR  ***\n");
     }
     {
     enum tag3 { ena,enb,enc } en3;

     static int   ig[][1][1][1][1][1]
                       = { { { { { { { enc } } } } } } };
     if(ig[0][0][0][0][0][0] == enc)
         printf("*** M3EAIN01-06 *** O   K ***\n");
     else
         printf("*** M3EAIN01-06 ***  ERR  ***\n");
     }
     {
     static int   ih[]  = { 1,11 };
     if(ih[0]  ==  1)
         printf("*** M3EAIN01-07 *** O   K ***\n");
     else
         printf("*** M3EAIN01-07 ***  ERR  ***\n");
     }
     {
     static int   ii[][1]  = { {1},{11},{111} };
     if(ii[1][0]  == 11)
         printf("*** M3EAIN01-08 *** O   K ***\n");
     else
         printf("*** M3EAIN01-08 ***  ERR  ***\n");
     }
     {
     static int ij[][4]= { { {1},{11},{111},{1111} } };
     if(ij[0][3]  == 1111)
         printf("*** M3EAIN01-09 *** O   K ***\n");
     else
         printf("*** M3EAIN01-09 ***  ERR  ***\n");
     }
     {
     enum tag4 { ena,enb,enc } en4;

     static int   ik[] = {  ena,enb  };
     if(ik[0] == ena)
         printf("*** M3EAIN01-10 *** O   K ***\n");
     else
         printf("*** M3EAIN01-10 ***  ERR  ***\n");
     }
     {
     enum tag5 { ena,enb,enc } en5;

     static int   ie[][3] = { { ena,enc,enb } };
     if(ie[0][2] == enb)
         printf("*** M3EAIN01-11 *** O   K ***\n");
     else
         printf("*** M3EAIN01-11 ***  ERR  ***\n");
     }
     {
     enum tag6 { ena,enb,enc } en6;

     static int   ig[][1][1][1][1][3]
      =  { { { { { { {ena},{enb},{enc} } } } } } };
     if(ig[0][0][0][0][0][2] == enc)
         printf("*** M3EAIN01-12 *** O   K ***\n");
     else
         printf("*** M3EAIN01-12 ***  ERR  ***\n");
     }
    printf("*** M3EAIN01 TEST FOR E_AINIEX *** ENDED ***\n");
}

int m3easg01()
  {
  static int a[]={1,2,3};
  enum day{mon,tue,wed,thu,fri=10,sat,SUN};
  enum day e0,e1,e2;
  e0=mon;
  e1=tue;
  e2=fri;
printf("* M3EASG01 ***      MK3  TEST     ****** STARTED *\n");
{
  int  i= 1;
  char c;
  c=i;
  if(c==1)
    printf("*** M3EASG01-01 *** O K ***\n");
  else
    printf("*** M3EASG01-01 ***   N   G   ***\n");
}
{
  int  i;
  char c;
  i=e0;
  c=e2;
  if(i==0 && c==10)
    printf("*** M3EASG01-02 *** O K ***\n");
  else
    printf("*** M3EASG01-02 ***   N   G   ***\n");
}
{
  int  i=1;
  e2=i ;
  if(e2==1)
    printf("*** M3EASG01-03 *** O K ***\n");
  else
    printf("*** M3EASG01-03 ***   N   G   ***\n");
}
{
  e2=e0;
  if(e2==0 && e0==0 && e1==1)
    printf("*** M3EASG01-04 *** O K ***\n");
  else
    printf("*** M3EASG01-04 ***   N   G   ***\n");
}
{
  int i=1,*p1=&i,*p2;
  p2=&i;
  if(*p1==1 && *p2==1)
    printf("*** M3EASG01-05 *** O K ***\n");
  else
    printf("*** M3EASG01-05 ***   N   G   ***\n");
}
{
  int *p1;
  p1=0  ;
  if(p1==0)
    printf("*** M3EASG01-06 *** O K ***\n");
  else
    printf("*** M3EASG01-06 ***   N   G   ***\n");
}
{
  void *v;
  int f1();
  v = 0;
  v = f1;
  if ( v != 0 )
    printf("*** M3EASG02-07 *** O K ***\n");
  else
    printf("*** M3EASG02-07 ***   N   G   ***\n");
}
{
  int  i=1,*ip1=&i,*ip2;
  char c=1,*cp1=&c,*cp2;
  ip2=ip1;
  cp2=cp1;
  if ( cp1==cp2 )
    printf("*** M3EASG02-08 *** O K ***\n");
  else
    printf("*** M3EASG02-08 ***   N   G   ***\n");
}
{
  void *v;
  int i=1,*p=&i;
  v=0;
  v=p;
  if ( v!=0 )
    printf("*** M3EASG02-09 *** O K ***\n");
  else
    printf("*** M3EASG02-09 ***   N   G   ***\n");
}
{
  int   i = 1;
  int  *p1;
  void *v=0;
  p1=&i;
  p1=v;
  if ( p1==0 )
    printf("*** M3EASG02-10 *** O K ***\n");
  else
    printf("*** M3EASG02-10 ***   N   G   ***\n");
}
printf("* M3EASG01 ***      MK3  TEST     ****** ENDED ***\n");
}
int f1() { }
int f2() { }
int m3ecas01()
{
  void                   func();
  char                   c;
  signed char            sc;
  unsigned char          usc;
  short int              shi;
  signed short int       sshi;
  unsigned short int     usshi;
  int                    i;
  signed int             si;
  unsigned int           usi;
  long int               li;
  signed long int        sli;
  unsigned long int      usli;
  int                   *p;
  struct stag {
                 int s1;
                 int s2;
              } stag;
  union utag  {
                 struct { char c1;
                           char c2; } ust;
                 short int shi1;
              } utag;
  enum etag   { e1, e2, e3, e4 } etag;
  const int              ci = 1;
  volatile int           vi;





  printf("TEST01 --> OK \n");

  ( void ) c;
  printf("TEST02 --> OK \n");

  ( void ) sc;
  printf("TEST03 --> OK \n");

  ( void ) usc;
  printf("TEST04 --> OK \n");

  ( void ) shi;
  printf("TEST05 --> OK \n");

  ( void ) sshi;
  printf("TEST06 --> OK \n");

  ( void ) usshi;
  printf("TEST07 --> OK \n");

  ( void ) i;
  printf("TEST08 --> OK \n");

  ( void ) si;
  printf("TEST09 --> OK \n");

  ( void ) usi;
  printf("TEST10 --> OK \n");

  ( void ) li;
  printf("TEST11 --> OK \n");

  ( void ) sli;
  printf("TEST12 --> OK \n");

  ( void ) usli;
  printf("TEST13 --> OK \n");

  ( void ) p;
  printf("TEST14 --> OK \n");

  ( void ) stag;
  printf("TEST15 --> OK \n");

  ( void ) utag;
  printf("TEST16 --> OK \n");

  ( void ) etag;
  printf("TEST17 --> OK \n");

  ( void ) ci;
  printf("TEST18 --> OK \n");

  printf("TEST19 --> OK \n");

}

void func()
{
}
int m3ecas02()
{
  char                   a = 0;
  char                   c   = 0x81;
  signed char            sc  = 0x81;
  unsigned char          usc = 0x81;
  short int              shi   = 129;
  signed short int       sshi  = 129;
  unsigned short int     usshi = 129;
  int                    i   = 129;
  signed int             si  = 129;
  unsigned int           usi = 129;
  long int               li   = 129;
  signed long int        sli  = 129;
  unsigned long int      usli = 129;
  int                   *p;
  enum etag { e1, e2, e3, e4 } etag;
  const int              ci = 129;
  volatile int           vi = 129;

  p = &i;
  etag = 129;




  a = ( char ) c;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");
  a = 0;

  a = ( char ) sc;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");
  a = 0  ;

  a = ( char ) usc;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST03 --> OK \n");
  else
    printf("TEST03 --> NG \n");
  a = 0  ;

  a = ( char ) shi;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST04 --> OK \n");
  else
    printf("TEST04 --> NG \n");
  a = 0  ;

  a = ( char ) sshi;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST05 --> OK \n");
  else
    printf("TEST05 --> NG \n");
  a = 0  ;

  a = ( char ) usshi;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST06 --> OK \n");
  else
    printf("TEST06 --> NG \n");
  a = 0  ;

  a = ( char ) i;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST07 --> OK \n");
  else
    printf("TEST07 --> NG \n");
  a = 0  ;

  a = ( char ) si;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST08 --> OK \n");
  else
    printf("TEST08 --> NG \n");
  a = 0  ;

  a = ( char ) usi;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST09 --> OK \n");
  else
    printf("TEST09 --> NG \n");
  a = 0  ;

  a = ( char ) li;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST10 --> OK \n");
  else
    printf("TEST10 --> NG \n");
  a = 0  ;

  a = ( char ) sli;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST11 --> OK \n");
  else
    printf("TEST11 --> NG \n");
  a = 0  ;

  a = ( char ) usli;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST12 --> OK \n");
  else
    printf("TEST12 --> NG \n");
  a = 0  ;

  a = ( char ) p;
  i = ( int ) p;
  if ( (a&0x000000ff)==(i&0x000000ff) )
    printf("TEST13 --> OK \n");
  else
    printf("TEST13 --> NG \n");
  a = 0  ;

  a = ( char ) etag;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST14 --> OK \n");
  else
    printf("TEST14 --> NG \n");
  a = 0  ;

  a = ( char ) ci;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST15 --> OK \n");
  else
    printf("TEST15 --> NG \n");
  a = 0  ;

  a = ( char ) vi;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST16 --> OK \n");
  else
    printf("TEST16 --> NG \n");
  a = 0  ;

}

int mpx;
static int mpy;
struct bt{
  unsigned int ba:2;
  unsigned int bb:3;
  unsigned int bc:4;
};
struct t {
  int c;
  int d;
};
int mptest01()
{
  int a;
  int b;
  static int i;
  int *p;
  struct t *p1,s,ss;
  struct bt pbt1;
  extern struct bt *pbt;
  extern char str,*pc;
  void ii(),mpf(),mpf1(struct bt*,int);

  printf("\n***** MPTEST01 START *****\n");
  ii();
l1:
  b=1;
  p=&b;
  i=0;
  a=b+1;
l2:
  if (a<10)
  {
   a=*p+1+a;
   goto l2;
  }
  mpx=1;
  mpy=2;
  p=&ss.c;
l3:
  mpf();
  i=i+4;
  s.c=1;
  s.d=mpy;
  p1=&s;
  s.c=p1->d;
  mpy=*p;
  s.d=mpy;
  mpf1(pbt,1);
l4:
  pbt1.ba=pbt->ba;
  pbt1.bb=pbt->bb;
  if(pbt->ba!=0){
    mpx=i+p1->c;
    pbt1.bc=mpx;
  }
  pbt->bc=pbt1.bc;
  mpf1(&pbt1,2);
  printf("***** MPTEST01 END *****\n");
}
void mpf()
{
  printf("  IN  ''F'' \n");
  return;
}

 struct bt *pbt,ppbt;
 char str,*pc;

void ii()
{
  printf("  IN  ''II'' \n");
  pbt=&ppbt;
  if(pbt->ba - ppbt.ba) printf("** NG <1> **\n");
  if(pbt->bb - ppbt.bb) printf("** NG <2> **\n");
  if(pbt->bc - ppbt.bc) printf("** NG <3> **\n");
  return;
}
void mpf1(pp,j)
  struct bt *pp;
  int j;
{
  static int i=0;
  static char *ncc="NG",cc[]="OK";
         char *c;
  printf("  IN  ''F1'' \n");
  if(++i==j) c=cc;
  else       c=ncc;
  printf("  ** %s **\n",c);
}
int     ga;
int mptest02()
{
  int   a,b,c,d,i;
  int   mpfff(),(*mpfp)(),ii;

  mpfp=mpfff;i=0;
  ii=(*mpfp)(i);

  ga=1;
  printf("START MPTEST02\n");
  i=0;
  while(i<1)
  {
    b=ga-1;
    c=ga+1;
    a=b+c;         
    if(i<1)
    {
      i=befunc();   
      d=b+c;      
    }
  }
  if(a==2&&d==2)
    printf("      MPTEST02 OK\n");
  else {
    printf("      MPTEST02 NG A=%d(0)\n",a);
    printf("                  D=%d(0)\n",d);
  }
  printf("END   MPTEST02\n");
}
int befunc()
{
  return 1;
}
int mpfff()
{
  return 1;
}

int scobe01()
{
    static char a[10] = "123456789";
    static char x[10] = "123456789";
    char b[10];
    int  c;

    memset (b, 0x00, 9);
    if (b[0]==0 && b[1]==0 && b[2]==0 &&
        b[3]==0 && b[4]==0 && b[5]==0 &&
        b[6]==0 && b[7]==0 && b[8]==0)
      printf ("***** MEMSET OK *****\n");
    else
      printf ("***** MEMSET NG *****\n");

    memcpy (b, a, 9);
    if (b[0]==a[0] && b[1]==a[1] && b[2]==a[2] &&
        b[3]==a[3] && b[4]==a[4] && b[5]==a[5] &&
        b[6]==a[6] && b[7]==a[7] && b[8]==a[8])
      printf ("***** MEMCPY OK *****\n");
    else
      printf ("***** MEMCPY NG *****\n");


    c = memcmp (a, b, 9);
    if (c==0)
      printf ("***** MEMCMP OK *****\n");
    else
      printf ("***** MEMCMP NG *****\n");

    if (*(char *)memchr (a, 0x37, 9)=='7')
      printf ("***** MEMCHR OK *****\n");
    else
      printf ("***** MEMCHR NG *****\n");

    a[9] = 0x00;
    b[9] = 0x00;
    x[9] = 0x00;

    c = strcmp (a, x);
    if (c==0)
      printf ("***** STRCMP OK *****\n");
    else
      printf ("***** STPCMP NG *****\n");

    strcpy (b, x);
    if (b[0]==x[0] && b[1]==x[1] && b[2]==x[2] &&
        b[3]==x[3] && b[4]==x[4] && b[5]==x[5] &&
        b[6]==x[6] && b[7]==x[7] && b[8]==x[8])
      printf ("***** STRCPY OK *****\n");
    else
      printf ("***** STRCPY NG *****\n");

    c = strlen (a);
    if (c==9)
      printf ("***** STRLEN OK *****\n");
    else
      printf ("***** STRLEN NG *****\n");
}

int scobe02()
{
    int a=1;
    int b=2;
    int c=3;
    int d;

    d = befun(a,b,c);

    if (d==6)
       printf ("***** OK ******\n");
    else
       printf ("***** NG ******\n");
}

int befun(e,f,g)
int e;
int f;
int g;
{
    return(e+f+g);
}

int scobe03()
{
   struct tag
   {
      signed char        b1 : 1;
      signed short int   b2 : 1;
      signed long int    b3 : 1;
      unsigned char      b4 : 1;
      unsigned short int b5 : 1;
      unsigned long int b6 : 1;
   } a;

   struct tag *x;


   a.b1 = (signed char)1;
   a.b2 = (signed char)1;
   a.b3 = (signed char)1;
   a.b4 = (signed char)1;
   a.b5 = (signed char)1;
   a.b6 = (signed char)1;

   if (a.b1==-1)
      printf ("BSTORE1(I1,I1) OK\n");
   else
      printf ("BSTORE1(I1,I1) NG\n");
   if (a.b2==-1)
      printf ("BSTORE1(I2,I1) OK\n");
   else
      printf ("BSTORE1(I2,I1) NG\n");
   if (a.b3==-1)
      printf ("BSTORE1(I4,I1) OK\n");
   else
      printf ("BSTORE1(I4,I1) NG\n");
   if (a.b4==1)
      printf ("BSTORE1(U1,I1) OK\n");
   else
      printf ("BSTORE1(U1,I1) NG\n");
   if (a.b5==1)
      printf ("BSTORE1(U2,I1) OK\n");
   else
      printf ("BSTORE1(U2,I1) NG\n");
   if (a.b6==1)
      printf ("BSTORE1(U4,I1) OK\n");
   else
      printf ("BSTORE1(U4,I1) NG\n");


   a.b1 = (unsigned char)1;
   a.b2 = (unsigned char)1;
   a.b3 = (unsigned char)1;
   a.b4 = (unsigned char)1;
   a.b5 = (unsigned char)1;
   a.b6 = (unsigned char)1;

   if (a.b1==-1)
      printf ("BSTORE1(I1,U1) OK\n");
   else
      printf ("BSTORE1(I1,U1) NG\n");
   if (a.b2==-1)
      printf ("BSTORE1(I2,U1) OK\n");
   else
      printf ("BSTORE1(I2,U1) NG\n");
   if (a.b3==-1)
      printf ("BSTORE1(I4,U1) OK\n");
   else
      printf ("BSTORE1(I4,U1) NG\n");
   if (a.b4==1)
      printf ("BSTORE1(U1,U1) OK\n");
   else
      printf ("BSTORE1(U1,U1) NG\n");
   if (a.b5==1)
      printf ("BSTORE1(U2,U1) OK\n");
   else
      printf ("BSTORE1(U2,U1) NG\n");
   if (a.b6==1)
      printf ("BSTORE1(U4,U1) OK\n");
   else
      printf ("BSTORE1(U4,U1) NG\n");


   x = &a;

   x->b1 = (signed char)1;
   x->b2 = (signed char)1;
   x->b3 = (signed char)1;
   x->b4 = (signed char)1;
   x->b5 = (signed char)1;
   x->b6 = (signed char)1;

   if (x->b1==-1)
      printf ("BSTORE1(I1,I1) OK\n");
   else
      printf ("BSTORE1(I1,I1) NG\n");
   if (x->b2==-1)
      printf ("BSTORE1(I2,I1) OK\n");
   else
      printf ("BSTORE1(I2,I1) NG\n");
   if (x->b3==-1)
      printf ("BSTORE1(I4,I1) OK\n");
   else
      printf ("BSTORE1(I4,I1) NG\n");
   if (x->b4==1)
      printf ("BSTORE1(U1,I1) OK\n");
   else
      printf ("BSTORE1(U1,I1) NG\n");
   if (x->b5==1)
      printf ("BSTORE1(U2,I1) OK\n");
   else
      printf ("BSTORE1(U2,I1) NG\n");
   if (x->b6==1)
      printf ("BSTORE1(U4,I1) OK\n");
   else
      printf ("BSTORE1(U4,I1) NG\n");


   x->b1 = (unsigned char)1;
   x->b2 = (unsigned char)1;
   x->b3 = (unsigned char)1;
   x->b4 = (unsigned char)1;
   x->b5 = (unsigned char)1;
   x->b6 = (unsigned char)1;

   if (x->b1==-1)
      printf ("BSTORE1(I1,U1) OK\n");
   else
      printf ("BSTORE1(I1,U1) NG\n");
   if (x->b2==-1)
      printf ("BSTORE1(I2,U1) OK\n");
   else
      printf ("BSTORE1(I2,U1) NG\n");
   if (x->b3==-1)
      printf ("BSTORE1(I4,U1) OK\n");
   else
      printf ("BSTORE1(I4,U1) NG\n");
   if (x->b4==1)
      printf ("BSTORE1(U1,U1) OK\n");
   else
      printf ("BSTORE1(U1,U1) NG\n");
   if (x->b5==1)
      printf ("BSTORE1(U2,U1) OK\n");
   else
      printf ("BSTORE1(U2,U1) NG\n");
   if (x->b6==1)
      printf ("BSTORE1(U4,U1) OK\n");
   else
      printf ("BSTORE1(U4,U1) NG\n");
}
