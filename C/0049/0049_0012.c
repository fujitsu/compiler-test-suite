#include <stdio.h>
int get_int(int a);

struct t {
   int a;
   int b;
 } q;
union u {
   int a;
   unsigned int b;
 } r;
int dpmk2018() { 
  int p,   sub0(),sub00();
  struct t sub1(),xxx,sub2( );
  union u  sub3(),yyy,sub4( );
  p  =sub0( );
  if (p== -1) printf("**dpmk2018-(1)** OK\n");
  else        printf("**dpmk2018-(1)** NG p=%d\n",p);
  p  =sub00( );
  if (p== -1) printf("**dpmk2018-(2)** OK\n");
  else        printf("**dpmk2018-(2)** NG p=%d\n",p);
  xxx=sub1(p);
  if (xxx.a== -1) 
              printf("**dpmk2018-(3)** OK\n");
  else        printf("**dpmk2018-(3)** NG xxx.a=%d\n",xxx.a);
  q=sub2(p);
  if (q.b== -1) 
              printf("**dpmk2018-(4)** OK\n");
  else        printf("**dpmk2018-(4)** NG q.b=%d\n",q.b);
  yyy=sub3(p);
  if (yyy.a== 10) 
              printf("**dpmk2018-(5)** OK\n");
  else        printf("**dpmk2018-(5)** NG yyy.a=%d\n",yyy.a);
  r=sub4(p);
  if (r.b==-1) 
              printf("**dpmk2018-(6)** OK\n");
  else        printf("**dpmk2018-(6)** NG r.b=%d\n",r.b);
}
int sub0( ) { return -1;}
int sub00( ) { int a; a=-1;return a;}
struct t sub1(p ) int p; {
  struct t z;
  z.a=p  ;
  z.b=10;
  return(z);
}
struct t sub2(p ) int p; {
  q.b=p;
  return(q);
}
union u sub3(p ) int p; {
  union u z;
  z.a=p  ;
  z.b=10;
  return(z);
}
union u sub4(p ) int p; {
  r.b=p;
  return(r);
}

#define ZERO 0.0

int estreg18()
{
  int i, j;
  double a[50], b[50];
  double p=ZERO, q=ZERO;

  for (i=0; i<50; i++) {
    a[i] = (double)i/(double)5.0;
    b[i] = (double)i/(double)20.0;
  }

#pragma clang loop unroll_count(15)
  for (i=0; i<50; i++) {
    p = p + a[i];
  }

  for (i=0; i<50; i++) {
    q = q + b[i];
  }

  printf("sum1 = %lf\n", p);
  printf("sum2 = %lf\n", q);
}


#define INT_MAX  2147483647 
#define INT_MIN  -INT_MAX-1

int reduction18()
{
  int a = 0;
  int s[50], i;

#pragma clang loop unroll_count(15)
  for (i=0; i<50; i++) {
    switch(i%5) {
    case 0: case 3:
      s[i] = INT_MAX;
      break;
    case 1: case 4:
      s[i] = INT_MIN+1;
      break;
    default:
      s[i] = INT_MAX/10;
      break;
    }
  }

  for (i=0; i<50; i++) {
    a = a + s[i];
  }

  printf("a = %d\n", a);

  if (a == (INT_MAX/10)*10)
    printf("*** ok ***\n");
  else
    printf("*** ng ***\n");
}

int comb18()
{
  int foo;

  foo = get_int (-1);

  foo >>= 1;
  foo <<= 1;
  foo >>= 20;
  foo <<= 20;

  if (foo != ~0xfffff)
    {
      printf(" ### NG ### %d\n",foo);
    }else{
      printf(" ### OK ###\n");
    }
}
int get_int(a)
int a;
{
  return a;
}

void  sub22(int *,int *, int *, int *, int *, int *);
int if_18()
{
  int i,j1,j2,j3,j4,j5,k;
  int ze=0,s=0;
  sub22(&k,&j1,&j2,&j3,&j4,&j5);
#pragma clang loop unroll_count(15)
  for ( i=0 ; i<k ; i++) {
    if ( i != 0 ) {
      if (j1) {
        if (j2) {
          if ( ze > i ) s += 1; 
          if ( ze <= i ) s += 1; 
          if ( ze == i ) s += 1;
          if ( ze <= i ) s += 1; 
          if ( ze < i ) s += 1; 
	  if ( ze != i ) s += 1; 
        }
      }
    }
  }
  printf("s=%d\n",s);
}
void  sub22(pk,pj1,pj2,pj3,pj4,pj5)
int *pk;
int *pj1;
int *pj2;
int *pj3;
int *pj4;
int *pj5;
{
  *pk = 10;
  *pj1 = 100 ;
  *pj2 = 200 ;
  *pj3 = 300 ;
  *pj4 = 400 ;
  *pj5 = 500 ;
}

void fatal_error (void);
int rng_18()
{
  int i;
  i = 0;
  while (i <= 9)
    {
      if (i <= -20) fatal_error ();
      if (i <= -19) fatal_error ();
      if (i <= -18) fatal_error ();
      if (i <= -17) fatal_error ();
      if (i <= -16) fatal_error ();
      if (i <= -15) fatal_error ();
      if (i <= -14) fatal_error ();
      if (i <= -13) fatal_error ();
      if (i <= -12) fatal_error ();
      if (i <= -11) fatal_error ();
      if (i <= -10) fatal_error ();
      if (i <= -9) fatal_error ();
      if (i <= -8) fatal_error ();
      if (i <= -7) fatal_error ();
      if (i <= -6) fatal_error ();
      if (i <= -5) fatal_error ();
      if (i <= -4) fatal_error ();
      if (i <= -3) fatal_error ();
      if (i <= -2) fatal_error ();
      if (i <= -1) fatal_error ();
      i++;
    }
  if (i != 10)
    fatal_error ();
  else
    printf("OK\n");
}
void fatal_error ()
{
  printf("NG\n");
}

#include  <stdio.h>

int scobe18()
{
   static long int a[6]={ 1,1,1,1,1,1 };
   static float    b[2]={ 1.0,1.0 };

   long int c;
   long int d;
   double      e;
   long double f;

   c = a[0] <  2;
   if (c==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   c = a[1] <= 1;
   if (c==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   c = a[2] == 1;
   if (c==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   c = a[3] >  0;
   if (c==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   c = a[4] >= 1;
   if (c==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   c = a[5] != 0;
   if (c==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");

      if (a[0]< 2)
         goto y1;
      else
         printf ("***** ng *****\n");
   x1:
      if (a[1]<=1)
         goto y2;
      else
         printf ("***** ng *****\n");
   x2:
      if (a[2]==1)
         goto y3;
      else
         printf ("***** ng *****\n");
   x3:
      if (a[3]> 0)
         goto y4;
      else
         printf ("***** ng *****\n");
   x4:
      if (a[4]>=1)
         goto y5;
      else
         printf ("***** ng *****\n");
   x5:
      if (a[5]!=0)
         goto y6;
      else
         printf ("***** ng *****\n");
         goto end;

   y1:
      printf ("***** ok *****\n");
      goto x1;
   y2:
      printf ("***** ok *****\n");
      goto x2;
   y3:
      printf ("***** ok *****\n");
      goto x3;
   y4:
      printf ("***** ok *****\n");
      goto x4;
   y5:
      printf ("***** ok *****\n");
      goto x5;
   y6:
      printf ("***** ok *****\n");

   end:
      printf ("***** end *****\n");
}

#include  <stdio.h>
struct dtag {
   int *i[10];
   }dst;
struct ctag {
   struct dtag dst;
   }cst;
struct btag {
   struct ctag cst;
   }bst;
struct atag {
   struct btag bst;
   }ast;
struct tag {
   struct atag ast;
   }st;
int i;
int scosc18()
{
    void sub18(),sub28(),sub38(),sub48(),sub58();

    for(i=0; i<=9; i++){
      sub18(&st);
      if(*(st.ast.bst.cst.dst.i[0])!=i)
      {
        printf("ERROR OCCURS\n");
        printf("ERROR NO = %d",i);
        printf("SURE NUM = %d\n",*(st.ast.bst.cst.dst.i[0]));
        return 0;
      }
    }
    printf("****** SCOSC18 *** O      K ****\n");
}
void sub18(p)
  struct tag *p;
{
   sub28(&p->ast);
}
void sub28(p)
  struct atag *p;
{
   sub38(&p->bst);
}
void sub38(p)
  struct btag *p;
{
   sub48(&p->cst);
}
void sub48(p)
  struct ctag *p;
{
   sub58(&p->dst);
}
void sub58(p)
  struct dtag *p;
{
   p->i[0] = &i;
}

int url018 ()
{
  struct tag
    {
      int a;
      int b;
      int c;
    }
  r, s;
  int i;
  int sum = 0;
  printf("***** unroll018 ***** unroll 1 never 0 not 0\n");
  r.a = 1;
  r.b = 1;
  r.c = 1;
  for (r.a = 0; r.a < 10; r.a++)
    {
      for (i = 0; i < 10; i++)
	{
	  s = r;
	  sum = sum + s.a;
	}
    }
  if (sum == 450)
    printf ("ok\n");
  else
    printf ("ng 450=%d\n", 450);
  printf("***** unroll018 ***** end\n");
}

int result_chk(r00,
                   c00,f00,l00,d00,x00,s00,h00,i00
                  ,c01,f01,l01,d01,x01,s01,h01,i01
                  ,c02,f02,l02,d02,x02,s02,h02,i02
                  ,c03,f03,l03,d03,x03,s03,h03,i03
                  ,c04,f04,l04,d04,x04,s04,h04,i04
                  ,c05,f05,l05,d05,x05,s05,h05,i05
                  ,c06,f06,l06,d06,x06,s06,h06,i06
                  ,c07,f07,l07,d07,x07,s07,h07,i07
                  ,c08,f08,l08,d08,x08,s08,h08,i08) 
long   r00;
float  f00,f01,f02,f03,f04,f05,f06,f07,f08;
double d00,d01,d02,d03,d04,d05,d06,d07,d08;
long
double x00,x01,x02,x03,x04,x05,x06,x07,x08;

int    l00,l01,l02,l03,l04,l05,l06,l07,l08;
long
int    i00,i01,i02,i03,i04,i05,i06,i07,i08;

int    h00,h01,h02,h03,h04,h05,h06,h07,h08;
char   c00,c01,c02,c03,c04,c05,c06,c07,c08;
short
int    s00,s01,s02,s03,s04,s05,s06,s07,s08;
{
  if (r00==      (  c00+f00+l00+d00+x00+s00+h00+i00
                  + c01+f01+l01+d01+x01+s01+h01+i01
                  + c02+f02+l02+d02+x02+s02+h02+i02
                  + c03+f03+l03+d03+x03+s03+h03+i03
                  + c04+f04+l04+d04+x04+s04+h04+i04
                  + c05+f05+l05+d05+x05+s05+h05+i05
                  + c06+f06+l06+d06+x06+s06+h06+i06
                  + c07+f07+l07+d07+x07+s07+h07+i07
                  + c08+f08+l08+d08+x08+s08+h08+i08) )
    return 1;
  else 
    return 0;
}  
int result_chkm(
                   c00,f00,l00,d00,x00,s00,h00,i00
                  ,c01,f01,l01,d01,x01,s01,h01,i01
                  ,c02,f02,l02,d02,x02,s02,h02,i02
                  ,c03,f03,l03,d03,x03,s03,h03,i03
                  ,c04,f04,l04,d04,x04,s04,h04,i04
                  ,c05,f05,l05,d05,x05,s05,h05,i05
                  ,c06,f06,l06,d06,x06,s06,h06,i06
                  ,c07,f07,l07,d07,x07,s07,h07,i07
                  ,c08,f08,l08,d08,x08,s08,h08,i08) 
float  f00,f01,f02,f03,f04,f05,f06,f07,f08;
double d00,d01,d02,d03,d04,d05,d06,d07,d08;
long
double x00,x01,x02,x03,x04,x05,x06,x07,x08;

int    l00,l01,l02,l03,l04,l05,l06,l07,l08;
long
int    i00,i01,i02,i03,i04,i05,i06,i07,i08;

int    h00,h01,h02,h03,h04,h05,h06,h07,h08;
char   c00,c01,c02,c03,c04,c05,c06,c07,c08;
short
int    s00,s01,s02,s03,s04,s05,s06,s07,s08;
{
   return(          c00*f00*l00*d00*x00*s00*h00*i00
                  * c01*f01*l01*d01*x01*s01*h01*i01
                  * c02*f02*l02*d02*x02*s02*h02*i02
                  * c03*f03*l03*d03*x03*s03*h03*i03
                  * c04*f04*l04*d04*x04*s04*h04*i04
                  * c05*f05*l05*d05*x05*s05*h05*i05
                  * c06*f06*l06*d06*x06*s06*h06*i06
                  * c07*f07*l07*d07*x07*s07*h07*i07
                  * c08*f08*l08*d08*x08*s08*h08*i08) ;
}  
int comk3118(){
float  f00[9],f01[9],f02[9],f03[9],f04[9],f05[9],f06[9],f07[9],f08[9];
double d00[9],d01[9],d02[9],d03[9],d04[9],d05[9],d06[9],d07[9],d08[9];
long
double x00[9],x01[9],x02[9],x03[9],x04[9],x05[9],x06[9],x07[9],x08[9];

int    l00[9],l01[9],l02[9],l03[9],l04[9],l05[9],l06[9],l07[9],l08[9];
long
int    i00[9],i01[9],i02[9],i03[9],i04[9],i05[9],i06[9],i07[9],i08[9];
short
int    s00[9],s01[9],s02[9],s03[9],s04[9],s05[9],s06[9],s07[9],s08[9];
char   c00[9],c01[9],c02[9],c03[9],c04[9],c05[9],c06[9],c07[9],c08[9];

int    h00[9],h01[9],h02[9],h03[9],h04[9],h05[9],h06[9],h07[9],h08[9];
long i,result,resultm;
long volatile r00[9];

#pragma clang loop unroll_count(3)
 for (i=0;i < 9;i++)  {
     f00[i]=h00[i]=d00[i]=x00[i]=l00[i]=i00[i]=s00[i]=c00[i]=1;
     f01[i]=h01[i]=d01[i]=x01[i]=l01[i]=i01[i]=s01[i]=c01[i]=1;
     f02[i]=h02[i]=d02[i]=x02[i]=l02[i]=i02[i]=s02[i]=c02[i]=1;
     f03[i]=h03[i]=d03[i]=x03[i]=l03[i]=i03[i]=s03[i]=c03[i]=1;
     f04[i]=h04[i]=d04[i]=x04[i]=l04[i]=i04[i]=s04[i]=c04[i]=1;
     f05[i]=h05[i]=d05[i]=x05[i]=l05[i]=i05[i]=s05[i]=c05[i]=1;
     f06[i]=h06[i]=d06[i]=x06[i]=l06[i]=i06[i]=s06[i]=c06[i]=1;
     f07[i]=h07[i]=d07[i]=x07[i]=l07[i]=i07[i]=s07[i]=c07[i]=1;
     f08[i]=h08[i]=d08[i]=x08[i]=l08[i]=i08[i]=s08[i]=c08[i]=1;
  r00[i]=  f00[i]+f01[i]+f02[i]+f03[i]+f04[i]+f05[i]+f06[i]+f07[i]+f08[i]
         + h00[i]+h01[i]+h02[i]+h03[i]+h04[i]+h05[i]+h06[i]+h07[i]+h08[i]
         + d00[i]+d01[i]+d02[i]+d03[i]+d04[i]+d05[i]+d06[i]+d07[i]+d08[i]
         + x00[i]+x01[i]+x02[i]+x03[i]+x04[i]+x05[i]+x06[i]+x07[i]+x08[i]
         + i00[i]+i01[i]+i02[i]+i03[i]+i04[i]+i05[i]+i06[i]+i07[i]+i08[i]
         + s00[i]+s01[i]+s02[i]+s03[i]+s04[i]+s05[i]+s06[i]+s07[i]+s08[i]
         + l00[i]+l01[i]+l02[i]+l03[i]+l04[i]+l05[i]+l06[i]+l07[i]+l08[i]
         + c00[i]+c01[i]+c02[i]+c03[i]+c04[i]+c05[i]+c06[i]+c07[i]+c08[i];
   result=
   result_chk( r00[i]
                  ,c00[i],f00[i],l00[i],d00[i],x00[i],s00[i],h00[i],i00[i]
                  ,c01[i],f01[i],l01[i],d01[i],x01[i],s01[i],h01[i],i01[i]
                  ,c02[i],f02[i],l02[i],d02[i],x02[i],s02[i],h02[i],i02[i]
                  ,c03[i],f03[i],l03[i],d03[i],x03[i],s03[i],h03[i],i03[i]
                  ,c04[i],f04[i],l04[i],d04[i],x04[i],s04[i],h04[i],i04[i]
                  ,c05[i],f05[i],l05[i],d05[i],x05[i],s05[i],h05[i],i05[i]
                  ,c06[i],f06[i],l06[i],d06[i],x06[i],s06[i],h06[i],i06[i]
                  ,c07[i],f07[i],l07[i],d07[i],x07[i],s07[i],h07[i],i07[i]
                  ,c08[i],f08[i],l08[i],d08[i],x08[i],s08[i],h08[i],i08[i]);
   resultm=
   result_chkm(
                   c00[i],f00[i],l00[i],d00[i],x00[i],s00[i],h00[i],i00[i]
                  ,c01[i],f01[i],l01[i],d01[i],x01[i],s01[i],h01[i],i01[i]
                  ,c02[i],f02[i],l02[i],d02[i],x02[i],s02[i],h02[i],i02[i]
                  ,c03[i],f03[i],l03[i],d03[i],x03[i],s03[i],h03[i],i03[i]
                  ,c04[i],f04[i],l04[i],d04[i],x04[i],s04[i],h04[i],i04[i]
                  ,c05[i],f05[i],l05[i],d05[i],x05[i],s05[i],h05[i],i05[i]
                  ,c06[i],f06[i],l06[i],d06[i],x06[i],s06[i],h06[i],i06[i]
                  ,c07[i],f07[i],l07[i],d07[i],x07[i],s07[i],h07[i],i07[i]
                  ,c08[i],f08[i],l08[i],d08[i],x08[i],s08[i],h08[i],i08[i]);
   if (result==resultm) 
      printf ("** comk3118 (%d) ** OK\n",i+1);
   else {
      printf ("** comk3118 (%d) ** NG  ",i+1);
      printf("%d\n",(long)r00[i]);
   }
  }
}
int main( ) {
  dpmk2018( );
  estreg18( );
  reduction18( );
  comb18( );
  if_18( );
  rng_18( );
  scobe18( );
  comk3118( );
  scosc18( );
  url018( );
}
