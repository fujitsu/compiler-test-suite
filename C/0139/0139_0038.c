#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <string.h>
int mpasub (void);
int fxfnc2 (void);
int fxfnc1 (void);
int m3eva294 (void);
int mptest08 (void);
int m3ginc02 (void);
int mptest30();
int m3gswh10 (void);
int m3eva266 (void);
int m3mprd0a (void);
int m3gcns15 (void);
int m3eva315 (void);
  
 
 
 
 
 
 



#define proc    {
#define endproc }
#define then    {
#define endif   }
 
#define _ok      "OK"
#define _ng_ref  "REF NG"
#define _ng_def  "DEF NG"
#define _ng_dbr  "DBR NG"
#define _ng_rbd  "RBD NG"
#define _ng_arg  "ARG NG"
 
#define _val_ref 1
#define _val_def 2
#define _val_dbr 3
#define _val_rbd 4
#define _val_arg 5
 
static char *i2chk() ;
static char *i4chk() ;
static char *u2chk() ;
static char *u4chk() ;
static char *rschk() ;
static char *rdchk() ;
static char *chchk() ;
 
int main (void)
{

   printf("*** \n\n");

   m3eva315();   
   m3gcns15();   
   m3mprd0a();   
   m3eva266();   
   m3gswh10();   
   mptest30();   
   m3ginc02();   
   mptest08();   
   m3eva294();   

   printf("\n*** \n");

exit (0);
}







 
 
 


int f1f (void)
{
  {
    register int f1a;
    f1a=10;
    if( f1a==10 )
        return 1;
      else
        return 0;
  }
}

int m3eva266 (void)
{
  extern int f1a;
  f1a = 2;
  if( f1a==2 && f1f() )
      printf("M3EVA266 TEST OK \n");
    else
      printf("M3EVA266 TEST NG = %d \n",f1a);
}
int f1a;

 
 
 


int m3eva294 (void)
{
  {
    int f1fnc( int a );
    int a=20;
    if( a==20 && f1fnc(10) )
        printf("M3EVA294 TEST OK \n");
      else
        printf("M3EVA294 TEST NG = %d \n",a);
  }
}

int f1fnc( int a )
{
  if ( a == 10 )
      return 1;
    else
      return 0;
}

 
 
 


int f2f (int f2a)
{
  if( f2a == 10 )
      return 1;
    else
      return 0;
}

int f2a=20;

int m3eva315 (void)
{
  if( f2a==20 && f2f(10) )
      printf("M3EVA315 TEST OK \n");
    else
      printf("M3EVA315 TEST NG = %d \n",f2a);
}

 
 
 


int m3gcns15 (void)
{

  int                int_;
  long int           lon_;
  unsigned int       uns_int;

  printf("M3GCNS15 START\n");

 
 

  int_ = (char)100 + (int)100;
  if (int_ == 200)
    printf("--- M3GCNS15 (49-01) OK ---\n");
  else {
    printf("*** M3GCNS15 (49-01) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  int_ = (char)100 - (short int)50;
  if (int_ == 50)
    printf("--- M3GCNS15 (49-02) OK ---\n");
  else {
    printf("*** M3GCNS15 (49-02) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  lon_ = (char)100 * (long int)100;
  if (lon_ == 10000)
    printf("--- M3GCNS15 (49-03) OK ---\n");
  else {
    printf("*** M3GCNS15 (49-03) NG ***\n");
    printf("LON_ = %x\n" , lon_);
  }

 
 

  int_ = (char)100 / (unsigned char)50;
  if (int_ == 2)
    printf("--- M3GCNS15 (49-04) OK ---\n");
  else {
    printf("*** M3GCNS15 (49-04) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  uns_int = (char)100 % (unsigned int)3;
  if (uns_int == 1)
    printf("--- M3GCNS15 (49-05) OK ---\n");
  else {
    printf("*** M3GCNS15 (49-05) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }

 
 

  int_ = (char)1 << (unsigned short int)3;
  if (int_ == 8)
    printf("--- M3GCNS15 (49-06) OK ---\n");
  else {
    printf("*** M3GCNS15 (49-06) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  int_ = (char)8 >> (unsigned long int)3;
  if (int_ == 1)
    printf("--- M3GCNS15 (49-07) OK ---\n");
  else {
    printf("*** M3GCNS15 (49-07) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  int_ = (char)100 < (float)101.0;
  if (int_ == 1)
    printf("--- M3GCNS15 (49-08) OK ---\n");
  else {
    printf("*** M3GCNS15 (49-08) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  int_ = (char)10 > (double)50.0;
  if (int_ == 0)
    printf("--- M3GCNS15 (49-09) OK ---\n");
  else {
    printf("*** M3GCNS15 (49-09) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  int_ = (char)100 <= (long double)100.0;
  if (int_ == 1)
    printf("--- M3GCNS15 (49-10) OK ---\n");
  else {
    printf("*** M3GCNS15 (49-10) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  int_ = (char)10 >= (int)50;
  if (int_ == 0)
    printf("--- M3GCNS15 (49-11) OK ---\n");
  else {
    printf("*** M3GCNS15 (49-11) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  int_ = (char)100 == (short int)100;
  if (int_ == 1)
    printf("--- M3GCNS15 (49-12) OK ---\n");
  else {
    printf("*** M3GCNS15 (49-12) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  int_ = (char)1 != (long int)1;
  if (int_ == 0)
    printf("--- M3GCNS15 (49-13) OK ---\n");
  else {
    printf("*** M3GCNS15 (49-13) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  int_ = (char)10 & (unsigned char)7;
  if (int_ == 2)
    printf("--- M3GCNS15 (49-14) OK ---\n");
  else {
    printf("*** M3GCNS15 (49-14) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  uns_int = (char)1 ^ (unsigned int)2;
  if (uns_int == 3)
    printf("--- M3GCNS15 (49-15) OK ---\n");
  else {
    printf("*** M3GCNS15 (49-15) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }

 
 

  int_ = (char)10 | (unsigned short int)7;
  if (int_ == 15)
    printf("--- M3GCNS15 (49-16) OK ---\n");
  else {
    printf("*** M3GCNS15 (49-16) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  int_ = (char)100 && (unsigned long int)0;
  if (int_ == 0)
    printf("--- M3GCNS15 (49-17) OK ---\n");
  else {
    printf("*** M3GCNS15 (49-17) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  int_ = (char)0 || (float)100;
  if (int_ == 1)
    printf("--- M3GCNS15 (49-18) OK ---\n");
  else {
    printf("*** M3GCNS15 (49-18) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 

  printf("M3GCNS15 END  \n");
}

 
 
 


int m3ginc02 (void)
{
  printf("M3GINC02 START\n");
  fxfnc1();
  fxfnc2();
  printf("M3GINC02 END  \n");
}
 
int fxfnc1 (void)
{
   volatile int a=1;
   volatile double f=1.0;
   volatile int ar[2];
   volatile int *ap=ar+1;
   int x=0;
   ar[0]=1;

   --f;
   x=(--ar[--a])+1;
   *(--ap)=10;

   if (f==0.0 &x==1 & ar[0]==10)
     printf("M3GINC02 FXFNC1 OK\n");
   else {
     printf("M3GINC02 FXFNC1 NG\n");
     printf("AR[1]=%d\n",ar[1]);
     printf("X=%d\n",x);
     printf("F=%f\n",f);
     }
}
 
int fxfnc2 (void)
{
   int a=1;
   double f=1.0;
   int ar[2];
   int *ap=ar+1;
   int x=0;
   ar[0]=1;

   --f;
   x=(--ar[--a])+1;
   *(--ap)=10;

   if (f==0.0 &x==1 & ar[0]==10)
     printf("M3GINC02 FXFNC2 OK\n");
   else {
     printf("M3GINC02 FXFNC2 NG\n");
     printf("AR[1]=%d\n",ar[1]);
     printf("X=%d\n",x);
     printf("F=%f\n",f);
     }
}

 
 
 


int m3gswh10 (void)  {

            short  s1=1;
            short  s2=3;
            short  s3=5;
            short  s4=10;
            short  s5=100;
            short  s6=10000;
            short  s7=-32768;
            short  s8=32767;
   unsigned short  us1=1;
   unsigned short  us2=2;
   unsigned short  us3=3;
   unsigned short  us4=5;
   unsigned short  us5=10;
   unsigned short  us6=100;
   unsigned short  us7=10000;
   unsigned short  us8=65535;

   int a1,a2,a3,a4,a5,a6,a7,a8;
   int b1,b2,b3,b4,b5,b6,b7,b8;

  printf("M3GSWH10 TEST-START \n");

   switch(s1)  {
     case (char)5:
       a1=5;
       break;
     case (char)10:
     case (char)100:
       a1=10;
       break;
     case (char)127:
       a1=20;
     default:
       a1=0;
  }
  if(a1==0)
    printf("M3GSWH10 1-1 TEST -O  K- \n");
  else
    printf("M3GSWH10 1-1 TEST - NG - \n");

   switch(s2)  {
     case (unsigned char)3:
       a2=3;
       break;
     case (unsigned char)10:
     case (unsigned char)100:
       a2=10;
       break;
     case (unsigned char)128:
       a2=20;
     default:
       a2=0;
  }
  if(a2==3)
    printf("M3GSWH10 1-2 TEST -O  K- \n");
  else
    printf("M3GSWH10 1-2 TEST - NG - \n");

   switch(s3)  {
     case (short)5:
       a3=5;
       break;
     case (short)10:
     case (short)100:
       a3=10;
       break;
     case (short)128:
       a3=20;
     default:
       a3=0;
  }
  if(a3==5)
    printf("M3GSWH10 1-3 TEST -O  K- \n");
  else
    printf("M3GSWH10 1-3 TEST - NG - \n");

   switch(s4)  {
     case (unsigned short)5:
       a4=5;
       break;
     case (unsigned short)10:
     case (unsigned short)100:
       a4=10;
       break;
     case (unsigned short)128:
       a4=20;
     default:
       a4=0;
  }
  if(a4==10)
    printf("M3GSWH10 1-4 TEST -O  K- \n");
  else
    printf("M3GSWH10 1-4 TEST - NG - \n");

   switch(s5)  {
     case 5:
       a5=5;
       break;
     case 10:
     case 100:
       a5=10;
       break;
     case 128:
       a5=20;
     default:
       a5=0;
  }
  if(a5==10)
    printf("M3GSWH10 1-5 TEST -O  K- \n");
  else
    printf("M3GSWH10 1-5 TEST - NG - \n");

   switch(s6)  {
     case (unsigned int)5:
       a6=5;
       break;
     case (unsigned int)10:
     case (unsigned int)100:
       a6=10;
       break;
     case (unsigned int)10000:
       a6=20;
     default:
       a6=0;
  }
  if(a6==0)
    printf("M3GSWH10 1-6 TEST -O  K- \n");
  else
    printf("M3GSWH10 1-6 TEST - NG - \n");

   switch(s7)  {
     case (long int)-32768:
       a7=5;
       break;
     case (long int)10:
     case (long int)100:
       a7=10;
       break;
     case (long int)32767:
       a7=20;
     default:
       a7=0;
  }
  if(a7==5)
    printf("M3GSWH10 1-7 TEST -O  K- \n");
  else
    printf("M3GSWH10 1-7 TEST - NG - \n");

   switch(s8)  {
     case (unsigned long int)5:
       a8=5;
       break;
     case (unsigned long int)10:
     case (unsigned long int)100:
       a8=10;
       break;
     case (unsigned long int)128:
       a8=20;
     default:
       a8=0;
  }
  if(a8==0)
    printf("M3GSWH10 1-8 TEST -O  K- \n");
  else
    printf("M3GSWH10 1-8 TEST - NG - \n");

   switch(us1)  {
     case (char)1:
       b1=1;
       break;
     case (char)10:
     case (char)100:
       b1=10;
       break;
     case (char)128:
       b1=20;
     default:
       b1=0;
  }
  if(b1==1)
    printf("M3GSWH10 2-1 TEST -O  K- \n");
  else
    printf("M3GSWH10 2-1 TEST - NG - \n");

   switch(us2)  {
     case (unsigned char)5:
       b2=5;
       break;
     case (unsigned char)10:
     case (unsigned char)100:
       b2=10;
       break;
     case (unsigned char)128:
       b2=20;
     default:
       b2=0;
  }
  if(b2==0)
    printf("M3GSWH10 2-2 TEST -O  K- \n");
  else
    printf("M3GSWH10 2-2 TEST - NG - \n");

   switch(us3)  {
     case (short)5:
       b3=5;
       break;
     case (short)3:
     case (short)10:
       b3=10;
       break;
     case (short)20:
       b3=20;
     default:
       b3=0;
  }
  if(b3==10)
    printf("M3GSWH10 2-3 TEST -O  K- \n");
  else
    printf("M3GSWH10 2-3 TEST - NG - \n");

   switch(us4)  {
     case (unsigned short)5:
       b4=5;
       break;
     case (unsigned short)10:
     case (unsigned short)100:
       b4=10;
       break;
     case (unsigned short)128:
       b4=20;
     default:
       b4=0;
  }
  if(b4==5)
    printf("M3GSWH10 2-4 TEST -O  K- \n");
  else
    printf("M3GSWH10 2-4 TEST - NG - \n");

   switch(us5)  {
     case 5:
       b5=5;
       break;
     case 10:
     case 100:
       b5=10;
       break;
     case 128:
       b5=20;
     default:
       b5=0;
  }
  if(b5==10)
    printf("M3GSWH10 2-5 TEST -O  K- \n");
  else
    printf("M3GSWH10 2-5 TEST - NG - \n");

   switch(us6)  {
     case (unsigned int)5:
       b6=5;
       break;
     case (unsigned int)1:
     case (unsigned int)10:
       b6=10;
       break;
     case (unsigned int)20:
       b6=20;
     default:
       b6=0;
  }
  if(b6==0)
    printf("M3GSWH10 2-6 TEST -O  K- \n");
  else
    printf("M3GSWH10 2-6 TEST - NG - \n");

   switch(us7)  {
     case (long int)5:
       b7=5;
       break;
     case (long int)10:
     case (long int)100:
       b7=10;
       break;
     case (long int)10000:
       b7=20;
     default:
       b7=0;
  }
  if(b7==0)
    printf("M3GSWH10 2-7 TEST -O  K- \n");
  else
    printf("M3GSWH10 2-7 TEST - NG - \n");

   switch(us8)  {
     case (unsigned long int)5:
       b8=5;
       break;
     case (unsigned long int)10:
     case (unsigned long int)65535:
       b8=10;
       break;
     case (unsigned long int)128:
       b8=20;
     default:
       b8=0;
  }
  if(b8==10)
    printf("M3GSWH10 2-8 TEST -O  K- \n");
  else
    printf("M3GSWH10 2-8 TEST - NG - \n");

  printf("M3GSWH10 TEST-END \n");

}

 
 
 


static int   fqar[5] ={1,2,3,4,5};

static int   fqbr[2] ={0,1};

static struct fqtg {
    int  b1;
    }fqcx ={2},*fqpo = &fqcx;

int m3gmeb10 (void)
{
  printf("*** M3GMEB10 TEST FOR G_EXMEMB *** STARTED ***\n");

 

  {
  int   x1 = 0;
  int   a1 = 0;
  x1 = (fqar+1)[a1^=1];
  if(x1 == 3)
    printf("*** M3EMEB10-01 *** O   K ***\n");
  else
    printf("*** M3EMEB10-01 *** N   G ***\n");
  }

 

  {
  int   x2 = 0;
  int   a2 = 1;
  x2 = (fqar+1)[a2|=1];
  if(x2 == 3)
    printf("*** M3EMEB10-02 *** O   K ***\n");
  else
    printf("*** M3EMEB10-02 *** N   G ***\n");
  }

 

  {
  int   x3 = 0;
  x3 = (fqar+1)[fqcx.b1];
  if(x3 == 4)
    printf("*** M3EMEB10-03 *** O   K ***\n");
  else
    printf("*** M3EMEB10-03 *** N   G ***\n");
  }

 

  {
  int   x4 = 0;
  x4 = (fqar+1)[fqpo->b1];
  if(x4 == 4)
    printf("*** M3EMEB10-04 *** O   K ***\n");
  else
    printf("*** M3EMEB10-04 *** N   G ***\n");
  }

 

  {
  int   x5 = 0;
  x5 = (fqar+1)[fqbr[0]];
  if(x5 == 2)
    printf("*** M3EMEB10-05 *** O   K ***\n");
  else
    printf("*** M3EMEB10-05 *** N   G ***\n");
  }

 

  {
  int   x6 = 0;
  x6 = (fqar+1)[1,2];
  if(x6 == 4)
    printf("*** M3EMEB10-06 *** O   K ***\n");
  else
    printf("*** M3EMEB10-06 *** N   G ***\n");
  }

 

  {
  int   x7 = 0;
  char  a7 = 1;
  x7 = (fqar+1)[(int) a7];
  if(x7 == 3)
    printf("*** M3EMEB10-07 *** O   K ***\n");
  else
    printf("*** M3EMEB10-07 *** N   G ***\n");
  }

  printf("*** M3EMEB10 TEST FOR G_EXMEMB *** THE END ***\n");
}

 
 
 


 static char *mp2okng ="OK";

int mptest08 (void)
 {
   char *mp2fnc1(int *),*mp2fnc2(int *),*mp2fnc3(int *);

   static int exi=0;
   char      *str;

     printf("\n***** MPTEST08 START *****\n");
     printf("    * CALL MP2FNC1 *\n");
     str = mp2fnc1(&exi);
     if(!strcmp(str,"    * OUT MP2FNC1 *")){
        if(exi==1){
           printf("     +++ OK EXI=%d +++\n",exi);
        } else {
           printf("     +++ NG EXI=%d +++\n",exi);
           strcpy(mp2okng,"NG");
        }
     } else {
        printf("     +++ NG MP2FNC1 STRING str=%s\n",str);
     }
     printf("    * CALL MP2FNC2 *\n");
     str = mp2fnc2(&exi);
     if(!strcmp(str,"    * OUT MP2FNC2 *")){
        if(exi==3){
           printf("     +++ OK EXI=%d +++\n",exi);
        } else {
           printf("     +++ NG EXI=%d +++\n",exi);
           strcpy(mp2okng,"NG");
        }
     } else {
        printf("     +++ NG MP2FNC2 STRING STR=%s\n",str);
     }
     printf("    * CALL MP2FNC3 *\n");
     str = mp2fnc3(&exi);
     if(!strcmp(str,"    * OUT MP2FNC3 *")){
        if(exi==6){
           printf("     +++ OK EXI=%d +++\n",exi);
        } else {
           printf("     +++ NG EXI=%d +++\n",exi);
           strcpy(mp2okng,"NG");
        }
     } else {
        printf("     +++ NG MP2FNC3 STRING STR=%s\n",str);
     }

     printf("   ** MPTEST08 %s %s %s ** \n",
                                    mp2okng,mp2okng,mp2okng);
     printf("***** MPTEST08 END *****\n\n");
 }

 char *mp2fnc1 (int *p)
 {
     *p = *p+1;
     return("    * OUT MP2FNC1 *");
 }

 char *mp2fnc2 (int *p)
 {
    static int i=0;

     if(++i <= 2){
        *p = *p+1;
        mp2fnc2(p);
     }
     return("    * OUT MP2FNC2 *");
 }

 char *mp2fnc3 (int *p)
 {
    static int i=0;

     if(++i <= 3){
        *p = *p+1;
        mp2fnc3(p);
     }
     return("    * OUT MP2FNC3 *");
 }


 
 
 

int mptest30() proc
      printf("*** MPTEST30 I2 %s ***\n",i2chk()) ;
      printf("*** MPTEST30 I4 %s ***\n",i4chk()) ;
      printf("*** MPTEST30 U2 %s ***\n",u2chk()) ;
      printf("*** MPTEST30 U4 %s ***\n",u4chk()) ;
      printf("*** MPTEST30 RS %s ***\n",rschk()) ;
      printf("*** MPTEST30 RD %s ***\n",rdchk()) ;
      printf("*** MPTEST30 CH %s ***\n",chchk()) ;
      endproc
 
static short int i2ref(short int i2dmy) ;
static short int i2def(short int i2dmy) ;
static short int i2dbr(short int i2dmy) ;
static short int i2rbd(short int i2dmy) ;
static short int i2arg(short int i2dmy) ;
 
static char *i2chk() proc
      short int i2refval,i2refans;
      short int i2defval,i2defans;
      short int i2dbrval,i2dbrans;
      short int i2rbdval,i2rbdans;
      short int i2argval,i2argans;
       
      i2refval=_val_ref ;i2refans=i2ref(i2refval) ;
      if (i2refans != i2refval) return(_ng_ref) ;
      i2defval=_val_def ;i2defans=i2def(i2defval) ;
      if (i2defans != i2defval) return(_ng_def) ;
      i2dbrval=_val_dbr ;i2dbrans=i2dbr(i2dbrval) ;
      if (i2dbrans != i2dbrval) return(_ng_dbr) ;
      i2rbdval=_val_rbd ;i2rbdans=i2rbd(i2rbdval) ;
      if (i2rbdans != i2rbdval) return(_ng_rbd) ;
      i2argval=_val_arg ;i2argans=i2arg(i2argval) ;
      if (i2argans != i2argval) return(_ng_arg) ;
      return(_ok) ;
      endproc
 
static short int i2ref(short int i2dmy)
      proc
      return(i2dmy) ;
      endproc
 
static short int i2def(short int i2dmy)
      proc
      short int i2wrk ;
      i2wrk=_val_def ;
      i2dmy=-i2wrk ;
      return(i2wrk) ;
      endproc
 
static short int i2dbr(short int i2dmy)
      proc
      short int i2wrk ;
      i2wrk=_val_dbr ;
      i2dmy=i2wrk ;
      i2dmy+=1 ;
      return(i2wrk) ;
      endproc
 
static short int i2rbd(short int i2dmy)
      proc
      short int i2wrk ;
      i2wrk=i2dmy ;
      i2dmy+=1 ;
      return(i2wrk) ;
      endproc
 
static short int i2arg(short int i2dmy)
      proc
      printf(" I2 VALUE %d \n",i2dmy) ;
      return(i2dmy) ;
      endproc
 
static  int i4ref(int i4dmy) ;
static  int i4def(int i4dmy) ;
static  int i4dbr(int i4dmy) ;
static  int i4rbd(int i4dmy) ;
static  int i4arg(int i4dmy) ;
 
static char *i4chk() proc
      int i4refval,i4refans;
      int i4defval,i4defans;
      int i4dbrval,i4dbrans;
      int i4rbdval,i4rbdans;
      int i4argval,i4argans;
       
      i4refval=_val_ref ;i4refans=i4ref(i4refval) ;
      if (i4refans != i4refval) return(_ng_ref) ;
      i4defval=_val_def ;i4defans=i4def(i4defval) ;
      if (i4defans != i4defval) return(_ng_def) ;
      i4dbrval=_val_dbr ;i4dbrans=i4dbr(i4dbrval) ;
      if (i4dbrans != i4dbrval) return(_ng_dbr) ;
      i4rbdval=_val_rbd ;i4rbdans=i4rbd(i4rbdval) ;
      if (i4rbdans != i4rbdval) return(_ng_rbd) ;
      i4argval=_val_arg ;i4argans=i4arg(i4argval) ;
      if (i4argans != i4argval) return(_ng_arg) ;
      return(_ok) ;
      endproc
 
static int i4ref(int i4dmy)
      proc
      return(i4dmy) ;
      endproc
 
static int i4def(int i4dmy)
      proc
      int i4wrk ;
      i4wrk=_val_def ;
      i4dmy=-i4wrk ;
      return(i4wrk) ;
      endproc
 
static int i4dbr(int i4dmy)
      proc
      int i4wrk ;
      i4wrk=_val_dbr ;
      i4dmy=i4wrk ;
      i4dmy+=1 ;
      return(i4wrk) ;
      endproc
 
static int i4rbd(int i4dmy)
      proc
      int i4wrk ;
      i4wrk=i4dmy ;
      i4dmy+=1 ;
      return(i4wrk) ;
      endproc
 
static int i4arg(int i4dmy)
      proc
      printf(" I4 VALUE %d \n",i4dmy) ;
      return(i4dmy) ;
      endproc
 
static unsigned short int u2ref(unsigned short int u2dmy) ;
static unsigned short int u2def(unsigned short int u2dmy) ;
static unsigned short int u2dbr(unsigned short int u2dmy) ;
static unsigned short int u2rbd(unsigned short int u2dmy) ;
static unsigned short int u2arg(unsigned short int u2dmy) ;
 
static char *u2chk() proc
      unsigned short int u2refval,u2refans;
      unsigned short int u2defval,u2defans;
      unsigned short int u2dbrval,u2dbrans;
      unsigned short int u2rbdval,u2rbdans;
      unsigned short int u2argval,u2argans;
       
      u2refval=_val_ref ;u2refans=u2ref(u2refval) ;
      if (u2refans != u2refval) return(_ng_ref) ;
      u2defval=_val_def ;u2defans=u2def(u2defval) ;
      if (u2defans != u2defval) return(_ng_def) ;
      u2dbrval=_val_dbr ;u2dbrans=u2dbr(u2dbrval) ;
      if (u2dbrans != u2dbrval) return(_ng_dbr) ;
      u2rbdval=_val_rbd ;u2rbdans=u2rbd(u2rbdval) ;
      if (u2rbdans != u2rbdval) return(_ng_rbd) ;
      u2argval=_val_arg ;u2argans=u2arg(u2argval) ;
      if (u2argans != u2argval) return(_ng_arg) ;
      return(_ok) ;
      endproc
 
static unsigned short int u2ref(unsigned short int u2dmy)
      proc
      return(u2dmy) ;
      endproc
 
static unsigned short int u2def(unsigned short int u2dmy)
      proc
      unsigned short int u2wrk ;
      u2wrk=_val_def ;
      u2dmy=-u2wrk ;
      return(u2wrk) ;
      endproc
 
static unsigned short int u2dbr(unsigned short int u2dmy)
      proc
      unsigned short int u2wrk ;
      u2wrk=_val_dbr ;
      u2dmy=u2wrk ;
      u2dmy+=1 ;
      return(u2wrk) ;
      endproc
 
static unsigned short int u2rbd(unsigned short int u2dmy)
      proc
      unsigned short int u2wrk ;
      u2wrk=u2dmy ;
      u2dmy+=1 ;
      return(u2wrk) ;
      endproc
 
static unsigned short int u2arg(unsigned short int u2dmy)
      proc
      printf(" U2 VALUE %d \n",u2dmy) ;
      return(u2dmy) ;
      endproc
 
static unsigned int u4ref(unsigned int u4dmy) ;
static unsigned int u4def(unsigned int u4dmy) ;
static unsigned int u4dbr(unsigned int u4dmy) ;
static unsigned int u4rbd(unsigned int u4dmy) ;
static unsigned int u4arg(unsigned int u4dmy) ;
 
static char *u4chk() proc
      unsigned int u4refval,u4refans;
      unsigned int u4defval,u4defans;
      unsigned int u4dbrval,u4dbrans;
      unsigned int u4rbdval,u4rbdans;
      unsigned int u4argval,u4argans;
       
      u4refval=_val_ref ;u4refans=u4ref(u4refval) ;
      if (u4refans != u4refval) return(_ng_ref) ;
      u4defval=_val_def ;u4defans=u4def(u4defval) ;
      if (u4defans != u4defval) return(_ng_def) ;
      u4dbrval=_val_dbr ;u4dbrans=u4dbr(u4dbrval) ;
      if (u4dbrans != u4dbrval) return(_ng_dbr) ;
      u4rbdval=_val_rbd ;u4rbdans=u4rbd(u4rbdval) ;
      if (u4rbdans != u4rbdval) return(_ng_rbd) ;
      u4argval=_val_arg ;u4argans=u4arg(u4argval) ;
      if (u4argans != u4argval) return(_ng_arg) ;
      return(_ok) ;
      endproc
 
static unsigned int u4ref(unsigned int u4dmy)
      proc
      return(u4dmy) ;
      endproc
 
static unsigned int u4def(unsigned int u4dmy)
      proc
      unsigned int u4wrk ;
      u4wrk=_val_def ;
      u4dmy=-u4wrk ;
      return(u4wrk) ;
      endproc
 
static unsigned int u4dbr(unsigned int u4dmy)
      proc
      unsigned int u4wrk ;
      u4wrk=_val_dbr ;
      u4dmy=u4wrk ;
      u4dmy+=1 ;
      return(u4wrk) ;
      endproc
 
static unsigned int u4rbd(unsigned int u4dmy)
      proc
      unsigned int u4wrk ;
      u4wrk=u4dmy ;
      u4dmy+=1 ;
      return(u4wrk) ;
      endproc
 
static unsigned int u4arg(unsigned int u4dmy)
      proc
      printf(" U4 VALUE %d \n",u4dmy) ;
      return(u4dmy) ;
      endproc
 
static float rsref(float rsdmy) ;
static float rsdef(float rsdmy) ;
static float rsdbr(float rsdmy) ;
static float rsrbd(float rsdmy) ;
static float rsarg(float rsdmy) ;
       
static char *rschk() proc
      float rsrefval,rsrefans;
      float rsdefval,rsdefans;
      float rsdbrval,rsdbrans;
      float rsrbdval,rsrbdans;
      float rsargval,rsargans;
       
      rsrefval=_val_ref ;rsrefans=rsref(rsrefval) ;
      if (rsrefans != rsrefval) return(_ng_ref) ;
      rsdefval=_val_def ;rsdefans=rsdef(rsdefval) ;
      if (rsdefans != rsdefval) return(_ng_def) ;
      rsdbrval=_val_dbr ;rsdbrans=rsdbr(rsdbrval) ;
      if (rsdbrans != rsdbrval) return(_ng_dbr) ;
      rsrbdval=_val_rbd ;rsrbdans=rsrbd(rsrbdval) ;
      if (rsrbdans != rsrbdval) return(_ng_rbd) ;
      rsargval=_val_arg ;rsargans=rsarg(rsargval) ;
      if (rsargans != rsargval) return(_ng_arg) ;
      return(_ok) ;
      endproc
 
static float rsref(float rsdmy)
      proc
      return(rsdmy) ;
      endproc
 
static float rsdef(float rsdmy)
      proc
      float rswrk ;
      rswrk=_val_def ;
      rsdmy=-rswrk ;
      return(rswrk) ;
      endproc
 
static float rsdbr(float rsdmy)
      proc
      float rswrk ;
      rswrk=_val_dbr ;
      rsdmy=rswrk ;
      rsdmy+=1 ;
      return(rswrk) ;
      endproc
 
static float rsrbd(float rsdmy)
      proc
      float rswrk ;
      rswrk=rsdmy ;
      rsdmy+=1 ;
      return(rswrk) ;
      endproc
 
static float rsarg(float rsdmy)
      proc
      printf(" RS VALUE %f \n",rsdmy) ;
      return(rsdmy) ;
      endproc
 
static double rdref(double rddmy) ;
static double rddef(double rddmy) ;
static double rddbr(double rddmy) ;
static double rdrbd(double rddmy) ;
static double rdarg(double rddmy) ;
 
static char *rdchk() proc
      double rdrefval,rdrefans;
      double rddefval,rddefans;
      double rddbrval,rddbrans;
      double rdrbdval,rdrbdans;
      double rdargval,rdargans;
       
      rdrefval=_val_ref ;rdrefans=rdref(rdrefval) ;
      if (rdrefans != rdrefval) return(_ng_ref) ;
      rddefval=_val_def ;rddefans=rddef(rddefval) ;
      if (rddefans != rddefval) return(_ng_def) ;
      rddbrval=_val_dbr ;rddbrans=rddbr(rddbrval) ;
      if (rddbrans != rddbrval) return(_ng_dbr) ;
      rdrbdval=_val_rbd ;rdrbdans=rdrbd(rdrbdval) ;
      if (rdrbdans != rdrbdval) return(_ng_rbd) ;
      rdargval=_val_arg ;rdargans=rdarg(rdargval) ;
      if (rdargans != rdargval) return(_ng_arg) ;
      return(_ok) ;
      endproc
 
static double rdref(double rddmy)
      proc
      return(rddmy) ;
      endproc
 
static double rddef(double rddmy)
      proc
      double rdwrk ;
      rdwrk=_val_def ;
      rddmy=-rdwrk ;
      return(rdwrk) ;
      endproc
 
static double rddbr(double rddmy)
      proc
      double rdwrk ;
      rdwrk=_val_dbr ;
      rddmy=rdwrk ;
      rddmy+=1 ;
      return(rdwrk) ;
      endproc
 
static double rdrbd(double rddmy)
      proc
      double rdwrk ;
      rdwrk=rddmy ;
      rddmy+=1 ;
      return(rdwrk) ;
      endproc
 
static double rdarg(double rddmy)
      proc
      printf(" RD VALUE %f \n",rddmy) ;
      return(rddmy) ;
      endproc
 
static char chref(char chdmy) ;
static char chdef(char chdmy) ;
static char chdbr(char chdmy) ;
static char chrbd(char chdmy) ;
static char charg(char chdmy) ;
 
static char *chchk() proc
      char chrefval,chrefans;
      char chdefval,chdefans;
      char chdbrval,chdbrans;
      char chrbdval,chrbdans;
      char chargval,chargans;
       
      chrefval=_val_ref ;chrefans=chref(chrefval) ;
      if (chrefans != chrefval) return(_ng_ref) ;
      chdefval=_val_def ;chdefans=chdef(chdefval) ;
      if (chdefans != chdefval) return(_ng_def) ;
      chdbrval=_val_dbr ;chdbrans=chdbr(chdbrval) ;
      if (chdbrans != chdbrval) return(_ng_dbr) ;
      chrbdval=_val_rbd ;chrbdans=chrbd(chrbdval) ;
      if (chrbdans != chrbdval) return(_ng_rbd) ;
      chargval=_val_arg ;chargans=charg(chargval) ;
      if (chargans != chargval) return(_ng_arg) ;
      return(_ok) ;
      endproc
 
static char chref(char chdmy)
      proc
      return(chdmy) ;
      endproc
 
static char chdef(char chdmy)
      proc
      char chwrk ;
      chwrk=_val_def ;
      chdmy=-chwrk ;
      return(chwrk) ;
      endproc
 
static char chdbr(char chdmy)
      proc
      char chwrk ;
      chwrk=_val_dbr ;
      chdmy=chwrk ;
      chdmy+=1 ;
      return(chwrk) ;
      endproc
 
static char chrbd(char chdmy)
      proc
      char chwrk ;
      chwrk=chdmy ;
      chdmy+=1 ;
      return(chwrk) ;
      endproc
 
static char charg(char chdmy)
      proc
      printf(" CH VALUE %d \n",chdmy) ;
      return(chdmy) ;
      endproc




 
 
 


int y;
int m3mprd0a (void) {
struct mpatag {
 int mema;
 int memb;
 char memc[4];
 };
struct mpatag var1,var2,var3,*pint;
int a[10];
int x;
int *pp;
pint=&var3;
pint->mema=5;
pint->memb=15;
a[4]=5;
a[pint->mema]=3;
pint=&var2;
pint->memb=4;
x=pint->memb;
pint->memb=a[4];
x=pint->memb;
pp=&x;
pint=&var3;
y=x;
a[1]=y;
pint=&var3;
mpasub();
x=a[1];
pint->memc[1]=y+pint->memb;
if (pint->memc[1]==37) printf("M3MPSI03 OK\n");
else
printf("%d\n",pint->memc[1]);
if (*pp==5) printf("M3MPSI03 OK\n");
else
printf("%d\n",*pp);
}
int mpasub (void)
{
y=22;
return 0;
}

