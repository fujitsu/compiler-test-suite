#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int test3 (void);
int test2 (void);
int test1 (void);
  
  
  
  
  
  
  
  


 extern double d=1.25;
 typedef void v_type;
 void *exvp,(*exvfp)();
 void vf();
 extern void *exvp,(*exvfp)();
 void extern vf();
 static void *stvp,(*stvfp)();
 void static stvf();
 struct tag {
      int a;
      void *memvp;
 } exst;
int main (void)
 {
 printf(" ***  test start *** \n");
 test1();
 test2();
 test3();
 printf(" ***  test end *** \n");
exit (0);
 }

 int test1 (void)
 {
 void vf(double);
 v_type (*vfp)(),*voidp(void);
 v_type register *vp;
 extern short sf();

 vf(d);
 if (d != 2.5)
     printf(" ***  test 1 error ***\n");

 vfp=(void(*)())sf;
 (*vfp)(1.25);
 if (d != 1.25)
     printf(" ***  test 2 error ***\n");

 vp = exvp;  stvp = vp;
 if (exvp != stvp)
     printf(" ***  test 3 error ***\n");

 exst.memvp = vp;
 if (exst.memvp != exvp)
     printf(" ***  test 4 error ***\n");

 if (voidp() != stvp)
     printf(" ***  test 5 error ***\n");
 }

 int test2 (void)
 {
 void *avp=exvp;

 if (avp != stvp)
     printf(" ***  test 6 error ***\n");

 exvfp = vf;
 (*exvfp)(0.0);
 if (d != 1.25)
     printf(" ***  test 7 error ***\n");
 }

 int test3 (void)
 {
 void *avp;
 avp = exvp;
 stvfp = stvf;
 (*stvfp)(avp);
 if (d != 2.5)
     printf(" ***  test 8 error ***\n");
 }

 void static 
stvf (void *p)
 {
 if (p != stvp)
     printf(" ***  test 9 error ***\n");
 d += d;
 return;
 }

 v_type vf(double x)
 {
 d = d + x;
 return;
 }

 short sf(double x)
 {
 d = d - x;
 return d;
 }

 void *voidp(void)
 {
 auto void *vp;
 vp = exvp;
 return vp;
 }

