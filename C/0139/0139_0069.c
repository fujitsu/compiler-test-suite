#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int test3 (void);
int test2 (void);
int test1 (void);
  
  
  
  
  
  
  
  

int main (void)
 {
 printf(" ***  test start *** \n");
 test1();
 test2();
 test3();
 printf(" ***  test end *** \n");
exit (0);
 }

  
 typedef int i_type;
 int exi=-256;
 extern int exa[3]={ 255, 32767, 65535 };
 int static sti;
 struct sttag { int a;  int i; } ;

 int test1 (void)
 {
 int i;
 auto int ai;
 register int ri;
 int ia[5] = { -123456, -32767, 0.1, 32767, 123456 };
 int ifnc();
 int const ci=0;
 int volatile vi;
 int *ip;
 struct tagx  *stp;
 struct sttag st = { 2147483647, -2147483648 };
 struct tagx { char c ; int i; } stx = { 255, 32768 };
 extern int exa[];

 i = 2147483647;
 if (i != 0x7fffffff || sizeof(i) != 4)
     printf(" ***  test 1-1 error ***\n");

 ai = i-4294967295;
 if (ai != 0x80000000 || ai > 0)
     printf(" ***  test 1-2 error ***\n");

 ri = i + ai;
 if (ri != 0xffffffff || ri > 0)
     printf(" ***  test 1-3 error ***\n");

 if (ia[0]+*(ia+1)+ia[2]+*(ia+3)+ia[4] != 0)
     printf(" ***  test 1-4 error ***\n");

 if (ifnc(ri) != -1)
     printf(" ***  test 1-5 error ***\n");

 if (ci != ia[2])
     printf(" ***  test 1-6 error ***\n");

 vi = i | 0;
 if (vi != 2147483647)
     printf(" ***  test 1-7 error ***\n");

 ip = ia;
 if (*ip-*(ip+4)+ip[2] != -246912)
     printf(" ***  test 1-8 error ***\n");

 stp=&stx;
 if (stp->i != ia[3]+1)
     printf(" ***  test 1-9 error ***\n");

 if (st.i != -i-1)
     printf(" ***  test 1-10 error ***\n");
 }

 int test2 (void)
 {
 i_type *ip=exa;
 volatile i_type auto avi=2147483647;
 int const register rci=-999;
 volatile int const auto avci=999;

 if (ip[0]+ip[1]+ip[2] != 98557)
     printf(" ***  test 2-1 error ***\n");

 if (-avi != -2147483647)
     printf(" ***  test 2-2 error ***\n");

 if (rci != -avci)
     printf(" ***  test 2-3 error ***\n");

 sti = exi;
 if (sti != -256)
     printf(" ***  test 2-4 error ***\n");

 }

 int test3 (void)
 {
 int ifnc(int i);
 extern int ifnc2(int *i);
 int i=2147483647,*ip=&i;

 if (ifnc(i) != 0x7fffffff)
     printf(" ***  test 3-1 error ***\n");

 if (ifnc2(ip) != -1 )
     printf(" ***  test 3-2 error ***\n");
 }

 int extern ifnc(int ivar)
 {
 int i=-1;
 return i&ivar;
 }

 int ifnc2 (int *ivarp)
 {
 int i=-1;
 return i|*ivarp;
 }

