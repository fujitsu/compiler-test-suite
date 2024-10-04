#include <stdio.h>
#include <stdlib.h>
#include <string.h>
int rz (void);
int ge (void);
int gt (void);
int eq (void);
int le (void);
int lt (void);
int mpfnc1 (void);
int func (void);
int mpsub (void);
int m3mprd04 (void);
int m3mpcm05 (void);
int m3gcns05 (void);
int m3garg03 (void);
int m3eva302 (void);
int m3eva272 (void);
int m3eva254 (void);
int m3eva242 (void);
int m3mpsi05 (void);
int scrsk10 (void);
int m3mpyt04 (void);
int m3eva221 (void);
int mptest19 (void);
int fff (void);
int ne (void);
int main()
{

   printf("***  **** START ***\n\n");

   m3eva221();  
   m3mpyt04();  
   scrsk10() ;  
   m3mpsi05();  
   m3eva242();  
   m3eva254();  
   m3eva272();  
   m3eva302();  
   m3garg03();  
   m3gcns05();  
   mptest19();  
   m3mpcm05();  
   m3mprd04();  

   printf("\n***  ****  END  ***\n");

}





 int y;
 int m3mpsi05 (void) {
 struct mptag {
  int mema;
  int memb;
  char memc[4];
  };
 struct mptag var1,var2,var3,*pint;
 int a[10];
 int x;
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
 pint=&var3;
 y=x;
 a[1]=y;
 pint=&var3;
 mpsub();
 x=a[1];
 pint->memc[1]=y+pint->memb;
 if (pint->memc[1]==37) printf("M3MPSI05 OK\n");
 else
 printf("%d\n",pint->memc[1]);
 }
 int mpsub (void)
 {
 y=22;
 return 0;
 }



struct homerun
{
   int some[3];
   int hit;
   int str;
   int total;
};
  struct homerun homer[50];
  struct homerun *point;
  int n,i,j,hs,h,c,demo,d,e;
  static int score[3]={7,2,5};
  int table[3];
  int strnum[3];
  int hitnum[3];
int 
m3mpyt04 (void)
{
  d=1;
  point=homer;
  i=0;
  c=0;
  hs=0;
  n=0;
  while(i<=2){
    if(hs==3){
      break;
    }
    table[0]=d;
    table[1]=d+1;
    table[2]=d+2;
    func();
    i++;
    d=d+3;
  }
  if(hs!=3){
    table[c]=0;
    c++;
  }
  while(h<=2){
    switch(c){
      case 0:break;
      case 1:
               switch(n){
               case 1:table[2]=strnum[0];
                        table[0]=hitnum[0];
                        table[1]=hitnum[1];
                        break;
               case 2:table[1]=strnum[0];
                        table[0]=hitnum[0];
                        table[2]=hitnum[2];
                        break;
               case 3:table[0]=strnum[0];
                        table[1]=hitnum[1];
                        table[2]=hitnum[2];
                        break;
               }
      break;
      case 2:
               switch(n){
               case 0:table[2]=strnum[1];
                        table[1]=strnum[2];
                        table[0]=hitnum[0];
                        break;
               case 1:table[0]=strnum[2];
                        table[2]=strnum[0];
                        table[1]=hitnum[1];
                        break;
               case 2:table[0]=strnum[1];
                        table[1]=strnum[0];
                        table[2]=hitnum[2];
                        break;
               }
      break;
      case 3:table[1]=strnum[0];
               table[2]=strnum[1];
               table[0]=strnum[2];
      }
      n=0;
      c=0;
      hs=0;
      func();
  }
  if(memcmp(score,hitnum,12)==0)
    printf("***** OK *****\n");
  else
    printf("***** NG *****\n");
}
int 
func (void)
{
  h=0;
  point->some[0]=table[0];
  point->some[1]=table[1];
  point->some[2]=table[2];
  point->hit=0;
  point->str=0;
  point->total=0;
  e=0;
  while(e<=2){
    if(score[e]==point->some[e]) {
      point->hit++;
      hitnum[e]=point->some[e];
      n=n+e;
      h++;
    }
    j=0;
    while(j<=2){
      if(score[e]==point->some[j] && e!=j) {
        point->str++;
        strnum[c]=point->some[j];
        c++;
      }
      j++;
    }
    e++;
  }
  point->total=point->hit+point->str;
  hs=hs+point->total;
  point++;
}




int 
m3eva221 (void)
{
  {
    int a;
    struct {
      int a;
      int b;
    } st;
    a=10;
    st.a=20;
    if( a==10 && st.a==20 )
        printf("M3EVA221 TEST OK \n");
      else
        printf("M3EVA221 TEST NG = %d \n",a);
  }
}




int 
faf (void)
{
  {
    static int a;
    a=10;
    if( a==10 )
        return 1;
      else
        return 0;
  }
}

int 
m3eva242 (void)
{
  static int a=20;
  if( a==20 && faf() )
      printf("M3EVA242 TEST OK \n");
    else
      printf("M3EVA242 TEST NG = %d \n",a);
}



int 
m3eva254 (void)
{
  {
    extern int fxa;
    struct {
      int fxa;
      int b;
    } st;
    st.fxa=20;
    if( fxa==0 && st.fxa==20 )
        printf("M3EVA254 TEST OK \n");
      else
        printf("M3EVA254 TEST NG = %d \n",fxa);
  }
}
int fxa=0;



int 
m3eva272 (void)
{
  {
    struct {
      int a;
      int b;
    } st;
    int a=20;
    st.a=10;
    if( a==20 && st.a==10 )
        printf("M3EVA272 TEST OK \n");
      else
        printf("M3EVA272 TEST NG = %d \n",a);
  }
}



int 
m3eva302 (void)
{
  {
    int ffnc( int a );
    static int a;
    if( a==0 && ffnc(10) )
        printf("M3EVA302 TEST OK \n");
      else
        printf("M3EVA302 TEST NG = %d \n",a);
  }
}

int ffnc( int a )
{
  if ( a == 10 )
      return 1;
    else
      return 0;
}



struct f1stag {int stm;}f1st ={1};
union  f1utag {int unm;}f1un ={1};
enum ffetag {ee}f1en={1};
int  f1fp0(int *);
int  f1fp1(int *);
int  f1fp2(float *);
int  f1fp3(struct f1stag*);
int  f1frr1(int [1]);
int  f1frr2(int []);
int  f1fs1(struct f1stag);
int  f1fs2(union f1utag);
int  f1fs3(enum ffetag);
int  f1ff1(int);
int 
m3garg03 (void)
{
  int w=0,x=0,y=0,z=0;
  int a=1,*ap;
  int ar[1]={1};
  int br[1]={1};
  float f=1.0,*fp;
  struct f1stag *stp=&f1st;

  ap=&a;fp=&f;
  printf("M3GARG03 START\n");
  w= f1fp0(1-1)+f1fp1(ap)+f1fp2(fp)+f1fp3(stp); 
  x= f1fs1(f1st)+f1fs2(f1un)+f1fs3(f1en); 
  y= f1ff1(fff());                       
  z= f1frr1(ar) + f1frr2(br);              

  if (w==3 && x==3 && y==1 && z==2)
    printf("M3GARG03 FUNC1 OK\n");
  else {
    printf("M3GARG03 FUNC1 NG\n");
    printf("W=%d\n",w);
    printf("X=%d\n",x);
    printf("Y=%d\n",y);
    printf("Z=%d\n",z);
  }
  printf("M3GARG03 END  \n");
}
 int f1fp0(int *a) { return (int) a;}
 int f1fp1(int *a) { return *a; }
 int f1fp2(float *fp) { return (int )*fp; }
 int f1fp3(struct f1stag *stp) { return stp->stm; }
 int f1fs1(struct f1stag f1st) { return f1st.stm; }
 int f1fs2(union f1utag f1un) { return f1un.unm; }
 int f1fs3(enum ffetag f1en) { return f1en; }
 int f1ff1(int a) { return a; }
int 
fff (void) { return 1; }
 int f1frr1(int a[1]) { return *a; }
 int f1frr2(int b[]) { return *b; }



int 
m3gcns05 (void)
{
  int                int_;

  printf("M3GCNS05 START\n");


  int_ = (int)100 + (int)100;
  if (int_ == 200)
    printf("--- M3GCNS05 (39-01) OK ---\n");
  else {
    printf("*** M3GCNS05 (39-01) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }


  int_ = (int)100 - (int)50;
  if (int_ == 50)
    printf("--- M3GCNS05 (39-02) OK ---\n");
  else {
    printf("*** M3GCNS05 (39-02) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }


  int_ = (int)100 * (int)100;
  if (int_ == 10000)
    printf("--- M3GCNS05 (39-03) OK ---\n");
  else {
    printf("*** M3GCNS05 (39-03) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }


  int_ = (int)100 / (int)50;
  if (int_ == 2)
    printf("--- M3GCNS05 (39-04) OK ---\n");
  else {
    printf("*** M3GCNS05 (39-04) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }


  int_ = (int)100 % (int)3;
  if (int_ == 1)
    printf("--- M3GCNS05 (39-05) OK ---\n");
  else {
    printf("*** M3GCNS05 (39-05) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }


  int_ = (int)1 << (int)3;
  if (int_ == 8)
    printf("--- M3GCNS05 (39-06) OK ---\n");
  else {
    printf("*** M3GCNS05 (39-06) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }


  int_ = (int)8 >> (int)3;
  if (int_ == 1)
    printf("--- M3GCNS05 (39-07) OK ---\n");
  else {
    printf("*** M3GCNS05 (39-07) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }


  int_ = (int)100 < (int)101;
  if (int_ == 1)
    printf("--- M3GCNS05 (39-08) OK ---\n");
  else {
    printf("*** M3GCNS05 (39-08) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }


  int_ = (int)10 > (int)50;
  if (int_ == 0)
    printf("--- M3GCNS05 (39-09) OK ---\n");
  else {
    printf("*** M3GCNS05 (39-09) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }


  int_ = (int)100 <= (int)100;
  if (int_ == 1)
    printf("--- M3GCNS05 (39-10) OK ---\n");
  else {
    printf("*** M3GCNS05 (39-10) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }


  int_ = (int)10 >= (int)50;
  if (int_ == 0)
    printf("--- M3GCNS05 (39-11) OK ---\n");
  else {
    printf("*** M3GCNS05 (39-11) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }


  int_ = (int)100 == (int)100;
  if (int_ == 1)
    printf("--- M3GCNS05 (39-12) OK ---\n");
  else {
    printf("*** M3GCNS05 (39-12) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }


  int_ = (int)1 != (int)1;
  if (int_ == 0)
    printf("--- M3GCNS05 (39-13) OK ---\n");
  else {
    printf("*** M3GCNS05 (39-13) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }


  int_ = (int)10 & (int)7;
  if (int_ == 2)
    printf("--- M3GCNS05 (39-14) OK ---\n");
  else {
    printf("*** M3GCNS05 (39-14) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }


  int_ = (int)1 ^ (int)2;
  if (int_ == 3)
    printf("--- M3GCNS05 (39-15) OK ---\n");
  else {
    printf("*** M3GCNS05 (39-15) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }


  int_ = (int)10 | (int)7;
  if (int_ == 15)
    printf("--- M3GCNS05 (39-16) OK ---\n");
  else {
    printf("*** M3GCNS05 (39-16) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }


  int_ = (int)100 && (int)0;
  if (int_ == 0)
    printf("--- M3GCNS05 (39-17) OK ---\n");
  else {
    printf("*** M3GCNS05 (39-17) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }


  int_ = (int)0 || (int)100;
  if (int_ == 1)
    printf("--- M3GCNS05 (39-18) OK ---\n");
  else {
    printf("*** M3GCNS05 (39-18) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }


  printf("M3GCNS05 END  \n");
}



   static char mp1ok_msg[] = {"*** MPTEST19 ***  OK ***"} ;
   static char mp1ng_msg[] = {"*** MPTEST19 ***  NG ***"} ;
   struct mp1t {
     int  a  ;
     int  b  ;
     } mp1z ,mp1fnc() ;
int 
mptest19 (void)
     {
        mp1z=mp1fnc() ;
        if(mp1z.a==5 && mp1z.b==7)
          printf("%s\n",mp1ok_msg) ;
        else
          printf("%s\n",mp1ng_msg) ;
     }
   struct mp1t 
mp1fnc (void)
     {
       struct mp1t s ;
       s.a=5  ;
       s.b=7  ;
       return(s) ;
     }





int 
m3mpcm05 (void)
{
  unsigned short int     s1 = 1;
  signed short int       s2 = 1;
  short int              s3 = 1;
  unsigned char          c1 = 'b';
  signed char            c2 = 'b';
  char                   c3 = 'b';
  unsigned short int     usshi = 1;
  signed short int       sshi  = 1;
  short int              shi   = 1;
  unsigned char          usc = 'a';
  signed char            sc  = 'a';
  char                   c   = 'a';

    printf("*************\n");


  if ( sizeof ( s1 + usshi ) == 4 )
    printf("TEST01 --> OK \n");
  if ( sizeof ( s1 + sshi ) == 4 )
    printf("TEST02 --> OK \n");
  if ( sizeof ( s1 + shi ) == 4 )
    printf("TEST03 --> OK \n");
  if ( sizeof ( s1 + usc ) == 4 )
    printf("TEST04 --> OK \n");
  if ( sizeof ( s1 + sc ) == 4 )
    printf("TEST05 --> OK \n");
  if ( sizeof ( s1 + c ) == 4 )
    printf("TEST06 --> OK \n");
  if ( sizeof ( s2 + sshi ) == 4 )
    printf("TEST07 --> OK \n");
  if ( sizeof ( s2 + shi ) == 4 )
    printf("TEST08 --> OK \n");
  if ( sizeof ( s2 + usc ) == 4 )
    printf("TEST09 --> OK \n");
  if ( sizeof ( s2 + sc ) == 4 )
    printf("TEST10 --> OK \n");
  if ( sizeof ( s2 + c ) == 4 )
    printf("TEST11 --> OK \n");
  if ( sizeof ( s3 + shi ) == 4 )
    printf("TEST12 --> OK \n");
  if ( sizeof ( s3 + usc ) == 4 )
    printf("TEST13 --> OK \n");
  if ( sizeof ( s3 + sc ) == 4 )
    printf("TEST14 --> OK \n");
  if ( sizeof ( s3 + c ) == 4 )
    printf("TEST15 --> OK \n");
  if ( sizeof ( c1 + usc ) == 4 )
    printf("TEST16 --> OK \n");
  if ( sizeof ( c1 + sc ) == 4 )
    printf("TEST17 --> OK \n");
  if ( sizeof ( c1 + c ) == 4 )
    printf("TEST18 --> OK \n");
  if ( sizeof ( c2 + sc ) == 4 )
    printf("TEST19 --> OK \n");
  if ( sizeof ( c2 + c ) == 4 )
    printf("TEST20 --> OK \n");
  if ( sizeof ( c3 + c ) == 4 )
    printf("TEST21 --> OK \n");
}



struct estr {
float x;
int y;
int a[10];
};
struct west {
int b[10];
int z;
float w;
};
int m3mprd04 (void)
{
  printf("M3MPRD04 START\n");
  mpfnc1();                          
  printf("M3MPRD04 END  \n");
}
int mpfnc1 (void)
{
  char *ap ;
  struct estr ea;
  struct west eb;
  struct estr *pint1;
  struct estr *pint2;
  struct west *pint3;
  float  ff;
  int num;
  pint1=&ea;
  pint2=pint1;
  pint3=&eb;
  num=1;
  pint1->a[num]=20;
  pint3->b[num]=20;
  pint1->x=1.0;
  pint1->y=10;
  pint3->w=pint1->x;
  pint1->a[num]=10;
  pint2->a[num]=pint1->a[num];
  if (pint1->a[num]==10) printf("M3MPRD01 OK\n");
  else
  printf("M3MPRD01 NG\n");
  if (pint3->w==1.0 ) printf("M3MPRD01 OK\n");
  else
  printf("M3MPRD01 NG\n");
  return 0;
}




static unsigned int bxdata[] = {
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         0,         0,         0,
         1,         1,         1,
       127,     32767,   8388607,
       127,     32767,   8388607,
       127,     32767,   8388607,
       127,     32767,   8388607,
         0,         0,         0,
         1,         1,         1,
       127,     32767,   8388607,
       128,     32768,   8388608,
       128,     32768,   8388608,
       128,     32768,   8388608,
         0,         0,         0,
         1,         1,         1,
       127,     32767,   8388607,
       128,     32768,   8388608,
       129,     32769,   8388609,
       129,     32769,   8388609,
         0,         0,         0,
         1,         1,         1,
       127,     32767,   8388607,
       128,     32768,   8388608,
       129,     32769,   8388609,
       255,     65535,4294967295,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         0,         0,         0,
         1,         1,         1,
       127,     32767,   8388607,
       127,     32767,   8388607,
       127,     32767,   8388607,
       127,     32767,   8388607,
         0,         0,         0,
         1,         1,         1,
       127,     32767,   8388607,
       128,     32768,   8388608,
       128,     32768,   8388608,
       128,     32768,   8388608,
         0,         0,         0,
         1,         1,         1,
       127,     32767,   8388607,
       128,     32768,   8388608,
       129,     32769,   8388609,
       129,     32769,   8388609,
         0,         0,         0,
         1,         1,         1,
       127,     32767,   8388607,
       128,     32768,   8388608,
       129,     32769,   8388609,
       255,     65535,4294967295,
         1,         1,         1,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         1,         1,         1,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         1,         1,         1,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         1,         1,         1,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         1,         1,         1,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         1,         1,         1,
         0,         0,         0,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         0,         0,         0,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         0,         0,         0,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         0,         0,         0,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         0,         0,         0,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         0,         0,         0,
         0,         0,         0,
         1,         1,         1,
       127,     32767,   8388607,
       128,     32768,   8388608,
       129,     32769,   8388609,
       255,     65535,4294967295,
         1,         1,         1,
         1,         1,         1,
       127,     32767,   8388607,
       128,     32768,   8388608,
       129,     32769,   8388609,
       255,     65535,4294967295,
       127,     32767,   8388607,
       127,     32767,   8388607,
       127,     32767,   8388607,
       128,     32768,   8388608,
       129,     32769,   8388609,
       255,     65535,4294967295,
       128,     32768,   8388608,
       128,     32768,   8388608,
       128,     32768,   8388608,
       128,     32768,   8388608,
       129,     32769,   8388609,
       255,     65535,4294967295,
       129,     32769,   8388609,
       129,     32769,   8388609,
       129,     32769,   8388609,
       129,     32769,   8388609,
       129,     32769,   8388609,
       255,     65535,4294967295,
       255,     65535,4294967295,
       255,     65535,4294967295,
       255,     65535,4294967295,
       255,     65535,4294967295,
       255,     65535,4294967295,
       255,     65535,4294967295,
         0,         0,         0,
         1,         1,         1,
       127,     32767,   8388607,
       128,     32768,   8388608,
       129,     32769,   8388609,
       255,     65535,4294967295,
         1,         1,         1,
         1,         1,         1,
       127,     32767,   8388607,
       128,     32768,   8388608,
       129,     32769,   8388609,
       255,     65535,4294967295,
       127,     32767,   8388607,
       127,     32767,   8388607,
       127,     32767,   8388607,
       128,     32768,   8388608,
       129,     32769,   8388609,
       255,     65535,4294967295,
       128,     32768,   8388608,
       128,     32768,   8388608,
       128,     32768,   8388608,
       128,     32768,   8388608,
       129,     32769,   8388609,
       255,     65535,4294967295,
       129,     32769,   8388609,
       129,     32769,   8388609,
       129,     32769,   8388609,
       129,     32769,   8388609,
       129,     32769,   8388609,
       255,     65535,4294967295,
       255,     65535,4294967295,
       255,     65535,4294967295,
       255,     65535,4294967295,
       255,     65535,4294967295,
       255,     65535,4294967295,
       255,     65535,4294967295,
         0,         0,         0,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1
};
int 
bxchk (unsigned int i, unsigned int j, unsigned int k)
{
      static int c=0;
      if( bxdata[c++] != i ) {
        puts(" NG ");
        exit(1);
      }
      if( bxdata[c++] != j ) {
        puts(" NG ");
        exit(1);
      }
      if( bxdata[c++] != k ) {
        puts(" NG ");
        exit(1);
      }
}

unsigned char           bxdim1[] =
{ 0, 1, 0x7f,    0x80,    0x81 ,    0xff};
unsigned short      int bydim1[] =
{ 0, 1 ,0x7fff,  0x8000,  0x8001 ,  0xffff };
unsigned            int bzdim1[] =
{ 0, 1, 0x7fffff,0x800000,0x800001 ,0xffffffff };

int 
scrsk10 (void)
{
       lt(); le();
       eq(); ne();
       gt(); ge();
       rz();
       puts(" OK ");
}
int 
lt (void)
{
       int i,j;
       unsigned char  i1,i1ans[11],op1;
       unsigned short i2,i2ans[11],op2;
       unsigned int   i4,i4ans[11],op4;
       for(j=0;j<6;j++) {
          op1        = bxdim1[j];
          op2        = bydim1[j];
          op4        = bzdim1[j];
         for(i=0;i<6;i++) {
            i1         = bxdim1[i];
            i2         = bydim1[i];
            i4         = bzdim1[i];
            i1ans[i] = i1 < op1 ? i1 : op1;
            i2ans[i] = i2 < op2 ? i2 : op2;
            i4ans[i] = i4 < op4 ? i4 : op4;
         }
         for(i=0;i<6;i++) {
           bxchk(i1ans[i],
                                       i2ans[i],
                                       i4ans[i] );
         }
       }
}
int 
le (void)
{
       int i,j;
       unsigned char  i1,i1ans[11],op1;
       unsigned short i2,i2ans[11],op2;
       unsigned int   i4,i4ans[11],op4;
       for(j=0;j<6;j++) {
          op1        = bxdim1[j];
          op2        = bydim1[j];
          op4        = bzdim1[j];
         for(i=0;i<6;i++) {
            i1         = bxdim1[i];
            i2         = bydim1[i];
            i4         = bzdim1[i];
            i1ans[i] = i1 <= op1 ? i1 : op1;
            i2ans[i] = i2 <= op2 ? i2 : op2;
            i4ans[i] = i4 <= op4 ? i4 : op4;
         }
         for(i=0;i<6;i++) {
           bxchk(i1ans[i],
                                       i2ans[i],
                                       i4ans[i] );
         }
       }
}
int 
eq (void)
{
       int i,j;
       unsigned char  i1,i1ans[11],op1;
       unsigned short i2,i2ans[11],op2;
       unsigned int   i4,i4ans[11],op4;
       for(j=0;j<6;j++) {
          op1        = bxdim1[j];
          op2        = bydim1[j];
          op4        = bzdim1[j];
         for(i=0;i<6;i++) {
            i1         = bxdim1[i];
            i2         = bydim1[i];
            i4         = bzdim1[i];
            i1ans[i] = i1 == op1 ? 1:0;
            i2ans[i] = i2 == op2 ? 1:0;
            i4ans[i] = i4 == op4 ? 1:0;
         }
         for(i=0;i<6;i++) {
           bxchk(i1ans[i],
                                       i2ans[i],
                                       i4ans[i] );
         }
       }
}
int 
ne (void)
{
       int i,j;
       unsigned char  i1,i1ans[11],op1;
       unsigned short i2,i2ans[11],op2;
       unsigned int   i4,i4ans[11],op4;
       for(j=0;j<6;j++) {
          op1        = bxdim1[j];
          op2        = bydim1[j];
          op4        = bzdim1[j];
         for(i=0;i<6;i++) {
            i1         = bxdim1[i];
            i2         = bydim1[i];
            i4         = bzdim1[i];
            i1ans[i] = i1 != op1 ? 1:0;
            i2ans[i] = i2 != op2 ? 1:0;
            i4ans[i] = i4 != op4 ? 1:0;
         }
         for(i=0;i<6;i++) {
           bxchk(i1ans[i],
                                       i2ans[i],
                                       i4ans[i] );
         }
       }
}
int 
gt (void)
{
       int i,j;
       unsigned char  i1,i1ans[11],op1;
       unsigned short i2,i2ans[11],op2;
       unsigned int   i4,i4ans[11],op4;
       for(j=0;j<6;j++) {
          op1        = bxdim1[j];
          op2        = bydim1[j];
          op4        = bzdim1[j];
         for(i=0;i<6;i++) {
            i1         = bxdim1[i];
            i2         = bydim1[i];
            i4         = bzdim1[i];
            i1ans[i] = i1 >  op1?i1:op1;
            i2ans[i] = i2 >  op2?i2:op2;
            i4ans[i] = i4 >  op4?i4:op4;
         }
         for(i=0;i<6;i++) {
           bxchk(i1ans[i],
                                       i2ans[i],
                                       i4ans[i] );
         }
       }
}
int 
ge (void)
{
       int i,j;
       unsigned char  i1,i1ans[11],op1;
       unsigned short i2,i2ans[11],op2;
       unsigned int   i4,i4ans[11],op4;
       for(j=0;j<6;j++) {
          op1        = bxdim1[j];
          op2        = bydim1[j];
          op4        = bzdim1[j];
         for(i=0;i<6;i++) {
            i1         = bxdim1[i];
            i2         = bydim1[i];
            i4         = bzdim1[i];
            i1ans[i] = i1 >= op1?i1:op1;
            i2ans[i] = i2 >= op2?i2:op2;
            i4ans[i] = i4 >= op4?i4:op4;
         }
         for(i=0;i<6;i++) {
           bxchk(i1ans[i],
                                       i2ans[i],
                                       i4ans[i] );
         }
       }
}
int 
rz (void)
{
       int i,j;
       unsigned char  i1,i1ans[11],op1;
       unsigned short i2,i2ans[11],op2;
       unsigned int   i4,i4ans[11],op4;
         for(i=0;i<6;i++) {
            i1         = bxdim1[i];
            i2         = bydim1[i];
            i4         = bzdim1[i];
            i1ans[i] = i1 == 0?0:1;
            i2ans[i] = i2 == 0?0:1;
            i4ans[i] = i4 == 0?0:1;
         }
         for(i=0;i<6;i++) {
           bxchk(i1ans[i],
                                       i2ans[i],
                                       i4ans[i] );
         }
}
