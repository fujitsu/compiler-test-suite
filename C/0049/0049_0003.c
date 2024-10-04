#include <stdio.h>
int subz(void *p, void *q);
int test(int a, int b, int c, int d);
int func1();

#include <string.h>

int renaming02()
{
  int i, j;
  int x, y=0, z=0, w;

  for ( i = 0, j = 10; i < 20; i++, j++ ) {
    x = i + j;
    y = y + x + i;
    w = memcmp( &x, &y, sizeof(int) );
    if (w!=0) {
      x = i;
    }
    else {
      x = w * i;
    }
    z = z + x + j;
  }
  
  printf( "y = %d   ", y );
  if ( y == 770 )
    printf( "--- OK\n" );
  else
    printf( "--- NG\n" );

  printf( "z = %d   ", z );
  if ( z == 580 )
    printf( "--- OK\n" );
  else
    printf( "--- NG\n" );
}

int estreg02()
{
   int i, j;
   int p=0, pp=0, q=0, r=0, s=0, t=0, u=0, v=0, w=0, x=0, y=0, z=0;
   int e=0, b=0;
   int N=50;
   int a[50], c[50];

  for ( i = 0; i < N; i++ ) {
    a[i] = i*i % 5;
    c[i] = i % 3;
  }

  
  for ( i = 0; i < N; i++ ) {
    for ( j = 0; j < N; j++ ) {
      p = p + (a[i]-c[j]);
      pp = pp + c[j];
    }
    pp = pp - c[i];
  }

  
  for ( i = 0; i < N; i++ )
    if ( i%2 == 0 )
      q = q + a[i];

  
  for ( i = 0; i < N; i++ ) {
    r = r + a[i]; 
    if ( i%2 == 0 )
      r = r + i;
  }

  
  for ( i = 0; i < N; i++ ) {
    if ( i%2 == 0 )
      s = s + i;
    s = s + a[i]; 
  }

  
  for ( i = 0; i < N; i++ ) {
    if ( i%2 == 0 )
      b = b + t + i;
    t = t + a[i]; 
  }

  
  for ( i = 0; i < N; i++ ) {
    u = u + a[i]; 
    if ( i%2 == 0 )
      b = b + u + i;
  }

  
  for ( i = 0; i < N; i++ ) {
    v = v + a[i]; 
    if ( i%2 == 0 )
      b += i + a[i];
  }

  
  for ( i = 0; i < N; i++ ) {
    if ( i%2 == 0 )
      b += i - a[i];
    w = w + a[i]; 
  }

  
  for ( i = 0; i < N; i++ ) {
    for ( j = 0; j < N; j++ ) {
      y = x;
      x = y + c[i];
    }
  }

  
  for ( i = 0; i < N; i++ ) {
    for ( j = 0; j < N; j++ ) {
      z = e;
      e = z + a[i];
      z = z + c[i];
    }
  }

  printf( "p  = %d\n", p ); 
  printf( "pp = %d\n", pp ); 
  printf( "q  = %d\n", q ); 
  printf( "r  = %d\n", r ); 
  printf( "s  = %d\n", s ); 
  printf( "t  = %d\n", t ); 
  printf( "u  = %d\n", u ); 
  printf( "v  = %d\n", v ); 
  printf( "w  = %d\n", w ); 
  printf( "x  = %d\n", x ); 
  printf( "y  = %d\n", y ); 
  printf( "z  = %d\n", z ); 
  printf( "e  = %d\n", e ); 

  if ( p == 2550 && pp == 2401 )
    printf( "***** LOOP1 OK *****\n" );
  else
    printf( "***** LOOP1 NG *****\n" );

  if ( q == 50 )
    printf( "***** LOOP2 OK *****\n" );
  else
    printf( "***** LOOP2 NG *****\n" );

  if ( r == 700 )
    printf( "***** LOOP3 OK *****\n" );
  else
    printf( "***** LOOP3 NG *****\n" );

  if ( s == 700 )
    printf( "***** LOOP4 OK *****\n" );
  else
    printf( "***** LOOP4 NG *****\n" );

  if ( t == 100 )
    printf( "***** LOOP5 OK *****\n" );
  else
    printf( "***** LOOP5 NG *****\n" );

  if ( u == 100 )
    printf( "***** LOOP6 OK *****\n" );
  else
    printf( "***** LOOP6 NG *****\n" );

  if ( v == 100 )
    printf( "***** LOOP7 OK *****\n" );
  else
    printf( "***** LOOP7 NG *****\n" );

  if ( w == 100 )
    printf( "***** LOOP8 OK *****\n" );
  else
    printf( "***** LOOP8 NG *****\n" );

  if ( x == 2450 && y == 2449 )
    printf( "***** LOOP9 OK *****\n" );
  else
    printf( "***** LOOP9 NG *****\n" );

  if ( z == 5000 && e == 5000 )
    printf( "***** LOOP10 OK *****\n" );
  else
    printf( "***** LOOP10 NG *****\n" );
 }

#if INT64
void func ( signed __int32 v1, unsigned __int32 v2 ) ;

foldshift02(){
  signed __int32  value=0x93365678 ;
  func ( value , (unsigned __int32) value ) ;
}
void func(a1,u1) 
     signed __int32 a1 ;
     unsigned __int32 u1 ;
{
  signed __int32 a2,a3;
  unsigned __int32 u2,u3;
#else
void func ( signed int v1, unsigned int v2 ) ;

int foldshift02(){
  signed int  value=0x93365678 ;
  func ( value , (unsigned int) value ) ;
}
void func(a1,u1) 
     signed int a1 ;
     unsigned int u1 ;
{
  signed int a2,a3 ;
  unsigned int u2,u3 ;
#endif
  printf (" starts. Need not to confirm optimization. Result check is enough.\n mask op. is \"or\" : no optimize\n") ;

  u2=((u1>>25)|0x550)*8 ;
  u3=((u1>>25)|0x550)*9 ;

  a2=((a1>>25)|0x550)*8 ;
  a3=((a1>>25)|0x550)*9 ;

  printf ("   ") ;
#if INT64
  if ( u2==0x2ac8 && u3==0x3021 && a2==-312 && a3==-351 ) {
#else
  if ( u2==0x2ac8 && u3==0x3021 && a2==0xfffffec8 && a3==0xfffffea1 ) {
#endif
    printf ("OK\n") ;
  } else {
    printf ("NG\n") ;
  }
}

#include  <stdio.h>

struct estr {
int x;
int y;
int a[11];
};
struct west {
int b[10];
int z;
float w;
};
struct estr *pint1;
struct estr *pint2;
struct west *pint3;
int m3mprd02()
{
  printf("M3MPRD02 START\n");
  func1();                           
  printf("M3MPRD02 END  \n");
}
int func1()
{
  static  char stat1[21] ={0,0,0,0,0,
                          0,0,0,0,0,
                          0,0,0,0,0,
                          0,0,0,0,0,
                          0         };
  char *ap ;
  struct estr ea;
  struct west eb;
  int  num;
  pint1=&ea;
  pint2=pint1;
  pint3=&eb;
  num=5;
  pint1->a[num]=20;
  pint3->b[num]=20;
  num=1;
  pint2->a[num]=10;
  num=pint2->a[num];
  if (num==10) printf("m3mprd02 ok\n");
  else
  printf("m3mprd02 ng\n");
  pint2->a[num]=10;
  num=pint1->a[num];
  pint3->b[3]=num;
  if (pint3->b[3]==10) printf("m3mprd02 ok\n");
  else
  printf("m3mprd02 ng\n");
  return 0;
}

int iemk2002 ( ) {
 volatile float        f1,f2,f3;
 volatile double       d1,d2,d3;
 volatile long double  x1,x2,x3;
 
 f1=0.0f;
 d1=0.0 ;
 x1=0.0l;

 
 f2=2.0f;
 f3=f2 + 0.0f;
               if (f3==2.0f) printf("iemk2002-(01) ok\n");
               else          printf("iemk2002-(01) ng\n");                           
 f2=3.0f;
 f3= 0.0f + f2;
               if (f3==3.0f) printf("iemk2002-(02) ok\n");
               else          printf("iemk2002-(02) ng\n");                           
 d2=2.0 ;
 d3=d2 + 0.0 ;
               if (d3==2.0 ) printf("iemk2002-(03) ok\n");
               else          printf("iemk2002-(03) ng\n");                           
 d2=3.0 ;
 d3= 0.0  + d2;
               if (d3==3.0 ) printf("iemk2002-(04) ok\n");
               else          printf("iemk2002-(04) ng\n");                           
 
 f2=5.0f;
 f3=f2 - 0.0f;
               if (f2==5.0f) printf("iemk2002-(05) ok\n");
               else          printf("iemk2002-(05) ng\n");                           
 f2=5.0f;
 f3= 0.0f - f2;
               if (f2==5.0f) printf("iemk2002-(06) ok\n");
               else          printf("iemk2002-(06) ng\n");                           
 d2=5.0 ;
 d3=d2 - 0.0 ;
               if (d2==5.0 ) printf("iemk2002-(07) ok\n");
               else          printf("iemk2002-(07) ng\n");                           
 d2=5.0 ;
 d3= 0.0  - d2;
               if (d2==5.0 ) printf("iemk2002-(08) ok\n");
               else          printf("iemk2002-(08) ng\n");                           
}

#include <stdio.h>

int mreg0002() {
int a,b,c,d ;
a = test(1,2,3,4) ;
printf(" mreg0002 result = %d \n",a) ;
if( a == 23 )  
  printf(" ** OK ** \n") ;
else
  printf(" ** NG ** \n") ;
}
int test(a,b,c,d)
int a,b,c,d ;
{
  a = b + c ;
  b = a + d ;
  c = b + a ;
  d = c + b ;
  return(d) ;
}

#include  <stdio.h>
int cb1aflc2 ( ) {
  long double r16a = 5.01;
  long double r16b;
  static long double a = 10.0,b = 0.1;
  r16b = r16a * 2.01;
  if (r16b > 9.91 && r16b<10.11) printf("OK- 1\n");
  else printf("NG- 1\n");

  subz(&a,&b);
  if (a == 10.0) printf("OK- 2\n");
  else           printf("NG- 2\n");
  if (b == 0.1)  printf("OK- 3\n");
  else           printf("NG- 3\n");
}

int subz(p,q)
void *p,*q;
{
}

#include <setjmp.h>
long int zz=0xffff0000;
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

sub1: x &= zz;
     
     
     
     
      longjmp(env,1);
sub2: x ^= zz;
     
     
     
     
      longjmp(env,1);
sub3: x |= zz;
     
     
     
     
      longjmp(env,1);
}

  

    signed         char i1;  
    signed  short  int  i2;  
    signed         int  i4;  
    signed  long long   int  i8;  
  unsigned         char u1;  
  unsigned  short  int  u2;  
  unsigned         int  u4;  
  unsigned  long long   int  u8;  
    signed         char ai1[10];  
    signed  short  int  ai2[10];  
    signed         int  ai4[10];  
    signed  long long   int  ai8[10];  
  unsigned         char au1[10];  
  unsigned  short  int  au2[10];  
  unsigned         int  au4[10];  
  unsigned  long long   int  au8[10];  
    signed         char *pi1;  
    signed  short  int  *pi2;  
    signed         int  *pi4;  
    signed         int  *pi8;  
  unsigned         char *pu1;  
  unsigned  short  int  *pu2;  
  unsigned         int  *pu4;
  unsigned         int  *pu8;
  struct  a {
      signed         char r_ai1[10];  
  } *si1;
  struct  b {
      signed  short  int  r_ai2[10];  
  } *si2;
  struct  c {
      signed         int  r_ai4[10];  
  } *si4;
  struct  d {
    unsigned         char r_au1[10];  
  } *su1;
  struct  e {
    unsigned  short  int  r_au2[10];  
  } *su2;
  struct  f {
    unsigned         int  r_au4[10];  
  } *su4;
  struct  g {
    signed         int  r_ai8[10];  
  } *si8;
  struct  h {
    unsigned         int  r_au8[10];  
  } *su8;
    signed         char pi1_area[sizeof(signed char)];  
    signed  short  int  pi2_area[sizeof(signed short int)];  
    signed         int  pi4_area[sizeof(signed int)];  
    signed  long long   int  pi8_area[sizeof(signed long long int)];  
  unsigned         char pu1_area[sizeof(unsigned char)];  
  unsigned  short  int  pu2_area[sizeof(unsigned short int)];  
  unsigned         int  pu4_area[sizeof(unsigned int)];
  unsigned  long long   int  pu8_area[sizeof(unsigned long long int)];  
  struct a              si1_area;  
  struct b              si2_area;  
  struct c              si4_area;  
  struct g              si8_area;  
  struct d              su1_area;  
  struct e              su2_area;  
  struct f              su4_area;  
  struct h              su8_area;  
  int              i;
int kaimk2002 ( ) {
                       for (i=0;i<10;i++) ai1[i]='a';
  i1 = ai1[1];
                       if (i1=='a') printf("** dpmk2002-(1) ** OK\n");
                       else         printf("** dpmk2002-(1) ** NG i1=%c\n", i1);                                
                       pi1=pi1_area;
                       *pi1=ai1[0];
  i1 = *pi1; 
                       if (i1=='a') printf("** dpmk2002-(2) ** OK\n");
                       else         printf("** dpmk2002-(2) ** NG i1=%c\n", i1);                                
                       si1=&si1_area;
                       for (i=0;i<10;i++) si1->r_ai1[i]='c';i=0;
  i1 = si1->r_ai1[i];  
                       if (i1=='c') printf("** dpmk2002-(3) ** OK\n");
                       else         printf("** dpmk2002-(3) ** NG i1=%c\n", i1);                                
                       for (i=0;i<10;i++) ai2[i]=10;
  i2 = ai2[1];         
                       if (i2==10)  printf("** dpmk2002-(4) ** OK\n");
                       else         printf("** dpmk2002-(4) ** NG i2=%d\n", i2);                                
                       pi2=pi2_area;
                       *pi2=ai2[0];
  i2 = *pi2;                   
                       if (i2==10    ) printf("** dpmk2002-(5) ** OK\n");
                       else          printf("** dpmk2002-(5) ** NG i2=%d\n", i2);                                
                       si2=&si2_area;
                       for (i=0;i<10;i++) si2->r_ai2[i]=101;i=0;
  i2 = si2->r_ai2[i];  
                       if (i2==101) printf("** dpmk2002-(6) ** OK\n");
                       else         printf("** dpmk2002-(6) ** NG i2=%d\n", i2);                                
                       for (i=0;i<10;i++) ai4[i]=2;
  i4 = ai4[1];         
                       if (i4==2 )  printf("** dpmk2002-(7) ** OK\n");
                       else         printf("** dpmk2002-(7) ** NG i4=%d\n", i4);                                
                       pi4=pi4_area;
                       *pi4=ai4[0];
  i4 = *pi4;                   
                       if (i4==2) printf("** dpmk2002-(8) ** OK\n");
                       else                printf("** dpmk2002-(8) ** NG i4=%d\n", i4);                                
                       si4=&si4_area;
                       for (i=0;i<10;i++) si4->r_ai4[i]=222;i=2;
  i4 = si4->r_ai4[i];  
                       if (i4==222) printf("** dpmk2002-(9) ** OK\n");
                       else         printf("** dpmk2002-(9) ** NG i4=%d\n", i4);                                
                       for (i=0;i<10;i++) au1[i]='d';
  u1 = au1[1];
                       if (u1=='d') printf("** dpmk2002-(10) ** OK\n");
                       else         printf("** dpmk2002-(10) ** NG u1=%c\n", u1);                                
                       pu1=pu1_area;
                       *pu1=au1[0];
  u1 = *pu1; 
                       if (u1=='d') printf("** dpmk2002-(11) ** OK\n");
                       else         printf("** dpmk2002-(11) ** NG u1=%c\n", u1);                                
                       su1=&su1_area;
                       for (i=0;i<10;i++) su1->r_au1[i]='f';i=0;
  u1 = su1->r_au1[i];  
                       if (u1=='f') printf("** dpmk2002-(12) ** OK\n");
                       else         printf("** dpmk2002-(12) ** NG u1=%c\n", u1);                                
                       for (i=0;i<10;i++) au2[i]=10;
  u2 = au2[1];         
                       if (u2==10)  printf("** dpmk2002-(13) ** OK\n");
                       else         printf("** dpmk2002-(13) ** NG u2=%d\n", u2);                                
                       pu2=pu2_area;
                       *pu2=au2[0];
  u2 = *pu2;                   
                       if (u2==10) printf("** dpmk2002-(14) ** OK\n");
                       else        printf("** dpmk2002-(14) ** NG u2=%d\n", u2);                                
                       su2=&su2_area;
                       for (i=0;i<10;i++) su2->r_au2[i]=111;i=0;
  u2 = su2->r_au2[i];  
                       if (u2==111) printf("** dpmk2002-(15) ** OK\n");
                       else         printf("** dpmk2002-(15) ** NG u2=%d\n", u2);                                
                       for (i=0;i<10;i++) au4[i]=3;
  u4 = au4[1];         
                       if (u4==3 )  printf("** dpmk2002-(16) ** OK\n");
                       else         printf("** dpmk2002-(16) ** NG u4=%d\n", u4);                                
                       pu4=pu4_area;
                       *pu4=au4[0];
  u4 = *pu4;                   
                       if (u4==3 )  printf("** dpmk2002-(17) ** OK\n");
                       else         printf("** dpmk2002-(17) ** NG u4=%d\n", u4);                                
                       su4=&su4_area;
                       for (i=0;i<10;i++) su4->r_au4[i]=111;i=2;
  u4 = su4->r_au4[i];  
                       if (u4==111) printf("** dpmk2002-(18) ** OK\n");
                       else         printf("** dpmk2002-(18) ** NG u4=%d\n", u4);                                
                       for (i=0;i<10;i++) ai8[i]=3;
  i8 = ai8[1];         
                       if (i8==3 )  printf("** kaimk2002-(16) ** OK\n");
                       else         printf("** kaimk2002-(16) ** NG i8=%d\n", i8);                                
                       pi8=pi8_area;
                       *pi8=ai8[0];
  i8 = *pi8;                   
                       if (i8==3 )  printf("** kaimk2002-(17) ** OK\n");
                       else         printf("** kaimk2002-(17) ** NG i8=%d\n", i8);                                
                       si8=&si8_area;
                       for (i=0;i<10;i++) si8->r_ai8[i]=111;i=2;
  i8 = si8->r_ai8[i];  
                       if (i8==111) printf("** kaimk2002-(18) ** OK\n");
                       else         printf("** kaimk2002-(18) ** NG i8=%d\n", i8);                                
                       for (i=0;i<10;i++) au8[i]=3;
  u8 = au8[1];         
                       if (u8==3 )  printf("** kaimk2002-(16) ** OK\n");
                       else         printf("** kaimk2002-(16) ** NG u8=%d\n", u8);                                
                       pu8=pu8_area;
                       *pu8=au8[0];
  u8 = *pu8;                   
                       if (u8==3 )  printf("** kaimk2002-(17) ** OK\n");
                       else         printf("** kaimk2002-(17) ** NG u8=%d\n", u8);                                
                       su8=&su8_area;
                       for (i=0;i<10;i++) su8->r_au8[i]=111;i=2;
  u8 = su8->r_au8[i];  
                       if (u8==111) printf("** kaimk2002-(18) ** OK\n");
                       else         printf("** kaimk2002-(18) ** NG u8=%d\n", u8);                                
}  

long long int z[3][3][3];
volatile long long int y[3][3][3];

void display(long double a) {
  printf("%Lf ",a);
}
void display2(long long int a) {
  printf("(%.8x-%.8x) ",*((int *)&a),*(((int *)&(a))+1));
}
void subleft(long double a[ ][3][3]) {

  volatile int i,j,k;
  for (i=0; i<3; i++ )    
    for (j=0; j<3; j++)    
      for (k=0; k<3; k++) {           

        switch((long long int)a[i][j][k]){
          case 9223372036854775781LL : z[i+2][j][k]= a[i][j][k]; break;
          case 9223372036854775782LL : z[i+2][j][k]= a[i][j][k]; break;
          case 9223372036854775783LL : z[i+2][j][k]= a[i][j][k]; break;
          case 9223372036854775784LL : z[i+2][j][k]= a[i][j][k]; break;
          case 9223372036854775785LL : z[i+2][j][k]= a[i][j][k]; break;
          case 9223372036854775786LL : z[i+2][j][k]= a[i][j][k]; break;
          case 9223372036854775787LL : z[i+2][j][k]= a[i][j][k]; break;
          case 9223372036854775788LL : z[i+2][j][k]= a[i][j][k]; break;
          case 9223372036854775789LL : z[i+2][j][k]= a[i][j][k]; break;
          case 9223372036854775790LL : z[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775791LL : z[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775792LL : z[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775793LL : z[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775794LL : z[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775795LL : z[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775796LL : z[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775797LL : z[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775798LL : z[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775799LL : z[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775800LL : z[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775801LL : z[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775802LL : z[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775803LL : z[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775804LL : z[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775805LL : z[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775806LL : z[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775807LL : z[i-1][j][k]= a[i][j][k]; break;
          default      : printf("comk3122 ng\n");
        } 
      } 
}
void subright(volatile const  long double a[ ][3][3]) {

  int i,j,k;
  for (i=0; i<3; i++ )    
    for (j=0; j<3; j++)    
      for (k=0; k<3; k++) {           

        switch((long long int)a[i][j][k]){
          case 9223372036854775781LL : y[i+2][j][k]= a[i][j][k]; break;
          case 9223372036854775782LL : y[i+2][j][k]= a[i][j][k]; break;
          case 9223372036854775783LL : y[i+2][j][k]= a[i][j][k]; break;
          case 9223372036854775784LL : y[i+2][j][k]= a[i][j][k]; break;
          case 9223372036854775785LL : y[i+2][j][k]= a[i][j][k]; break;
          case 9223372036854775786LL : y[i+2][j][k]= a[i][j][k]; break;
          case 9223372036854775787LL : y[i+2][j][k]= a[i][j][k]; break;
          case 9223372036854775788LL : y[i+2][j][k]= a[i][j][k]; break;
          case 9223372036854775789LL : y[i+2][j][k]= a[i][j][k]; break;
          case 9223372036854775790LL : y[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775791LL : y[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775792LL : y[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775793LL : y[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775794LL : y[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775795LL : y[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775796LL : y[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775797LL : y[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775798LL : y[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775799LL : y[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775800LL : y[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775801LL : y[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775802LL : y[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775803LL : y[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775804LL : y[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775805LL : y[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775806LL : y[i-1][j][k]= a[i][j][k]; break;
          case 9223372036854775807LL : y[i-1][j][k]= a[i][j][k]; break;
          default      : printf("comk3122 ng\n");
        } 
      } 
}
int subcmp( ) {
  int i,j,k;
  int ng=0;
  for (i=0; i<3; i++)    
    for (j=0; j<3; j++)    
      for (k=0; k<3; k++)           
        if (y[i][j][k]==z[i][j][k]); else ng++;

  return(ng);
}
int comk3122 ( ) {
volatile  const static long double a[3][3][3]={   
  {
    {9223372036854775781.0L,9223372036854775782.0L,9223372036854775783.0L}
   ,{9223372036854775784.0L,9223372036854775785.0L,9223372036854775786.0L}
   ,{9223372036854775787.0L,9223372036854775788.0L,9223372036854775789.0L}
    
    
    
  },
  {
    {9223372036854775790.0L,9223372036854775791.0L,9223372036854775792.0L}
   ,{9223372036854775793.0L,9223372036854775794.0L,9223372036854775795.0L}
   ,{9223372036854775796.0L,9223372036854775797.0L,9223372036854775798.0L}
    
    
    
  },
  {
    {9223372036854775799.0L,9223372036854775800.0L,9223372036854775801.0L}
   ,{9223372036854775802.0L,9223372036854775803.0L,9223372036854775804.0L}
   ,{9223372036854775805.0L,9223372036854775806.0L,9223372036854775807.0L}
    
    
    
  } 
                  };
long double b[3][3][3]={   
  {
    {9223372036854775781.0L,9223372036854775782.0L,9223372036854775783.0L}
   ,{9223372036854775784.0L,9223372036854775785.0L,9223372036854775786.0L}
   ,{9223372036854775787.0L,9223372036854775788.0L,9223372036854775789.0L}
    
    
    
  },
  {
    {9223372036854775790.0L,9223372036854775791.0L,9223372036854775792.0L}
   ,{9223372036854775793.0L,9223372036854775794.0L,9223372036854775795.0L}
   ,{9223372036854775796.0L,9223372036854775797.0L,9223372036854775798.0L}
    
    
    
  },
  {
    {9223372036854775799.0L,9223372036854775800.0L,9223372036854775801.0L}
   ,{9223372036854775802.0L,9223372036854775803.0L,9223372036854775804.0L}
   ,{9223372036854775805.0L,9223372036854775806.0L,9223372036854775807.0L}
    
    
    
  } 
                  };
  subright(a);
  subleft(b);
  if (subcmp( )) printf("comk3122 ng\n");
  else            printf("comk3122 ok\n");
}
int main( ) {
  renaming02( );
  estreg02( );
  foldshift02( );
  m3mprd02( );
  iemk2002( );
  mreg0002( );
  comk3112( );
  cb1aflc2( );
  kaimk2002( );
  comk3122( );
}
