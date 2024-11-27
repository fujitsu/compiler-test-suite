#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int err_count=0 ;
static int f(int a,int b);
int main()
{

  struct a 
  { 
    int a0[2000];
    unsigned char a1:4 ;
    unsigned char a2:4 ; 
    unsigned char a3:2 ;
    unsigned char a4:4 ;
    unsigned char a5:2 ;
    unsigned char a6:8 ;
   } aa;

  struct b
  { 
    int b0[2000];
    signed char b1:4 ;
    signed char b2:4 ; 
    signed char b3:2 ;
    signed char b4:4 ; 
    signed char b5:2 ;
    signed char b6:8 ; 
   } bb;

  struct c
   {
    int c0[2000];
    unsigned short int c1:  8 ;
    unsigned short int c2:  4 ;
    unsigned short int c3:  4 ;
    unsigned short int c4: 12 ;
    unsigned short int c5:  4 ;
    unsigned short int c6: 10 ; 
    unsigned short int c7:  4 ; 
    unsigned short int c8:  2 ;  
    unsigned short int c9:  8 ;
    unsigned short int c10: 8 ;
   } cc;

  struct d
   {
    int d0[2000];
    signed short int d1:  4 ;
    signed short int d2:  8 ;
    signed short int d3:  4 ;
    signed short int d4:  4 ;
    signed short int d5: 12 ;
    signed short int d6: 12 ;
    signed short int d7:  4 ;
    signed short int d8: 16 ;
   } dd;

  struct e
   {
    int e0[2000];
    unsigned int e1:  8 ;
    unsigned int e2: 16 ;
    unsigned int e3:  8 ;  
    unsigned int e4: 16 ;  
    unsigned int e5: 16 ;  
   } ee;

  struct f
   {
    int f0[2000];
    signed int f1: 12 ;  
    signed int f2: 16 ;  
    signed int f3:  4 ;  
    signed int f4: 12 ;  
    signed int f5: 20 ;  
    signed int f6: 20 ;
    signed int f7: 12 ;  
   } ff;

  printf("*** bit-field test-2 start ***\n");

  aa.a1 = 1 ;
  aa.a2 = 1 ;
  aa.a3 = 1 ;
  aa.a4 = 1 ;
  aa.a5 = 1 ;
  aa.a6 = 1 ;
 
  bb.b1 = 1 ;
  bb.b2 = 1 ;
  bb.b3 = 1 ;
  bb.b4 = 1 ;
  bb.b5 = 1 ;
  bb.b6 = 1 ;

  cc.c1 = 1 ;
  cc.c2 = 1 ;
  cc.c3 = 1 ;
  cc.c4 = 1 ;
  cc.c5 = 1 ;
  cc.c6 = 1 ;
  cc.c7 = 1 ;
  cc.c8 = 1 ;
  cc.c9 = 1 ;
  cc.c10 = 1 ;

  dd.d1 = 1 ;
  dd.d2 = 1 ;
  dd.d3 = 1 ; 
  dd.d4 = 1 ;
  dd.d5 = 1 ;
  dd.d6 = 1 ; 
  dd.d7 = 1 ;
  dd.d8 = 1 ;

  ee.e1 = 1 ;  
  ee.e2 = 1 ;
  ee.e3 = 1 ;
  ee.e4 = 1 ;
  ee.e5 = 1 ;

  ff.f1 = 1 ;
  ff.f2 = 1 ;
  ff.f3 = 1 ;
  ff.f4 = 1 ;
  ff.f5 = 1 ;
  ff.f6 = 1 ;
  ff.f7 = 1 ;

  f( 1,aa.a1) ;
  f( 2,aa.a2) ;
  f( 3,aa.a3) ;
  f( 4,aa.a4) ;
  f( 5,aa.a5) ;
  f( 6,aa.a6) ;
 
  f( 7,bb.b1) ;
  f( 8,bb.b2) ;
  f( 9,bb.b3) ;
  f(10,bb.b4) ;
  f(11,bb.b5) ;
  f(12,bb.b6) ;

  f(13,cc.c1) ;
  f(14,cc.c2) ;
  f(15,cc.c3) ;
  f(16,cc.c4) ;
  f(17,cc.c5) ;
  f(18,cc.c6) ;
  f(19,cc.c7) ;
  f(20,cc.c8) ;
  f(21,cc.c9) ;
  f(22,cc.c10) ;

  f(23,dd.d1) ;
  f(24,dd.d2) ;
  f(25,dd.d3) ; 
  f(26,dd.d4) ;
  f(27,dd.d5) ;
  f(28,dd.d6) ; 
  f(29,dd.d7) ;
  f(30,dd.d8) ;

  f(31,ee.e1) ;  
  f(32,ee.e2) ;
  f(33,ee.e3) ;
  f(34,ee.e4) ;
  f(35,ee.e5) ;

  f(36,ff.f1) ;
  f(37,ff.f2) ;
  f(38,ff.f3) ;
  f(39,ff.f4) ;
  f(40,ff.f5) ;
  f(41,ff.f6) ;
  f(42,ff.f7) ;

  if( err_count == 0 ) printf("ok\n");
  printf("*** bit-field test-2 end   ***\n");
exit (0);
}

static int f(int a,int b)
{ 
  if (b!=1)
    {
      printf("*** ng ***  case-no=%3d  value=%5d\n",a,b);
      err_count ++ ; 
    }
  return 0;
}
