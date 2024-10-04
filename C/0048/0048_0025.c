#include <stdio.h>
int m3mprd05 (void);
int m3mpcm01 (void);
int scpaln1 (void);
int m3ecas05 (void);
int scobe08 (void);
int mptest03 (void);
int scohdi3 (void);
int m3eptr01 (void);
int m3esad59 (void);

int main()
{

   printf("***  **** START ***\n");

   m3eptr01();  
   scohdi3();   
   mptest03();  
   scobe08();   
   m3ecas05();  
   scpaln1();   
   m3mpcm01();  
   m3esad59();  
   m3mprd05();  

   printf("***  ****  END  ***\n");

}



int 
m3eptr01 (void)
{
   int    *wk;

   printf("*** M3EPTR01 **  ** START ***\n");

   {
      int       *pa;
      int        ia = 1;
      static int ib[3] = { 0,1,2 };
      pa = ib;
      wk = pa + ia;

      if(*wk == 1)
          printf("*** M3EPTR01-01 *** O     K ***\n");
      else
          printf("*** M3EPTR01-01 **** N   G ****\n");
   }
   {
      static int arr1[3] = { 0,1,2 };
      int        id = 1;
      wk = arr1 + id;

      if(*wk == 1)
          printf("*** M3EPTR01-02 *** O     K ***\n");
      else
          printf("*** M3EPTR01-02 **** N   G ****\n");
   }
   {
      int        ie = 1;
      int       *pc;
      static int ig[3] = { 0,1,2 };
      int        ih = 5;
      pc = ig;
      wk = (ih,pc) + ie;

      if(*wk == 1)
          printf("*** M3EPTR01-03 *** O     K ***\n");
      else
          printf("*** M3EPTR01-03 **** N   G ****\n");
   }
   {
      int      ii = 1;
      struct tag {
                  int arr[3];
                } *pst,st1;
      pst = &st1;
      pst->arr[0] = 0;
      pst->arr[1] = 1;
      pst->arr[2] = 2;

      wk = pst->arr+ii;
      if(*wk == 1)
          printf("*** M3EPTR01-04 *** O     K ***\n");
      else
          printf("*** M3EPTR01-04 **** N   G ****\n");
   }
   {
      int      ij = 1;
      struct tag {
                  int arr1[3];
                } st2;
      st2.arr1[0] = 0;
      st2.arr1[1] = 1;
      st2.arr1[2] = 2;

      wk = st2.arr1+ij;
      if(*wk == 1)
          printf("*** M3EPTR01-05 *** O     K ***\n");
      else
          printf("*** M3EPTR01-05 **** N   G ****\n");
   }
   {
      int      ik = 1;
      int      arr2[5] = { 0,1,2,3,4 };

      wk = arr2+ik;
      if(*wk == 1)
          printf("*** M3EPTR01-06 *** O     K ***\n");
      else
          printf("*** M3EPTR01-06 **** N   G ****\n");
   }
   {
      int        il = 1;
      static int arr3[5] = { 0,1,2,3,4 };
      int       *ptr2;
      ptr2 = arr3;

      wk = ptr2+1+il;
      if(*wk == 2)
          printf("*** M3EPTR01-07 *** O     K ***\n");
      else
          printf("*** M3EPTR01-07 **** N   G ****\n");
   }
   {
      int        im = 1;
      static int arr4[5] = { 0,1,2,3,4 };
      int       *ptr3;
      ptr3 = &(arr4[3]);

      wk = ptr3-1+im;
      if(*wk == 3)
          printf("*** M3EPTR01-08 *** O     K ***\n");
      else
          printf("*** M3EPTR01-08 **** N   G ****\n");
   }
   {
      int       wk1;
      int       in=1;
      int      *ptr4;
      ptr4 = 0;
      wk1 = !ptr4 + in;

      if(wk1 == 2)
          printf("*** M3EPTR01-09 *** O     K ***\n");
      else
          printf("*** M3EPTR01-09 **** N   G ****\n");
   }
   {
      int        io=1;
      static int arr5[5] = { 0,1,2,3,4 };

      wk = &(arr5[1]) + io;
      if(*wk == 2)
          printf("*** M3EPTR01-10 *** O     K ***\n");
      else
          printf("*** M3EPTR01-10 **** N   G ****\n");
   }
   {
      int        ip=1;
      static int arr6[5] = { 0,1,2,3,4 };
      int      rrr=1,*qqq=&rrr,**ppp=&qqq;
      int      wk4=1,*wk3=&wk4,**wk2=&wk3;
      ppp = &(*ppp);
      *ppp = arr6;

      wk2 = &(*wk2);
      *wk2 = *ppp + ip;
      if(**wk2 == 1)
          printf("*** M3EPTR01-11 *** O     K ***\n");
      else
          printf("*** M3EPTR01-11 **** N   G ****\n");
   }
   printf("*** M3EPTR01 **  ** END ***\n");
}



   struct fe1tag2 {int s;}st2;
int 
m3esad59 (void)
  {
   printf("*** M3ESAD59 **  ** START ***\n");
{
   int i=1;
   int a=1;
   int *pq;
   int **pp,**qq;
   int **x;
   pq=&a;
   pp=&pq;
   qq=&pq;
   x=(a<i?pp:qq);
   if(**x==1)
     printf("*** M3ESAD59-01 *** O K ***\n");
   else
     printf("*** M3ESAD59-01 ***    N G    ***\n");
}
{
   int i=1;
   struct fe1tag {int a; int b;}st,*pq=&st,**qq=&pq,**pp=&pq,**x;

   st.a=2;
   x=(i==1?qq:pp);
   i=(&(**x))->a;
   if(i==2)
     printf("*** M3ESAD59-02 *** O K ***\n");
   else
     printf("*** M3ESAD59-02 ***    N G    ***\n");
}
{
   int i=1;
   int fe1f();
   int (*p)(),(*q)();
   p=fe1f;
   q=fe1f;
   i=((i==1)?p:q)();
   if(i==2)
     printf("*** M3ESAD59-03 *** O K ***\n");
   else
     printf("*** M3ESAD59-03 ***    N G    ***\n");
}
{
   int i=1;
   struct fe1tag2 fe1g(),(*p)(),(*q)(),*x();
   p=fe1g;
   q=fe1g;
  if((((i==1)?(*p):(*q))()).s==1)
     printf("*** M3ESAD59-04 *** O K ***\n");
   else
     printf("*** M3ESAD59-04 ***    N G    ***\n");
}
{
   int *x,a=2,b=3,i=1;
   int *p,*q;
   p=&a;
   q=&b;
   x=(i==1?p:q);
   if((*x)==2)
     printf("*** M3ESAD59-05 *** O K ***\n");
   else
     printf("*** M3ESAD59-05 ***    N G    ***\n");
}
{
   int i=1,a=1;
   struct fe1tag {int a;int b;}st,*p=&st,*q=&st,*x;
   x=(i==1?p:q);
   st.a=2;
   i=x->a;
   if(i==2)
     printf("*** M3ESAD59-06 *** O K ***\n");
   else
     printf("*** M3ESAD59-06 ***    N G    ***\n");
}
printf("*** M3ESAD59 ***  *** END ***\n");
  }
int 
fe1f (void)
{return (2);}
struct fe1tag2 
fe1g (void)
{ static struct fe1tag2 s={1};
return(s);
}

int 
m3ecas05 (void)
{
  short int              a = 0;
  char                   c   = 0x81;
  signed char            sc  = 0x81;
  unsigned char          usc = 0x81;
  short int              shi   = 1;
  signed short int       sshi  = 1;
  unsigned short int     usshi = 1;
  int                    i   = 1;
  signed int             si  = 1;
  unsigned int           usi = 1;
  long int               li   = 1;
  signed long int        sli  = 1;
  unsigned long int      usli = 1;
  int                   *p;
  enum etag { e1, e2, e3, e4 } etag;
  const int              ci = 1;
  volatile int           vi = 1;

  p = &i;
  etag = 1;



  a = ( short int ) c;
#ifdef S_CHAR
  if ( (a&0x0000ffff)==0x0000ff81 )
#else
  if ( (a&0x0000ffff)==0x00000081 )
#endif
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");
  a = 0;

  a = ( short int ) sc;
  if ( (a&0x0000ffff)==0x0000ff81 )
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");
  a = 0;

  a = ( short int ) usc;
  if ( (a&0x0000ffff)==0x00000081 )
    printf("TEST03 --> OK \n");
  else
    printf("TEST03 --> NG \n");
  a = 0;

  a = ( short int ) shi;
  if ( a==1 )
    printf("TEST04 --> OK \n");
  else
    printf("TEST04 --> NG \n");
  a = 0;

  a = ( short int ) sshi;
  if ( a==1 )
    printf("TEST05 --> OK \n");
  else
    printf("TEST05 --> NG \n");
  a = 0;

  a = ( short int ) usshi;
  if ( a==1 )
    printf("TEST06 --> OK \n");
  else
    printf("TEST06 --> NG \n");
  a = 0;

  a = ( short int ) i;
  if ( a==1 )
    printf("TEST07 --> OK \n");
  else
    printf("TEST07 --> NG \n");
  a = 0;

  a = ( short int ) si;
  if ( a==1 )
    printf("TEST08 --> OK \n");
  else
    printf("TEST08 --> NG \n");
  a = 0;

  a = ( short int ) usi;
  if ( a==1 )
    printf("TEST09 --> OK \n");
  else
    printf("TEST09 --> NG \n");
  a = 0;

  a = ( short int ) li;
  if ( a==1 )
    printf("TEST10 --> OK \n");
  else
    printf("TEST10 --> NG \n");
  a = 0;

  a = ( short int ) sli;
  if ( a==1 )
    printf("TEST11 --> OK \n");
  else
    printf("TEST11 --> NG \n");
  a = 0;

  a = ( short int ) usli;
  if ( a==1 )
    printf("TEST12 --> OK \n");
  else
    printf("TEST12 --> NG \n");
  a = 0;

  a = ( short int ) p;
  i = ( int ) p;
  if ( (a&0x0000ffff)==(i&0x0000ffff) )
    printf("TEST13 --> OK \n");
  else
    printf("TEST13 --> NG \n");
  a = 0;

  a = ( short int ) etag;
  if ( a==1 )
    printf("TEST14 --> OK \n");
  else
    printf("TEST14 --> NG \n");
  a = 0;

  a = ( short int ) ci;
  if ( a==1 )
    printf("TEST15 --> OK \n");
  else
    printf("TEST15 --> NG \n");
  a = 0;

  a = ( short int ) vi;
  if ( a==1 )
    printf("TEST16 --> OK \n");
  else
    printf("TEST16 --> NG \n");
  a = 0;

}



struct  mpt1 {
   int        a;
   char       b;
   struct mpt1 *tp;
};

struct  mpt1 mpt1a,mpt1b,mpt1c;
int 
mptest03 (void)
{
   int mpfnc11(char *);
   int mpfnc12(struct mpt1 *),init(int),chk(struct mpt1 *);
   char  cc;
   int   i,rtc;
   struct mpt1 *mpt1p;

   printf("\n***** MPTEST03 START *****\n");
   for( i=0 ; init(i) ; i++);
   for( mpt1p=&mpt1a ; mpt1p != 0 ; mpt1p = mpt1p->tp) {
      rtc = mpfnc12(mpt1p);
      if(rtc == -1) {
         mpfnc11("IN MAIN");
         goto l1;
      }
      rtc = chk(mpt1p);
   }
l1:
   if(rtc == 0){
     printf("***** MPTEST03 OK ***** \n");
   }
}

int init(int i)
{
   switch(i){
      case 0:
         mpt1a.a = 0;
         mpt1a.b ='A';
         mpt1a.tp = &mpt1b;
         break;
      case 1:
         mpt1b.a = 1;
         mpt1b.b = 'B';
         mpt1b.tp = &mpt1c;
         break;
      case 2:
         mpt1c.a = 2;
         mpt1c.b = 'C';
         mpt1c.tp = 0;
         break;
      default:
         return(0);
   }
   return(1);
}

int mpfnc12(struct mpt1 *tp)
{
   if(tp == 0)
      return(-1);
   switch(tp->a){
      case 0:
         if(tp->b != 'A')
            return(-1);
         tp->b = 'X';
         return(0);
      case 1:
         if(tp->b != 'B')
            return(-1);
         tp->b = 'Y';
         return(0);
      case 2:
         if(tp->b != 'C')
            return(-1);
         tp->b = 'Z';
         return(0);
      default:
         return(-1);
   }
}

int mpfnc11(char *str)
{
   printf("***** MPTEST03 NG *** %s ***** \n",str);
   return(-1);
}

int chk(struct mpt1 *ptr)
{
   static char rdata[3] = {'X','Y','Z'};

   if(ptr == 0)
      return(mpfnc11("in chk 1"));
   if(ptr->a >= 0 && ptr->a < 3){
      if(rdata[ptr->a] == ptr->b) {
         printf(" ** OK *** MPT1.A = %d *** \n",ptr->a);
         printf(" ** OK *** MPT1.B = %c *** \n",ptr->b);
         return(0);
      } else {
         printf("     *** MPT1.A = %d *** \n",ptr->a);
         printf("     *** MPT1.B = %c *** \n",ptr->b);
         return(mpfnc11("IN CHK 2"));
      }
   } else {
      return(mpfnc11("IN CHK 3"));
   }
   return(0);
}




 int   mpouti1,mpouti2;
 int 
m3mpcm01 (void)
 {
   int *pi;
   int ai,bi,ei,fi;
   ai=10;
   bi=20;
   ei=50;
   fi=60;
   pi=&ai;
   fi=*pi;
   *pi=15;
   ei=*pi;
   if(ei==fi)
   {
     printf("error of a-2 : ei = %d\n",ei);
   }
   else
   {
     if(ei!=15)
     {
       printf("error of a-2 : ei = %d\n",ei);
     }
     else
     {
       printf("OK OF A-2\n");
     }
   }
   ai=10;

   pi=&ai;
   fi=ai+bi;
   *pi=15;
   ei=ai+bi;
   if(ei==fi)
   {
     printf("error of c-2 : ei = %d\n",ei);
   }
   else
   {
     if(ei!=35)
     {
       printf("error of c-2 : ei = %d\n",ei);
     }
     else
     {
       printf("OK OF C-2\n");
     }
   }
   ai=10;

   pi=&ai;
   fi=bi+(*pi);
   ai=15;
   ei=bi+(*pi);
   if(ei==fi)
   {
     printf("error of b-2:ei = %d\n",ei);
   }
   else
   {
     if(ei!=35)
     {
       printf("error of b-2:ei = %d\n",ei);
     }
     else
     {
       printf("OK OF B-2\n");
     }
   }
   ai=10;

   pi=&ai;
   fi=bi+(*pi);
   pi=&bi;
   ei=bi+(*pi);
   if(ei==fi)
   {
     printf("error of d-2:ei = %d\n",ei);
   }
   else
   {
     if(ei!=40)
     {
       printf("error of d-2:ei = %d\n",ei);
     }
     else
     {
       printf("OK OF B-2\n");
     }
   }
   ai=10;
 }



int 
m3mprd05 (void) {
union beatag {
    int    mema;
    int    memb;
    char   memc[4];
    } var;
union beatag var2;
int a[10];
int x;
var.mema=5;
a[4]=5;
a[var.mema]=3;
var.memb=4;
x=a[var.mema];
a[1]=x;
if (a[1]==5) printf("M3MPRD03 OK\n");
else
printf("M3MPRD03 NG\n");
}


struct be1t {
           unsigned int fs:2;
         } be1s1,*be1p;

int 
scohdi3 (void)
{
    int        i,i1,i2                                        ;

    printf("********** SCOHDI3 STARTED *********\n");

    i = 3                                                     ;
    be1p = &be1s1                                             ;


    be1s1.fs = i                                              ;



    if ( be1p->fs == 3)
        printf("********** SCOHDI3 -01 OK **********\n")  ;
    else
        printf("********** SCOHDI3 -01 NG **********\n")  ;



    i1 = be1s1.fs                                             ;
    i2 = be1p->fs                                             ;



    if ( (i1==3)&&(i2==3) )
        printf("********** SCOHDI3 -02 OK **********\n")  ;
    else
        printf("********** SCOHDI3 -02 NG **********\n")  ;

    printf("********** SCOHDI3 ENDED  **********\n")  ;

}

int 
scobe08 (void)
{
   struct tag
   {
      signed char        b1 : 1;
      signed short int   b2 : 1;
      signed long  int   b3 : 1;
      unsigned char      b4 : 1;
      unsigned short int b5 : 1;
      unsigned long  int b6 : 1;
   } a;

   struct tag *x;

   signed long long int     c1;
   unsigned long long int   c2;

   printf (" ****** \n") ;
   a.b1 = 1;
   c1 = a.b1;
   if (c1==-1)
      printf ("BLOAD9(I8,I1) OK\n");
   else
      printf ("BLOAD9(I8,I1) NG\n");
   c2 = a.b1;
   if (c2==0xffffffffffffffffLL)
      printf ("BLOAD9(U8,I1) OK\n");
   else
      printf ("BLOAD9(U8,I1) NG\n");

   a.b2 = 1;
   c1 = a.b2;
   if (c1==-1)
      printf ("BLOAD9(I8,I2) OK\n");
   else
      printf ("BLOAD9(I8,I2) NG\n");
   c2 = a.b2;
   if (c2==0xffffffffffffffffLL)
      printf ("BLOAD9(U8,I2) OK\n");
   else
      printf ("BLOAD9(U8,I2) NG\n");

   a.b3 = 1;
   c1 = a.b3;
   if (c1==-1)
      printf ("BLOAD9(I8,I4) OK\n");
   else
      printf ("BLOAD9(I8,I4) NG\n");
   c2 = a.b3;
   if (c2==0xffffffffffffffffLL)
      printf ("BLOAD9(U8,I4) OK\n");
   else
      printf ("BLOAD9(U8,I4) NG\n");

   a.b4 = 1;
   c1 = a.b4;
   if (c1==1)
      printf ("BLOAD10(I8,U1) OK\n");
   else
      printf ("BLOAD10(I8,U1) NG\n");
   c2 = a.b4;
   if (c2==1)
      printf ("BLOAD10(U8,U1) OK\n");
   else
      printf ("BLOAD10(U8,U1) NG\n");

   a.b5 = 1;
   c1 = a.b5;
   if (c1==1)
      printf ("BLOAD10(I8,U2) OK\n");
   else
      printf ("BLOAD10(I8,U2) NG\n");
   c2 = a.b5;
   if (c2==1)
      printf ("BLOAD10(U8,U2) OK\n");
   else
      printf ("BLOAD10(U8,U2) NG\n");

   a.b6 = 1;
   c1 = a.b6;
   if (c1==1)
      printf ("BLOAD10(I8,U4) OK\n");
   else
      printf ("BLOAD10(I8,U4) NG\n");
   c2 = a.b6;
   if (c2==1)
      printf ("BLOAD10(U8,U4) OK\n");
   else
      printf ("BLOAD10(U8,U4) NG\n");


   x = &a;

   printf(" ****** \n");
   x->b1 = 1;
   c1 = x->b1;
   if (c1==-1)
      printf ("BLOAD9(I8,I1) OK\n");
   else
      printf ("BLOAD9(I8,I1) NG\n");
   c2 = x->b1;
   if (c2==0xffffffffffffffffLL)
      printf ("BLOAD9(U8,I1) OK\n");
   else
      printf ("BLOAD9(U8,I1) NG\n");

   x->b2 = 1;
   c1 = x->b2;
   if (c1==-1)
      printf ("BLOAD9(I8,I2) OK\n");
   else
      printf ("BLOAD9(I8,I2) NG\n");
   c2 = x->b2;
   if (c2==0xffffffffffffffffLL)
      printf ("BLOAD9(U8,I2) OK\n");
   else
      printf ("BLOAD9(U8,I2) NG\n");

   x->b3 = 1;
   c1 = x->b3;
   if (c1==-1)
      printf ("BLOAD9(I8,I4) OK\n");
   else
      printf ("BLOAD9(I8,I4) NG\n");
   c2 = x->b3;
   if (c2==0xffffffffffffffffLL)
      printf ("BLOAD9(U8,I4) OK\n");
   else
      printf ("BLOAD9(U8,I4) NG\n");

   x->b4 = 1;
   c1 = x->b4;
   if (c1==1)
      printf ("BLOAD10(I8,U1) OK\n");
   else
      printf ("BLOAD10(I8,U1) NG\n");
   c2 = x->b4;
   if (c2==1)
      printf ("BLOAD10(U8,U1) OK\n");
   else
      printf ("BLOAD10(U8,U1) NG\n");

   x->b5 = 1;
   c1 = x->b5;
   if (c1==1)
      printf ("BLOAD10(I8,U2) OK\n");
   else
      printf ("BLOAD10(I8,U2) NG\n");
   c2 = x->b5;
   if (c2==1)
      printf ("BLOAD10(U8,U2) OK\n");
   else
      printf ("BLOAD10(U8,U2) NG\n");

   x->b6 = 1;
   c1 = x->b6;
   if (c1==1)
      printf ("BLOAD10(I8,U4) OK\n");
   else
      printf ("BLOAD10(I8,U4) NG\n");
   c2 = x->b6;
   if (c2==1)
      printf ("BLOAD10(U8,U4) OK\n");
   else
      printf ("BLOAD10(U8,U4) NG\n");
}



struct beatag1
 {
   int a;
   long double b[260];
 };
 struct beatag1 st1;

struct beatag2
 {
   int x;
   long double y[520];
 };
 struct beatag2 sst2;

int 
scpaln1 (void)
{
  printf("********** SCPALN1 START **********\n");

  st1.b[255]= 1.0;
  st1.b[256]= 2.0;
  st1.b[257]= 3.0;
  if(st1.b[255] == 1.0)
     printf("********** SCPALN1-01 OK **********\n");
  else
     printf("********** SCPALN1-01 NG **********\n");
  if(st1.b[256] == 2.0)
     printf("********** SCPALN1-02 OK **********\n");
  else
     printf("********** SCPALN1-02 NG **********\n");
  if(st1.b[257] == 3.0)
     printf("********** SCPALN1-03 OK **********\n");
  else
     printf("********** SCPALN1-03 NG **********\n");

  sst2.y[511]= 1;
  sst2.y[512]= 2;
  sst2.y[513]= 3;
  if(sst2.y[511] == 1  )
     printf("********** SCPALN1-04 OK **********\n");
  else
     printf("********** SCPALN1-04 NG **********\n");
  if(sst2.y[512] == 2  )
     printf("********** SCPALN1-05 OK **********\n");
  else
     printf("********** SCPALN1-05 NG **********\n");
  if(sst2.y[513] == 3  )
     printf("********** SCPALN1-06 OK **********\n");
  else
     printf("********** SCPALN1-06 NG **********\n");
  printf("********** SCPALN1 END   **********\n");

}

