#include  <stdio.h>
int ok();
struct tag {
  int a;
  int b;
};
static int sumi=0;
static double sumd=0;
static struct tag sumst={0,0};
void sub(int i)
{
     sumi +=i;
}
void sub1(double i)
{
     sumd +=i;
}
void sub2(struct tag i)
{
  sumst.a += i.a;
  sumst.b += i.b;
}

extern        volatile int         gei1;
extern  const volatile int         gei2;
              volatile int         gi1=0;
        const volatile int         gi2=1;
              volatile int        *gp1=&gi1;
        const volatile int        *gp2=&gi2;
static        volatile int        *gp4=&gi1;
static  const volatile int        *gp5=&gi2;
              volatile short int   gi3=0;
        const volatile short int   gi4=1;
              volatile double      gd1=0;
        const volatile double      gd2=1;
              volatile struct tag  gs1={2,3};
        const volatile struct tag  gs2={4,5};
int main()
{
                       int         dummy=2;
              volatile int         i1=0;
        const volatile int         i2=1;
              volatile int        *p1=&dummy;
        const volatile int        *p2=&dummy;
              volatile int        *p4=&dummy;
              volatile int        *p5=&dummy;
              volatile short int   i3=0;
        const volatile short int   i4=1;
              volatile double      d1=0;
        const volatile double      d2=1;
              volatile struct tag  s1={0,2};
        const volatile struct tag  s2={1,3};

        int i;
        for(i=0;i<10;i++) sub(i1);
        for(i=0;i<10;i++) sub(i2);
        for(i=0;i<10;i++) sub(*p1);
        for(i=0;i<10;i++) sub(*p2);
        for(i=0;i<10;i++) sub(*p4);
        for(i=0;i<10;i++) sub(*p5);
        for(i=0;i<10;i++) sub(i3);
        for(i=0;i<10;i++) sub(i4);
        for(i=0;i<10;i++) sub1(d1);
        for(i=0;i<10;i++) sub1(d2);
        for(i=0;i<10;i++) sub2(s1);
        for(i-0;i<10;i++) sub2(s2);
        for(i=0;i<10;i++) sub(gi1);
        for(i=0;i<10;i++) sub(gi2);
        for(i=0;i<10;i++) sub(*gp1);
        for(i=0;i<10;i++) sub(*gp2);
        for(i=0;i<10;i++) sub(*gp4);
        for(i=0;i<10;i++) sub(*gp5);
        for(i=0;i<10;i++) sub(gi3);
        for(i=0;i<10;i++) sub(gi4);
        for(i=0;i<10;i++) sub1(gd1);
        for(i=0;i<10;i++) sub1(gd2);
        for(i=0;i<10;i++) sub2(gs1);
        for(i-0;i<10;i++) sub2(gs2);
        ok();
}
int ok()
{
    if( sumi == 140 && sumd == 20 && sumst.a == 20 && sumst.b == 50 )
      puts(" OK ");
    else
      puts(" NG ");
    printf("%d \n",sumi);
    printf("%s%f \n","",sumd);
    printf("%d \n",sumst.a);
    printf("%d \n",sumst.b);
    return 0;
}
