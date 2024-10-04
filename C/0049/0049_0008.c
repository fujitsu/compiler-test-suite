
#include <stdio.h>
int sub(int a, int b, int c, int d, int n);
int dpmk2012(){
  struct t {
           signed   char      b01:1;
           unsigned char      b02:2;
           signed   short int b03:3;
           unsigned short int b04:4;
           signed   int       b05:5;
           unsigned int       b06:6;
  } x;
  struct s {
           signed   char      b01:8;
           unsigned char      b02:8;
           signed   short int b03:16;
           unsigned short int b04:16;
           signed   int       b05:32;
           unsigned int       b06:32;
  } y;
  char      i1;
  short int i2;
  int       i4;
             x.b01=1;
             x.b02=1;
             x.b03=1;
             x.b04=1;
             x.b05=1;
             x.b06=1;
  i1=x.b01;  
             if (i1) printf("**dpmk2012-(01)** OK\n");
             else    printf("**dpmk2012-(01)** NG i1=%.1x\n",i1);
  i1=x.b02; 
             if (i1) printf("**dpmk2012-(02)** OK i1=%.1x\n",i1);
             else    printf("**dpmk2012-(02)** NG i1=%.1x\n",i1);
  i1=x.b03;
             if (i1) printf("**dpmk2012-(03)** OK i1=%.1x\n",i1);
             else    printf("**dpmk2012-(03)** NG i1=%.1x\n",i1);
  i1=x.b04;
             if (i1) printf("**dpmk2012-(04)** OK i1=%.1x\n",i1);
             else    printf("**dpmk2012-(04)** NG i1=%.1x\n",i1);
  i1=x.b05;  
             if (i1) printf("**dpmk2012-(05)** OK i1=%.1x\n",i1);
             else    printf("**dpmk2012-(05)** NG i1=%.1x\n",i1);
  i1=x.b06; 
             if (i1) printf("**dpmk2012-(06)** OK i1=%.1x\n",i1);
             else    printf("**dpmk2012-(06)** NG i1=%.1x\n",i1);
  i2=x.b01;  
             if (i2) printf("**dpmk2012-(07)** OK\n");
             else    printf("**dpmk2012-(07)** NG i2=%.4x\n",i2);
  i2=x.b02;
             if (i2) printf("**dpmk2012-(08)** OK i2=%.4x\n",i2);
             else    printf("**dpmk2012-(08)** NG i2=%.4x\n",i2);
  i2=x.b03;
             if (i2) printf("**dpmk2012-(09)** OK i2=%.4x\n",i2);
             else    printf("**dpmk2012-(09)** NG i2=%.4x\n",i2);
  i2=x.b04;
             if (i2) printf("**dpmk2012-(10)** OK i2=%.4x\n",i2);
             else    printf("**dpmk2012-(10)** NG i2=%.4x\n",i2);
  i2=x.b05;  
             if (i2) printf("**dpmk2012-(11)** OK i2=%.4x\n",i2);
             else    printf("**dpmk2012-(11)** NG i2=%.4x\n",i2);
  i2=x.b06; 
             if (i2) printf("**dpmk2012-(12)** OK i2=%.4x\n",i2);
             else    printf("**dpmk2012-(12)** NG i2=%.4x\n",i2);
  i4=x.b01;  
             if (i4) printf("**dpmk2012-(13)** OK\n",i4);
             else    printf("**dpmk2012-(13)** NG i4=%.8x\n",i4);
  i4=x.b02;
             if (i4) printf("**dpmk2012-(14)** OK i4=%.8x\n",i4);
             else    printf("**dpmk2012-(14)** NG i4=%.8x\n",i4);
  i4=x.b03;
             if (i4) printf("**dpmk2012-(15)** OK i4=%.8x\n",i4);
             else    printf("**dpmk2012-(15)** NG i4=%.8x\n",i4);
  i4=x.b04;
             if (i4) printf("**dpmk2012-(16)** OK i4=%.8x\n",i4);
             else    printf("**dpmk2012-(16)** NG i4=%.8x\n",i4);
  i4=x.b05; 
             if (i4) printf("**dpmk2012-(17)** OK i4=%.8x\n",i4);
             else    printf("**dpmk2012-(17)** NG i4=%.8x\n",i4);
  i4=x.b06;  
             if (i4) printf("**dpmk2012-(18)** OK i4=%.8x\n",i4);
             else    printf("**dpmk2012-(18)** NG i4=%.8x\n",i4);
  
             y.b01=0;
             y.b02=0;
             y.b05=0;
             y.b06=0;
             y.b03=1;
             y.b04=1;
  i1=y.b01;  
             if (i1) printf("**dpmk2012-(19)** NG i1=%.1x\n",i1);
             else    printf("**dpmk2012-(19)** OK i1=%.1x\n",i1);
  i1=y.b02;  
             if (i1) printf("**dpmk2012-(20)** NG i1=%.1x\n",i1);
             else    printf("**dpmk2012-(20)** OK i1=%.1x\n",i1);
  i2=y.b03; 
             if (i2) printf("**dpmk2012-(21)** OK i2=%.4x\n",i2);
             else    printf("**dpmk2012-(21)** NG i2=%.4x\n",i2);
  i2=y.b04;  
             if (i2) printf("**dpmk2012-(22)** OK i2=%.4x\n",i2);
             else    printf("**dpmk2012-(22)** NG i2=%.4x\n",i2);
  i4=y.b05; 
             if (i4) printf("**dpmk2012-(23)** NG i4=%.8x\n",i4);
             else    printf("**dpmk2012-(23)** OK i4=%.8x\n",i4);
  i4=y.b06;  
             if (i4) printf("**dpmk2012-(24)** NG i4=%.8x\n",i4);
             else    printf("**dpmk2012-(24)** OK i4=%.8x\n",i4);
}

#include  <stdio.h>

 static int aaa[5]={1,2,3,4,5};
 struct st {
        int sti;
        char stc;
     };

  int mptest12()
 {
#ifdef __STDC__
     int func1( int *i );
#else
     int func1();
#endif
     struct st stfunc();
  
     static int bbb[5]={0,1,2,3,4};
     struct st sss;
     int i;
     sss.sti=0;
     sss.stc='a';
     sss = stfunc(sss,1);
     if((sss.sti!=1)||(sss.stc!='b')) {
        printf(" *** SSS - (1) NG *** SSS.STI=%d, SSS.STC=%c\n",
               sss.sti,sss.stc);
     } else {
        printf(" *** SSS - (1) OK *** \n");
     }
     if(!func1(bbb))
        printf(" *** BBB - OK ***\n");
     else{
        printf(" *** BBB - NG ***\n");
        for(i=0;i<5;printf("     BBB(%d)=%d,",i,bbb[i++]));
     }
     printf("\n ***** MPTEST12 END *****\n");
 }
  int func1(ccc)
    int *ccc;
 {
 
    int i=0;
    for( ; i<5 ; i++,ccc++) *ccc=*ccc+1;
    for(i=4 ; i>=0 ; i--)
       if(*(--ccc) != aaa[i]) return(1);
    return(0);
 }
 struct st stfunc(s,i)
    struct st s;
    int       i;
 {
    s.sti += i;
    s.stc += i;
    return(s);
 }

#define R (double)0.0
#define O1 (double)0.10
#define OO1 (double)0.010
#define OOOO1 (double)0.00010
#define OOOOO1 (double)0.000010
#define ANS1 (float)43.5
#define ANS2 (float)4.35
#define ANS3 (float)0.435
#define ANS4 (float)0.00435
#define ANS5 (float)0.000435

int reduction12()
{
  int i;
  double b=R, c=R, d=R, e=R, f=R;
  float  bb, cc, dd, ee, ff;
  int N=30;
  double a[30];
 
  for ( i = 0; i < N; i++ )
    a[i] = (double)i / (double)10.0;

  
  for ( i = 0; i < N; i++ ) {
    b = b + a[i];
    c = c + a[i]*O1;
    d = d + a[i]*OO1;
    e = e + a[i]*OOOO1;
    f = f + a[i]*OOOOO1;
  }

  bb = (float)b;
  cc = (float)c;
  dd = (float)d;
  ee = (float)e;
  ff = (float)f;

  printf( "bb = %f\n", bb );
  printf( "cc = %f\n", cc );
  printf( "dd = %f\n", dd );
  printf( "ee = %f\n", ee );
  printf( "ff = %f\n", ff );

  if ( bb == ANS1 ) {
    printf( "***** OK *****\n" );
  }
  else {
    printf( "***** NG *****\n" );
  }

  if ( cc == ANS2 ) {
    printf( "***** OK *****\n" );
  }
  else {
    printf( "***** NG *****\n" );
  }

  if ( dd == ANS3 ) {
    printf( "***** OK *****\n" );
  }
  else {
    printf( "***** NG *****\n" );
  }

  if ( ee == ANS4 ) {
    printf( "***** OK *****\n" );
  }
  else {
    printf( "***** NG *****\n" );
  }

  if ( ff == ANS5 ) {
    printf( "***** OK *****\n" );
  }
  else {
    printf( "***** NG *****\n" );
  }
}

#include  <stdio.h>

int scobe12()
{
   struct tag
   {
      unsigned char          b1 : 3;
      unsigned short int     b2 : 3;
      unsigned long int      b3 : 3;
   } ;

   struct tag a = { 1,1,1 };

   char          c1;
   short int     c2;
   long int      c3;

   c1 = a.b1;
   if (c1==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   c1 = a.b2;
   if (c1==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   c1 = a.b3;
   if (c1==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   c2 = a.b1;
   if (c2==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   c2 = a.b2;
   if (c2==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   c2 = a.b3;
   if (c2==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   c3 = a.b1;
   if (c3==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   c3 = a.b2;
   if (c3==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   c3 = a.b3;
   if (c3==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
}

#include <setjmp.h>
long int z=0xffff0000;
int comk3112 ( ) {
volatile   long int x=0xff00ff00;
  jmp_buf env;
  if (setjmp(env)==0) goto sub1;
    if (x==0xff000000) printf("comk3112 ok1\n");
    else                         printf("comk3112 ng1\n");
  if (setjmp(env)==0) goto sub2;
    if (x==0x00ff0000) printf("comk3112 ok2\n");
    else                         printf("comk3112 ng2\n");
  if (setjmp(env)==0) goto sub3;
    if (x==0xffff0000) printf("comk3112 ok3\n");
    else                         printf("comk3112 ng3\n");
  return 0;

sub1: x &= z;
     
     
     
     
      longjmp(env,1);
sub2: x ^= z;
     
     
     
     
      longjmp(env,1);
sub3: x |= z;
     
     
     
     
      longjmp(env,1);
}

 
struct str {
             signed char            si1;
             short int              si2;
             int                    si4;
           };
 

long long int          funcl1();
unsigned long long int funcl2();
long double            funcl3();
struct str             funcl4();
 
int snitr12 ()
{

signed char            li1=0;
short int              li2=2;
int                    li4=3;
 

struct str  stra = { 0,2,3 };
struct str  strb;
 
int iresult;
printf(" SNITR12 \n");
 

iresult=funcl1(li1,li2,li4);
if(iresult==6)
  printf(" (1) OK  %d \n",iresult);
else
  printf(" (1) NG  %d \n",iresult);
 

iresult=funcl2(li1,li2,li4);
if(iresult==6)
  printf(" (2) OK  %d \n",iresult);
else
  printf(" (2) NG  %d \n",iresult);
 

iresult=funcl3(li1,li2,li4);
if(iresult==6)
  printf(" (3) OK  %d \n",iresult);
else
  printf(" (3) NG  %d \n",iresult);
 

strb=funcl4(stra);
iresult=strb.si1+strb.si2+strb.si4;
if(iresult==6)
  printf(" (4) OK  %d \n",iresult);
else
  printf(" (4) NG  %d \n",iresult);
 
}
 
long long int funcl1(wi1,wi2,wi4)
                     signed char  wi1;
                     short int    wi2;
                     int          wi4;
{
  printf(" FUNCL1 ENTERED : WI1 =  %d \n",wi1);
  if(wi1==0)
    return(funcl1(1,wi2,wi4));
  else
    return(wi1+wi2+wi4);
}
 
unsigned long long int funcl2(xi1,xi2,xi4)
                              signed char  xi1;
                              short int    xi2;
                              int          xi4;
{
  printf(" FUNCL2 ENTERED : XI1 =  %d \n",xi1);
  if(xi1==1)
    return(xi1+xi2+xi4);
  else
    return(funcl2(1,xi2,xi4));
}
 
long double funcl3(yi1,yi2,yi4)
                   signed char  yi1;
                   short int    yi2;
                   int          yi4;
{
  printf(" FUNCL3 ENTERED : YI1 =  %d \n",yi1);
  if(yi1==1)
    return(yi1+yi2+yi4);
  else
    return(funcl3(1,yi2,yi4));
}
 
struct str funcl4(zstr)
                  struct str zstr;
{
  printf(" FUNCL4 ENTERED : SI1 =  %d \n", zstr.si1);
  if(zstr.si1==0)
    { zstr.si1=1; return(funcl4(zstr)); }
  else
    return(zstr);
}
  
#include  <stdlib.h>                    
#include  <stdio.h>                     
#include  <string.h>                    
#include  <locale.h>                    
int samp12()                                  
  {                                    
    FILE     *fp0401;                
    static char *csp401="cafss12.test01",
                                        
                *csp402="w",            
                *csp403="r";            
    static int id001;                   
    setlocale(LC_COLLATE,"C");    
    {                                   
      typedef  char         character;  
      static   struct       sta0401 {   
                 int        is401;      
                 character *csp404;     
                 }ss401;                
      auto     struct       sta0403 {   
                 int        ia401;      
                 character *cap401;     
                 } sa401;               
      static   char        *csp405 = "ZYXWVUTSRQPONMLKJIHG",
                                        
                           *csp406 = "FEDCBA",
                                        
                           *csp407 = "ABCDEFGHIJKLMNOPQRST",
                                        
                          csa401[32767] = "ZYXWVUTSRQPONMLKJIHG",
                                        
                          csa402[21];   
      for (id001 = 0 ; id001 <= 1637 ; id001++)  {
        strcat(csa401,csp405);          
      };                                
      strcat(csa401,csp406);            
      ss401.csp404 = &csa401[0];        
      fp0401   = fopen(csp401,csp402);  
      sa401.ia401 = fputs(csp407,fp0401);
                                        
      fclose(fp0401);                   
      fp0401   = fopen(csp401,csp403);  
      sa401.cap401 = fgets(&csa402[0],21,fp0401);
                                        
                                        
      ss401.is401  = strcoll(ss401.csp404,sa401.cap401);
                                        
       fclose(fp0401);
       remove(csp401);
     }                                   
 
 
 
    {                                  
      static   union    uta0501  {     
                 int    is501;          
                 int    is502;          
               } us501;                
     static     union    uta0502  {     
                 char  *cap501;         
                 char  *cap502;         
               } ua501;                
      static   char    *cspa501[1],   
                        csa501[2] = "&",
                                        
                        csa502[2];    
      static   int      is503;          
      ua501.cap501 = &csa501[0];
      printf("ua501.cap501 = %s \n ",ua501.cap501);
      printf("csa501 = %s \n",csa501);
 } }                                    

int ABCDEF3()
{
  int a,b,c,d,result;
  a = 2;
  b = 10-a;
  c = 10*a;
  d = 10-2*a;
  result = sub(a,b,c,d,10);
  if( result == 125 )
    printf("ABCDEF3 : OK \n");
  else
    printf("ABCDEF3 : NG \n");
}

int sub(int a, int b, int c, int d, int n)
{
  int x,i ;
  for ( i = 0 ; i < n ; i ++ ) {
    if ( a == 0 ) 
       d = 0 ;
    if ( b == 0 ) 
       c = 0 ;
    x = c+ d+ i + i*10 ;
  }
  return x ;
}

#define N 50
#define ANS -1859

int estreg12(void)
{
  int i, j;
  int a[N], b[N], c[N], d[N];
  int sum;

  for (i = 0; i < N; i++) {
    d[i] = i;
  }

  for (j = 0; j < N; j++) {
    a[j] = j/2;
    b[j] = j/3;
    c[j] = j/4;
  }

  sum = 0;
  for (i = 0; i < N; i++) {
    if (a[i] > 2*b[i]) {
      sum = sum - c[i];
    }
    if (a[i] > 2*c[i]) {
      sum = sum + b[i];
    }
    d[i] = d[i] - sum;
  }

  for (i = 0; i < N; i++) {
    sum = sum + d[i];
  }

  printf("sum  = %d --- ", sum); 

  if (sum == ANS) {
    printf("OK\n");
  }
  else {
    printf("NG, Answer => %d\n", ANS);
  }
}
int main(void) {
  ABCDEF3( );
  dpmk2012( );
  mptest12( );
  reduction12( );
  scobe12( );
  comk3112( );
  snitr12( );
  estreg12 ( );
}
