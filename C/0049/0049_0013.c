#include <stdio.h>
#include <stdlib.h>
int get_int (int a);
int gen_int (int a);
int subu (void);
int suba (void);

int dpmk2019()
{
int a,b,c,d,e,f,g,h;
void subb( ),subc( ),subd( ),sube( ),subf( ),subg( ),subh( );
a=suba( );
labelk1:
switch (a) {
  case 1:
          b=20;
          subb(b);
          break;
  case 2:
          c=30;
          subc(c);
          goto labelk2;
  case 3:
          d=50;
          subd(d);
          break;
  case 4:
          e=60;
          sube(e);
          goto labelk3;
  case 5:
          f=70;
          subf(f);
          break;
  case 6:
          g=80;
          subg(g);
          break;
  case 7:
          h=90;
          subh(h);
          break;
}
        subb(b);
        goto labelk1;
labelk2:labelk3:
                subh(h);
}
int 
suba (void){return 2;}
void 
subb (int i){}
void 
subc (int i){}
void 
subd (int i){}
void 
sube (int i){}
void 
subf (int i){}
void 
subg (int i){}
void 
subh (int i){printf ("**dpmk2019** OK\n");}

#include  <stdio.h>
 
 
 
   static char ok_msg[] = {"*** MPTEST19 *** OK ***"}  ;
   static char ng_msg[] = {"*** MPTEST19 *** NG ***"}  ;
   struct t19 {
     int  a  ;
     int  b  ;
     } zx,func()  ;
   int 
mptest19 (void)
     {
        zx=func()  ;
        if(zx.a==5 && zx.b==7)
          printf("%s\n",ok_msg) ;
        else
          printf("%s\n",ng_msg) ;
     }
   struct t19 
func (void)
     {
       struct t19 s ;
       s.a=5  ;
       s.b=7  ;
       return(s) ;
     }

#include  <stdio.h>

int 
scn1219 (void) {
  unsigned long long int u8a,u8b,u8ans;
  unsigned long long int u8();
  signed   long long int i8a,i8b,i8ans;
  signed   long long int i8();
  printf("scn1219 start\n");
  u8a=1;u8b=3;u8ans=u8(u8a,u8b);
  if (u8ans==8) printf("u8:ok\n");else printf("u8:ng\n");
  i8a=1;i8b=3;i8ans=i8(i8a,i8b);
  if (i8ans==8) printf("i8:ok\n");else printf("i8:ng\n");
  printf("scn1219 ended\n");
}
unsigned long long int 
u8 (unsigned long long int u8a, unsigned long long int u8b){return(u8a<<u8b);}
signed long long int 
i8 (signed long long int i8a, signed long long int i8b){return(i8a<<i8b);}

#include  <stdio.h>

int 
scpa019 (void)
{
    long int    li = 2, sub19();
    double      dl, ans=2.0;

    printf(" ---- scpa019 start ---- \n");

    dl = sub19( li );
    if (dl == ans)
        printf("    **** ok **** \n");
    else {
        printf("    ???? ng ???? \n");
        printf("      ans = %e \n", ans);
        printf("      cal = %e \n", dl);
    }
    printf(" ---- scpa019  end  ---- \n");
}
long int 
sub19 (long int li)
{
    return  li;
}

#include  <stdio.h>

struct t00 {
       char      i1; 
     short int   i2; 
       int       i4; 
    unsigned char      u1; 
    unsigned short int u2; 
    unsigned int       u4; 
    float              r4;
    double             r8;
    long  double       r16;
  struct t01 {
     signed        char    bi1:1; 
     signed short   int     bi2:4; 
     signed         int     bi4:8;
    unsigned       char    bu1:1; 
    unsigned short int     bu2:4; 
    unsigned       int     bu4:8; 
    struct t02 {
             char    *pi1; 
       short int     *pi2; 
             int     *pi4; 
      unsigned       char  *pu1; 
      unsigned short int   *pu2; 
      unsigned       int   *pu4; 
      float                *pr4;
      double               *pr8;
      long  double         *pr16;
      struct t03 {
               char     ai1[10]; 
         short int      ai2[10]; 
               int      ai4[10]; 
        unsigned       char     au1[10]; 
        unsigned short int      au2[10]; 
        unsigned       int      au4[10]; 
        float    ar4[10];
        double   ar8[10];
        long  double   ar16[10];
        struct t04 {
                 char     *ai1[10]; 
           short int      *ai2[10]; 
                 int      *ai4[10]; 
          unsigned       char     *au1[10]; 
          unsigned short int      *au2[10]; 
          unsigned       int      *au4[10]; 
          float    *ar4[10];
          double   *ar8[10];
          long  double   *ar16[10];
        } s041;
        struct t04 s042;
      } s031;
      struct t03 s032;
    } s021;
    struct t02 s022;
  } s011;
  struct t01 s012;
} ;
struct t   {
  struct t00 *s001;
  struct t00 *s002;
};
int 
cdpm0019 (void)
{
  struct t f1( );
  struct t p;
  p.s001 =(struct t00 *)malloc(sizeof(struct t00));
  p.s002 =(struct t00 *)malloc(sizeof(struct t00));

  p.s001->i1  = 1;
  p.s001->u1  = 1;
  p.s001->i2  = 1;
  p.s001->u2  = 1;
  p.s001->i4  = 1;
  p.s001->u4  = 1;
  p.s001->r4  = 1.0;
  p.s001->r8  = 1.0;
  p.s001->r16 = 1.0;
  p.s001->s011.bi1=1;
  p.s001->s011.bu1=1;
  p.s001->s011.bi2=1;
  p.s001->s011.bu2=1;
  p.s001->s011.bi4=1;
  p.s001->s011.bu4=1;
  p.s001->s012.bi1=1;
  p.s001->s012.bu1=1;
  p.s001->s012.bi2=1;
  p.s001->s012.bu2=1;
  p.s001->s012.bi4=1;
  p.s001->s012.bu4=1;
  p.s001->s011.s021.pi1=&(p.s001->i1);
  p.s001->s011.s021.pu1=&(p.s001->u1);
  p.s001->s011.s021.pi2=&(p.s001->i2);
  p.s001->s011.s021.pu2=&(p.s001->u2);
  p.s001->s011.s021.pi4=&(p.s001->i4);
  p.s001->s011.s021.pu4=&(p.s001->u4);
  p.s001->s011.s021.pr4=&(p.s001->r4);
  p.s001->s011.s021.pr8=&(p.s001->r8);
  p.s001->s011.s021.pr16=&(p.s001->r16);
  p.s001->s011.s022.pi1=&(p.s001->i1);
  p.s001->s011.s022.pu1=&(p.s001->u1);
  p.s001->s011.s022.pi2=&(p.s001->i2);
  p.s001->s011.s022.pu2=&(p.s001->u2);
  p.s001->s011.s022.pi4=&(p.s001->i4);
  p.s001->s011.s022.pu4=&(p.s001->u4);
  p.s001->s011.s022.pr4=&(p.s001->r4);
  p.s001->s011.s022.pr8=&(p.s001->r8);
  p.s001->s011.s022.pr16=&(p.s001->r16);
 p=f1(p);
  if(p.s002->i1 == 1
  && p.s002->u1  ==1
  && p.s002->i2  ==1
  && p.s002->u2  ==1
  && p.s002->i4  ==1
  && p.s002->u4  ==1
  && p.s002->r4  ==1.0
  && p.s002->r8  ==1.0
  && p.s002->r16 ==1.0
  && p.s002->s011.bi1==-1
  && p.s002->s011.bu1==1
  && p.s002->s011.bi2==1
  && p.s002->s011.bu2==1
  && p.s002->s011.bi4==1
  && p.s002->s011.bu4==1
  && p.s002->s012.bi1==-1
  && p.s002->s012.bu1==1
  && p.s002->s012.bi2==1
  && p.s002->s012.bu2==1
  && p.s002->s012.bi4==1
  && p.s002->s012.bu4==1
  && p.s002->s011.s021.pi1==&(p.s001->i1)
  && p.s002->s011.s021.pu1==&(p.s001->u1)
  && p.s002->s011.s021.pi2==&(p.s001->i2)
  && p.s002->s011.s021.pu2==&(p.s001->u2)
  && p.s002->s011.s021.pi4==&(p.s001->i4)
  && p.s002->s011.s021.pu4==&(p.s001->u4)
  && p.s002->s011.s021.pr4==&(p.s001->r4)
  && p.s002->s011.s021.pr8==&(p.s001->r8)
  && p.s002->s011.s021.pr16==&(p.s001->r16)
  && p.s002->s011.s022.pi1==&(p.s001->i1)
  && p.s002->s011.s022.pu1==&(p.s001->u1)
  && p.s002->s011.s022.pi2==&(p.s001->i2)
  && p.s002->s011.s022.pu2==&(p.s001->u2)
  && p.s002->s011.s022.pi4==&(p.s001->i4)
  && p.s002->s011.s022.pu4==&(p.s001->u4)
  && p.s002->s011.s022.pr4==&(p.s001->r4)
  && p.s002->s011.s022.pr8==&(p.s001->r8)
  && p.s002->s011.s022.pr16==&(p.s001->r16)
  )
  printf ("** cdpm0019 ** OK \n");
else
  printf ("** cdpm0019 ** NG \n");

free(p.s001);
free(p.s002);

}
struct t 
f1 (struct t p) { 
  *(p.s002)=*(p.s001);
  return(p);
}

long  double z[3][3][3];

void display(long  double a) {
  printf("%.3x ",(int)a);
}
void sub( long  double a[ ][3][3]) {

  volatile int i,j,k;
  for (i=0; i<3; i++,puts(" ") )    
    for (j=0; j<3; j++,puts(" "))    
      for (k=0; k<3; k++) {           
        display(a[i][j][k]);
        switch((long)a[i][j][k]){
          case 0x000 :
          case 0x001 :
          case 0x002 : 
          case 0x010 : 
          case 0x011 :
          case 0x012 : 
          case 0x020 : 
          case 0x021 : 
          case 0x022 : z[i+2][j][k]= a[i][j][k]; break;
          case 0x100 : 
          case 0x101 : 
          case 0x102 :
          case 0x110 : 
          case 0x111 :
          case 0x112 : 
          case 0x120 :
          case 0x121 : 
          case 0x122 : 
          case 0x200 : 
          case 0x201 :
          case 0x202 :
          case 0x210 : 
          case 0x211 : 
          case 0x212 : 
          case 0x220 : 
          case 0x221 :
          case 0x222 : z[i-1][j][k]= a[i][j][k]; break;
          default      : printf("comk3119 ng\n");
        } 
      } 
}
void 
sub2 (void) {
  volatile  int i,j,k;
  for (i=0; i<3; i++,puts(" ") )    
    for (j=0; j<3; j++,puts(" "))    
      for (k=0; k<3; k++)           
        display(z[i][j][k]);
}
int 
comk3119 (void) {
   long  double a[3][3][3]={   
  {
    {0x000,0x001,0x002} 
   ,{0x010,0x011,0x012} 
   ,{0x020,0x021,0x022} 
  },
  {
    {0x100,0x101,0x102} 
   ,{0x110,0x111,0x112} 
   ,{0x120,0x121,0x122} 
  },
  {
    {0x200,0x201,0x202} 
   ,{0x210,0x211,0x212} 
   ,{0x220,0x221,0x222} 
  },
                  };
  printf("* comk3119 start *\n");
  sub(a);
  printf("******************\n");
  sub2( );
  printf("* comk3119 end   *\n");
}

int i;

int 
url019 (void)
{
  int sum=0;
  printf("***** unroll019 ***** unroll 0 never 1 not 0\n");
  for(i=0;i<10;i++) {
    subu();
    sum=sum+i;
  }
  if( sum == 25 ) {
    puts("ok");
  }
  else {
    puts("ng");
  }
  printf("***** unroll019 ***** end\n");
}

int 
subu (void)
{
    i++;
}

#define ZERO (double)0.0

int 
estreg19 (void)
{
  int i, j;
  double a[50], b[50];
  double p=ZERO, q=ZERO, s=ZERO, f=ZERO;

  for (i=0; i<50; i++) {
    a[i] = (double)i/(double)5.0;
    b[i] = (double)i/(double)20.0;
  }

  for (i=0; i<50; i++) {
    switch (i%10) {
    case 0: case 1:
      f = f + a[i];
      break;
    case 2: case 3:
      f = f + b[i];
      break;
    case 4: case 5:
      f = f - a[i];
      break;
    case 6: case 7:
      f = f - b[i];
      break;
    default:
      f = f + (a[i] - b[i]);
      break;
    }
  }

  for (i=0; i<50; i++) {
    q = f;
    s = s + q;
    q = p;
    p = q + f;
    
  }

  printf("sum1 = %lf\n", p);
  printf("sum2 = %lf\n", s);
}

int MAX_UINT_BITS ;
int 
comb19 (void)
{
  unsigned int foo;
  
  foo = gen_int (-1);
#if INT64
  MAX_UINT_BITS = gen_int(64);
#else
  MAX_UINT_BITS = gen_int(32);
#endif
  foo <<= (MAX_UINT_BITS - 2);
  foo >>= (MAX_UINT_BITS - 2);
  foo <<= (MAX_UINT_BITS - 2);
  foo >>= (MAX_UINT_BITS - 2);
  foo <<= (MAX_UINT_BITS - 2);
  foo >>= (MAX_UINT_BITS - 2);
  foo <<= (MAX_UINT_BITS - 2);
  foo >>= (MAX_UINT_BITS - 2);
  foo <<= (MAX_UINT_BITS - 2);
  foo >>= (MAX_UINT_BITS - 2);
  foo <<= (MAX_UINT_BITS - 2);
  foo >>= (MAX_UINT_BITS - 2);
  foo <<= (MAX_UINT_BITS - 2);
  foo >>= (MAX_UINT_BITS - 2);
  foo <<= (MAX_UINT_BITS - 2);
  foo >>= (MAX_UINT_BITS - 2);
  foo <<= (MAX_UINT_BITS - 2);
  foo >>= (MAX_UINT_BITS - 2);
  foo <<= (MAX_UINT_BITS - 2);
  foo >>= (MAX_UINT_BITS - 2);
  foo <<= (MAX_UINT_BITS - 2);
  foo >>= (MAX_UINT_BITS - 2);
  foo <<= (MAX_UINT_BITS - 2);
  foo >>= (MAX_UINT_BITS - 2);
  foo <<= (MAX_UINT_BITS - 2);
  foo >>= (MAX_UINT_BITS - 2);
  foo <<= (MAX_UINT_BITS - 2);
  foo >>= (MAX_UINT_BITS - 2);
  foo <<= (MAX_UINT_BITS - 2);
  foo >>= (MAX_UINT_BITS - 2);
  foo <<= (MAX_UINT_BITS - 2);
  foo >>= (MAX_UINT_BITS - 2);
  foo <<= (MAX_UINT_BITS - 2);
  foo >>= (MAX_UINT_BITS - 2);
  foo <<= (MAX_UINT_BITS - 2);
  foo >>= (MAX_UINT_BITS - 2);
  foo <<= (MAX_UINT_BITS - 2);
  foo >>= (MAX_UINT_BITS - 2);
  foo <<= (MAX_UINT_BITS - 2);
  foo >>= (MAX_UINT_BITS - 2);

  if (foo != 3)
    {
      printf(" NGNGNG \n");
    }else{
      printf(" OKOKOK \n");
    }
}
int 
gen_int (int a)
{
  return a;
}

int i1;
int i2;
int i3;
int i4;
int i5;
int i6;
int i7;
int i88;
int i9;
int i10;
int i11;
int i12;
int i13;
int i14;
int i15;
int i16;

int 
expr19 (void)
{
  int i,a;
  a=get_int(1);
  
  i = (i1 * i2) + (i1 * i3) + (i1 * i4) + (i1 * i5) + (i1 * i6) + (i1 * i7)
    + (i1 * i88) + (i1 * i9) + (i1 * i10) + (i1 * i11) + (i1 * i12)
       + (i1 * i13) + (i1 * i14) + (i1 * i15) + (i1 * i16);

  if(i!=135){
    printf(" NGNGNG %d\n",a);
  }else{
    printf(" OKOKOK %d\n",a);
  }
  return 0;
}
int 
get_int (int a)
{
  i1 = 1;
  i2 = 2;
  i3 = 3;
  i4 = 4;
  i5 = 5;
  i6 = 6;
  i7 = 7;
  i88= 8;
  i9 = 9;
  i10 = 10;
  i11 = 11;
  i12 = 12;
  i13 = 13;
  i14 = 14;
  i15 = 15;
  i16 = 16;

  return a;
}

#include <stdio.h>
int subhr019(int a[],int b[])
{
    int i,j=0;
    j=j+1;	
    i=0;
    do { a[i] = 0; i++; } while( i<10 );
    j=j+1;	   
    i=0;
    do { b[i] = 0; i++; } while( i<10 );
    printf("%d \n",j);
}
int 
hr019 (void)
{
    int a[10],b[10];
    subhr019(a,b);
}
int 
main (void) {
  dpmk2019( );
  scn1219( );  
  mptest19( );
  scpa019( );
  cdpm0019( );
  comk3119( );
  url019( );
  estreg19( );
  comb19( );
  expr19( );
  hr019( );
}
