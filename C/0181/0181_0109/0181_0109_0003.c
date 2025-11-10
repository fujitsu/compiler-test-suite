

#include <stdio.h>

static void float_rounds()
{
  float f1=0x1.11111c4p+2f;   
  float f2=0x1.11111d8p+2f;   
  float f3=0x1.11111d4p+2f;   
  float f4=0x1.11111d0p+2f;   
  float f5=0x1.11111f0p+2f;   

  int *p1=&f1;
  int *p2=&f2;
  int *p3=&f3;
  int *p4=&f4;
  int *p5=&f5;

  printf("0 0 - - no 4088888e: %x\n",p1[0]);
  printf("0 1 1 - up 4088888f: %x\n",p2[0]);
  printf("0 1 0 1 up 4088888f: %x\n",p3[0]);
  printf("0 1 0 0 no 4088888e: %x\n",p4[0]);
  printf("1 1 0 0 up 40888890: %x\n",p5[0]);

  f1=0x1.0000004p+2f;     
  f2=0x1.0000018p+2f;     
  f3=0x1.00000100001p+2f; 
  f4=0x1.000001000p+2f;   
  f5=0x1.000003000p+2f;   
  printf("0 0 - - no 40800000: %x\n",p1[0]);
  printf("0 1 1 - up 40800001: %x\n",p2[0]);
  printf("0 1 0 1 up 40800001: %x\n",p3[0]);
  printf("0 1 0 0 no 40800000: %x\n",p4[0]);
  printf("1 1 0 0 up 40800002: %x\n",p5[0]);
}

static void double_rounds()
{

  double f1=0x1.111111111111e4p+2;   

  double f2=0x1.111111111111ecp+2;   

  double f3=0x1.111111111111e80001p+2;   

  double f4=0x1.111111111111e8p+2;   

  double f5=0x1.11111111111118p+2;   

  int *p1=&f1;
  int *p2=&f2;
  int *p3=&f3;
  int *p4=&f4;
  int *p5=&f5;


  printf("0 0 - - no 40111111 1111111e: %x %x\n",p1[0],p1[1]);
  printf("0 1 1 - up 40111111 1111111f: %x %x\n",p2[0],p2[1]);
  printf("0 1 0 1 up 40111111 1111111f: %x %x\n",p3[0],p3[1]);
  printf("0 1 0 0 no 40111111 1111111e: %x %x\n",p4[0],p4[1]);
  printf("1 1 0 0 up 40111111 11111112: %x %x\n",p5[0],p5[1]);


  f1=0x1.00000000000004p+2;       

  f2=0x1.0000000000000c0p+2;      

  f3=0x1.000000000000080001p+2;   

  f4=0x1.000000000000080000p+2;   

  f5=0x1.00000000000018p+2;       

  printf("0 0 - - no 40100000 00000000: %x %08x\n",p1[1],p1[0]);
  printf("0 1 1 - up 40100000 00000001: %x %08x\n",p2[1],p2[0]);
  printf("0 1 0 1 up 40100000 00000001: %x %08x\n",p3[1],p3[0]);
  printf("0 1 0 0 no 40100000 00000000: %x %08x\n",p4[1],p4[0]);
  printf("1 1 0 0 up 40100000 00000002: %x %08x\n",p5[1],p5[0]);

}

union UNI
{
  long double  r10;
  int i4[4];
  short i2[8];
};

static void sub(union UNI uni)
{
#if  defined(__aarch64__)
  if(uni.i4[0]==0x1111111e && uni.i4[1]==0x11111111 && uni.i4[2]==0x11111111 && uni.i4[3]==0x3fff1111)
#else
   if(uni.i2[4]==0x3fff && uni.i4[1]==0x88888888 && uni.i4[0]==0x88888889)
#endif
    printf("sub : ok\n");
   else
     printf("sub : ng %x %x %x\n", uni.i2[4],  uni.i4[1], uni.i4[0]);
}

static void sub2(union UNI uni)
{
#if  defined(__aarch64__)
  if(uni.i4[0]==0x1111111f && uni.i4[1]==0x11111111 && uni.i4[2]==0x11111111 && uni.i4[3]==0x3fff1111)
#else
   if(uni.i2[4]==0x3fff && uni.i4[1]==0x88888888 && uni.i4[0]==0x88888889)
#endif
    printf("sub2 : ok\n");
   else
     printf("sub2 : ng => %x %x %x %x\n", uni.i4[3], uni.i4[2], uni.i4[1], uni.i4[0] );
}

static void sub3(union UNI uni)
{
#if defined(__aarch64__)
  if(uni.i4[0]==0x11111112 && uni.i4[1]==0x11111111 && uni.i4[2]==0x11111111 && uni.i4[3]==0x3fff1111)
#else
   if(uni.i2[4]==0x3fff && uni.i4[1]==0x88888888 && uni.i4[0]==0x88888889)
#endif
    printf("sub3 : ok\n");
   else
    printf("sub3 : ng\n");
}

static void sub4(union UNI uni)
{
#if defined(__aarch64__)
  if(uni.i4[0]==0x0 && uni.i4[1]==0x0 && uni.i4[2]==0x0 && uni.i4[3]==0x3fff0000)
#else
   if(uni.i2[4]==0x3fff && uni.i4[1]==0x80000000 && uni.i4[0]==0x0)
#endif
    printf("sub4 : ok\n");
   else
    printf("sub4 : ng\n");
}

static void sub5(union UNI uni)
{
#if defined(__aarch64__)
  if(uni.i4[0]==0x1 && uni.i4[1]==0x0 && uni.i4[2]==0x0 && uni.i4[3]==0x3fff0000)
#else
   if(uni.i2[4]==0x3fff && uni.i4[1]==0x80000000 && uni.i4[0]==0x0)
#endif
    printf("sub5 : ok\n");
   else
    printf("sub5 : ng\n");
}

static void sub6(union UNI uni)
{
#if defined(__aarch64__)
  if(uni.i4[0]==0x2 && uni.i4[1]==0x0 && uni.i4[2]==0x0 && uni.i4[3]==0x3fff0000)
#else
   if(uni.i2[4]==0x3fff && uni.i4[1]==0x80000000 && uni.i4[0]==0x0)
#endif
    printf("sub6 : ok\n");
   else
    printf("sub6 : ng\n");
}

static void sub7(union UNI uni)
{
#if defined(__aarch64__)
  if(uni.i4[0]==0x0 && uni.i4[1]==0x0 && uni.i4[2]==0x0 && uni.i4[3]==0x3fff1000)
#else
   if(uni.i2[4]==0x3fff && uni.i4[1]==0x88000000 && uni.i4[0]==0x0)
#endif
    printf("sub7 : ok\n");
   else
    printf("sub7 : ng\n");
}

static void sub8(union UNI uni)
{
#if defined(__aarch64__)
  if(uni.i4[0]==0x0 && uni.i4[1]==0x0 && uni.i4[2]==0x0 && uni.i4[3]==0x0)
#else
   if(uni.i2[4]==0x0 && uni.i4[1]==0x0 && uni.i4[0]==0x0)
#endif
    printf("sub8 : ok\n");
  else
    printf("sub8 : ng\n");
}


static void longdouble_rounds()
{
  union UNI uni1,uni2,uni3,uni4,uni5,uni6,uni7;

  uni1.r10=0x1.111111111111111111111111111e7fp+0L;
  uni2.r10=0x1.111111111111111111111111111ec0p+0L;
  uni3.r10=0x1.111111111111111111111111111e8001p+0L;
  uni4.r10=0x1.111111111111111111111111111e800p+0L;
  uni5.r10=0x1.1111111111111111111111111111800p+0L;
  uni6.r10=0x1.1p+0L;
  uni7.r10=0x0.0p+0L;

  sub(uni1);
  sub2(uni2);
  sub2(uni3);
  sub(uni4);
  sub3(uni5);
  printf("\n");

  uni1.r10=0x1.00000000000000000000000000007fp+0L;
  uni2.r10=0x1.0000000000000000000000000000c0000000000000000p+0L;
  uni3.r10=0x1.00000000000000000000000000008001p+0L;
  uni4.r10=0x1.0000000000000000000000000000800p+0L;
  uni5.r10=0x1.0000000000000000000000000001800p+0L;

  sub4(uni1);
  sub5(uni2);
  sub5(uni3);
  sub4(uni4);
  sub6(uni5);
  sub7(uni6);
  sub8(uni7);

}

int lto_sub_4()
{
  printf("** ROUNDS TEST **\n\n");
  printf("L G R S    correct : answer\n");
  printf("--------------------------------\n");
  float_rounds();
  double_rounds();
  longdouble_rounds();
}
