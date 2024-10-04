#include <stdio.h>
int mpasub (void);
int mptest30();
int m3gcns06 (void);
int scs001 (void);
int m3eva255 (void);
int m3mpcm03 (void);
int m3gcov03 (void);
int m3eva222 (void);
int mptest20 (void);
int m3mprd0a (void);
int m3eva273 (void);
int main()
{

   printf("***  **** START ***\n\n");

   m3eva273();  
   m3mprd0a();  
   mptest20();  
   m3eva222();  
   m3gcov03();  
   m3mpcm03();  
   m3eva255();  
   scs001()  ;  
   m3gcns06();  
   mptest30();  

   printf("\n***  ****  END  ***\n");

}




int 
m3eva222 (void)
{
  {
    int a;
    int f1f( int a );
    a=10;
    if( f1f(a) )
        printf("M3EVA222 TEST OK \n");
      else
        printf("M3EVA222 TEST NG = %d \n",a);
  }
}

int f1f( int a )
{
  if( a==10 )
      return 1;
    else
      return 0;
}



int 
m3eva255 (void)
{
  {
    extern int f2a;
    int f2f( int f2a );
    f2a=10;
    if( f2f(f2a) )
        printf("M3EVA255 TEST OK \n");
      else
        printf("M3EVA255 TEST NG = %d \n",f2a);
  }
}

int f2f( int f2a )
{
  if( f2a==10 )
      return 1;
    else
      return 0;
}
int f2a;



int 
m3eva273 (void)
{
  {
    struct {
      int a;
      int b;
    } st;
    int a;
    a=20;
    st.a=10;
    if( a==20 && st.a==10 )
        printf("M3EVA273 TEST OK \n");
      else
        printf("M3EVA273 TEST NG = %d \n",a);
  }
}



int 
m3gcns06 (void)
{
  int                int_;

  printf("M3GCNS06 START\n");


  int_ = (short int)100 + (short int)100;
  if (int_ == 200)
    printf("--- M3GCNS06 (40-01) OK ---\n");
  else {
    printf("*** M3GCNS06 (40-01) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }


  int_ = (short int)100 - (short int)50;
  if (int_ == 50)
    printf("--- M3GCNS06 (40-02) OK ---\n");
  else {
    printf("*** M3GCNS06 (40-02) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }


  int_ = (short int)100 * (short int)100;
  if (int_ == 10000)
    printf("--- M3GCNS06 (40-03) OK ---\n");
  else {
    printf("*** M3GCNS06 (40-03) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }


  int_ = (short int)100 / (short int)50;
  if (int_ == 2)
    printf("--- M3GCNS06 (40-04) OK ---\n");
  else {
    printf("*** M3GCNS06 (40-04) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }


  int_ = (short int)100 % (short int)3;
  if (int_ == 1)
    printf("--- M3GCNS06 (40-05) OK ---\n");
  else {
    printf("*** M3GCNS06 (40-05) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }


  int_ = (short int)1 << (short int)3;
  if (int_ == 8)
    printf("--- M3GCNS06 (40-06) OK ---\n");
  else {
    printf("*** M3GCNS06 (40-06) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }


  int_ = (short int)8 >> (short int)3;
  if (int_ == 1)
    printf("--- M3GCNS06 (40-07) OK ---\n");
  else {
    printf("*** M3GCNS06 (40-07) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }


  int_ = (short int)100 < (short int)101;
  if (int_ == 1)
    printf("--- M3GCNS06 (40-08) OK ---\n");
  else {
    printf("*** M3GCNS06 (40-08) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }


  int_ = (short int)10 > (short int)50;
  if (int_ == 0)
    printf("--- M3GCNS06 (40-09) OK ---\n");
  else {
    printf("*** M3GCNS06 (40-09) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }


  int_ = (short int)100 <= (short int)100;
  if (int_ == 1)
    printf("--- M3GCNS06 (40-10) OK ---\n");
  else {
    printf("*** M3GCNS06 (40-10) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }


  int_ = (short int)10 >= (short int)50;
  if (int_ == 0)
    printf("--- M3GCNS06 (40-11) OK ---\n");
  else {
    printf("*** M3GCNS06 (40-11) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }


  int_ = (short int)100 == (short int)100;
  if (int_ == 1)
    printf("--- M3GCNS06 (40-12) OK ---\n");
  else {
    printf("*** M3GCNS06 (40-12) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }


  int_ = (short int)1 != (short int)1;
  if (int_ == 0)
    printf("--- M3GCNS06 (40-13) OK ---\n");
  else {
    printf("*** M3GCNS06 (40-13) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }


  int_ = (short int)10 & (short int)7;
  if (int_ == 2)
    printf("--- M3GCNS06 (40-14) OK ---\n");
  else {
    printf("*** M3GCNS06 (40-14) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }


  int_ = (short int)1 ^ (short int)2;
  if (int_ == 3)
    printf("--- M3GCNS06 (40-15) OK ---\n");
  else {
    printf("*** M3GCNS06 (40-15) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }


  int_ = (short int)10 | (short int)7;
  if (int_ == 15)
    printf("--- M3GCNS06 (40-16) OK ---\n");
  else {
    printf("*** M3GCNS06 (40-16) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }


  int_ = (short int)100 && (short int)0;
  if (int_ == 0)
    printf("--- M3GCNS06 (40-17) OK ---\n");
  else {
    printf("*** M3GCNS06 (40-17) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }


  int_ = (short int)0 || (short int)100;
  if (int_ == 1)
    printf("--- M3GCNS06 (40-18) OK ---\n");
  else {
    printf("*** M3GCNS06 (40-18) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }


  printf("M3GCNS06 END  \n");
}



int 
m3gcov03 (void){
  int                a;
  short int          b;
  long  int          c;
  signed char        d;
  signed int         e;
  signed short int   f;
  signed long  int   g;
  unsigned char      h;
  unsigned int       i;
  unsigned short int j;
  unsigned long  int k;
    printf("M3GCOV03 START\n");

  a = (int)(signed char)100;
  if (a == 100)
    printf("--- M3GCOV03 (03-01) OK ---\n");
  else {
    printf("*** M3GCOV03 (03-01) NG ***\n");
    printf("A = %x\n" , a);
  }


  a = (int)(signed char)-100;
  if (a == -100)
    printf("--- M3GCOV03 (03-02) OK ---\n");
  else {
    printf("*** M3GCOV03 (03-02) NG ***\n");
    printf("A = %x\n" , a);
  }


  b = (short int)(char)3;
  if (b == 3)
    printf("--- M3GCOV03 (03-03) OK ---\n");
  else {
    printf("*** M3GCOV03 (03-03) NG ***\n");
    printf("B = %x\n" , b);
  }


  b = (short int)(signed char)-4;
  if (b == -4)
    printf("--- M3GCOV03 (03-04) OK ---\n");
  else {
    printf("*** M3GCOV03 (03-04) NG ***\n");
    printf("B = %x\n" , b);
  }


  c = (long int)(char)5;
  if (c == 5)
    printf("--- M3GCOV03 (03-05) OK ---\n");
  else {
    printf("*** M3GCOV03 (03-05) NG ***\n");
    printf("C = %x\n" , c);
  }


  c = (long int)(signed char)-6;
  if (c == -6)
    printf("--- M3GCOV03 (03-06) OK ---\n");
  else {
    printf("*** M3GCOV03 (03-06) NG ***\n");
    printf("C = %x\n" , c);
  }


  d = (signed char)(char)7;
  if (d == 7)
    printf("--- M3GCOV03 (03-07) OK ---\n");
  else {
    printf("*** M3GCOV03 (03-07) NG ***\n");
    printf("D = %x\n" , d);

  }

  d = (signed char)(signed char)-8;
  if (d == -8)
    printf("--- M3GCOV03 (03-08) OK ---\n");
  else {
    printf("*** M3GCOV03 (03-08) NG ***\n");
    printf("D = %x\n" , d);
  }


  e = (signed int)(char)9;
  if (e == 9)
    printf("--- M3GCOV03 (03-09) OK ---\n");
  else {
    printf("*** M3GCOV03 (03-09) NG ***\n");
    printf("E = %x\n" , e);
  }


  e = (signed int)(signed char)-10;
  if (e == -10)
    printf("--- M3GCOV03 (03-10) OK ---\n");
  else {
    printf("*** M3GCOV03 (03-10) NG ***\n");
    printf("E = %x\n" , e);
  }


  f = (signed short int)(char)11;
  if (f == 11)
    printf("--- M3GCOV03 (03-11) OK ---\n");
  else {
    printf("*** M3GCOV03 (03-11) NG ***\n");
    printf("F = %x\n" , f);
  }


  f = (signed short int)(signed char)-12;
  if (f == -12)
    printf("--- M3GCOV03 (03-12) OK ---\n");
  else {
    printf("*** M3GCOV03 (03-12) NG ***\n");
    printf("F = %x\n" , f);
  }


  g = (signed long int)(char)13;
  if (g == 13)
    printf("--- M3GCOV03 (03-13) OK ---\n");
  else {
    printf("*** M3GCOV03 (03-13) NG ***\n");
    printf("G = %x\n" , g);
  }


  g = (signed long int)(signed char)-14;
  if (g == -14)
    printf("--- M3GCOV03 (03-14) OK ---\n");
  else {
    printf("*** M3GCOV03 (03-14) NG ***\n");
    printf("G = %x\n" , g);
  }


  h = (unsigned char)(char)15;
  if (h == 15)
    printf("--- M3GCOV03 (03-15) OK ---\n");
  else {
    printf("*** M3GCOV03 (03-15) NG ***\n");
    printf("H = %x\n" , h);
  }


  h = (unsigned char)(signed char)-1;
  if (h == 255)
    printf("--- M3GCOV03 (03-16) OK ---\n");
  else {
    printf("*** M3GCOV03 (03-16) NG ***\n");
    printf("H = %x\n" , h);
  }


  i = (unsigned int)(char)17;
  if (i == 17)
    printf("--- M3GCOV03 (03-17) OK ---\n");
  else {
    printf("*** M3GCOV03 (03-17) NG ***\n");
    printf("I = %x\n" , i);
  }


  i = (unsigned int)(signed char)-1;
#if INT64
  if (i == 18446744073709551615)
#else
  if (i == 4294967295)
#endif
    printf("--- M3GCOV03 (03-18) OK ---\n");
  else {
    printf("*** M3GCOV03 (03-18) NG ***\n");
    printf("I = %x\n" , i);
  }


  j = (unsigned short int)(char)19;
  if (j == 19)
    printf("--- M3GCOV03 (03-19) OK ---\n");
  else {
    printf("*** M3GCOV03 (03-19) NG ***\n");
    printf("J = %x\n" , j);
  }


  j = (unsigned short int)(signed char)-1;
  if (j == 65535)
    printf("--- M3GCOV03 (03-20) OK ---\n");
  else {
    printf("*** M3GCOV03 (03-20) NG ***\n");
    printf("J = %x\n" , j);
  }


  k = (unsigned long int)(char)41;
  if (k == 41)
    printf("--- M3GCOV03 (04-01) OK ---\n");
  else {
    printf("*** M3GCOV03 (04-01) NG ***\n");
    printf("K = %x\n" , k);
  }


  k = (unsigned long int)(signed char)-1;
#if INT64||LONG64 || __x86_64__ || __aarch64__
  if (k == 18446744073709551615)
#else
  if (k == 4294967295)
#endif
    printf("--- M3GCOV03 (04-02) OK ---\n");
  else {
    printf("*** M3GCOV03 (04-02) NG ***\n");
    printf("K = %x\n" , k);
  }


  printf("M3GCOV03 END  \n");
}






 int   mpouti1,mpouti2;
 int 
m3mpcm03 (void)
 {
   int *pi;
   int ai,bi,ei,fi;
   ai=10;
   bi=20;
   ei=50;
   fi=60;
   pi=&ai;
   fi=*pi;
   if(bi==20) {
    *pi=15;
   }
   ei=*pi;
   if(ei==fi)
   {
     printf("ERROR OF A-2 : EI = %d\n",ei);
   }
   else
   {
     if(ei!=15)
     {
       printf("ERROR OF A-2 : EI = %d\n",ei);
     }
     else
     {
       printf("OK OF A-2\n");
     }
   }
   ai=10;

   pi=&ai;
   fi=ai+bi;
   if(bi==20) {
     *pi=15;
   }
   ei=ai+bi;
   if(ei==fi)
   {
     printf("ERROR OF C-2 : EI = %d\n",ei);
   }
   else
   {
     if(ei!=35)
     {
       printf("ERROR OF C-2 : EI = %d\n",ei);
     }
     else
     {
       printf("OK OF C-2\n");
     }
   }
   ai=10;

   pi=&ai;
   fi=bi+(*pi);
   if(bi==20) {
     ai=15;
   }
   ei=bi+(*pi);
   if(ei==fi)
   {
     printf("ERROR OF B-2:EI = %d\n",ei);
   }
   else
   {
     if(ei!=35)
     {
       printf("ERROR OF B-2:EI = %d\n",ei);
     }
     else
     {
       printf("OK OF B-2\n");
     }
   }
   ai=10;
 }





int 
mptest20 (void)
{
   int a[10],b[10],i,j,mp2fnc(int i);

   for(i=0;i<10;a[i]=i++);
   for(i=0;i<10;i++){
      b[i]=mp2fnc(a[i]);
      if(b[i]+a[i]!=10)
         printf("*** MPTEST20 <%2d> NG ***\n",i);
      else
         printf("*** MPTEST20 <%2d> OK ***\n",i);
   }
}
int mp2fnc(int i)
{
   return(10-i);
}



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




 int 
scs001 (void)
 {
   struct bittag {
            char         a11: 8;
            short int    a21: 8;
            short int    a22: 8;
            int          a41:16;
            int          a42:16;
            int          a43:32;
   } ;
   struct bittag bitdata = { 0x01, 0x02 ,0x03
                             ,0x0004, 0x0005 ,0x00000006};
   char                   i11,i12,i13;
   short int              i21,i22    ;
   int                    i41        ;
   unsigned char          u11,u12,u13;
   unsigned short int     u21,u22    ;
   unsigned int           u41        ;
   i11=bitdata.a11 ;
   i12=bitdata.a21 ;
   i13=bitdata.a22 ;
   i21=bitdata.a41 ;
   i22=bitdata.a42 ;
   i41=bitdata.a43 ;
   u11=bitdata.a11 ;
   u12=bitdata.a21 ;
   u13=bitdata.a22 ;
   u21=bitdata.a41 ;
   u22=bitdata.a42 ;
   u41=bitdata.a43 ;
   if ((i11+i12+i13+i21+i22+i41)==21 &&
       (u11+u12+u13+u21+u22+u41)==21)
     printf("*** SCS001 *** OK ***\n") ;
   else {
     printf("### i11=%d\n",i11) ;
     printf("### i12=%d\n",i12) ;
     printf("### i13=%d\n",i13) ;
     printf("### i21=%d\n",i21) ;
     printf("### i22=%d\n",i22) ;
     printf("### i41=%d\n",i41) ;
     printf("### u11=%d\n",u11) ;
     printf("### u12=%d\n",u12) ;
     printf("### u13=%d\n",u13) ;
     printf("### u21=%d\n",u21) ;
     printf("### u22=%d\n",u22) ;
     printf("### u41=%d\n",u41) ;
   }
 }
