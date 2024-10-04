#include <stdio.h>
int test2_3 (void);
int test2_2 (void);
int test2_1 (void);
int test1_3 (void);
int test1_2 (void);
int test1_1 (void);
int main()
 {
 printf(" ***  TEST START *** \n");
 test1_1();
 test1_2();
 test1_3();
 test2_1();
 test2_2();
 test2_3();
 printf(" ***  TEST END *** \n");
 }

 typedef unsigned u_type;
 unsigned exu=4294967295;
 extern unsigned exa[3]={ 255, 65535, 2147483648 };
 unsigned static stu;
 struct sttag { int a;  unsigned u; } ;

 int 
test1_1 (void)
 {
 unsigned u;
 auto unsigned au;
 register unsigned ru;
 unsigned ua[4] = { 4294967295, 2147483648, 65536, 0 };
 unsigned ufnc();
 unsigned const cu=0;
 unsigned volatile vu;
 unsigned *up;
 struct tagx  *stp;
 struct sttag st = { -2147483648, 4294967295 };
 struct tagx { char c ; unsigned u; } stx = { 255, 2147483647 };

 u = 4294967295;
 if (u != 0xffffffff || u < 0)
     printf(" ***  TEST 1-1 ERROR ***\n");

 au = u>>16;
 if (au != 0x0000ffff || au < 0)
     printf(" ***  TEST 1-2 ERROR ***\n");

 ru = u - 0xffffffff;
 if (ru != 0)
     printf(" ***  TEST 1-3 ERROR ***\n");

 if (ua[0]-*(ua+1)-ua[2]-*(ua+3) != 2147418111)
     printf(" ***  TEST 1-4 ERROR ***\n");

 if (ufnc(31) != st.a)
     printf(" ***  TEST 1-5 ERROR ***\n");

 if (cu != ua[3])
     printf(" ***  TEST 1-6 ERROR ***\n");

 vu = u | 0;
 if (vu != 4294967295)
     printf(" ***  TEST 1-7 ERROR ***\n");

 up = ua;
 if (up[1]+*(up+2) != 2147549184)
     printf(" ***  TEST 1-8 ERROR ***\n");

 stp=&stx;
 if (stp->u != ua[0]/2)
     printf(" ***  TEST 1-9 ERROR ***\n");

 if (st.u != -st.a+(ua[1]-1))
     printf(" ***  TEST 1-10 ERROR ***\n");
 }

 int 
test1_2 (void)
 {
 u_type *up=exa;
 volatile u_type auto avu=12345;
 unsigned const register rcu=-999;
 volatile unsigned const auto avcu=999;

 if (up[0]+up[1]+up[2] != 2147549438)
     printf(" ***  TEST 2-1 ERROR ***\n");

 if (-avu != -12345)
     printf(" ***  TEST 2-2 ERROR ***\n");

 if (rcu != -avcu)
     printf(" ***  TEST 2-3 ERROR ***\n");

 stu = exu;
 if (stu != 4294967295)
     printf(" ***  TEST 2-4 ERROR ***\n");

 }

 int 
test1_3 (void)
 {
 unsigned ufnc(unsigned u);
 extern unsigned ufnc2(unsigned *u);
 unsigned u=31,*up=&u;

 if (ufnc(u-15) != 0xffff0000)
     printf(" ***  TEST 3-1 ERROR ***\n");

 if (ufnc2(up) != 1)
     printf(" ***  TEST 3-2 ERROR ***\n");
 }

 unsigned extern ufnc(unsigned uvar)
 {
 unsigned u=4294967295;
 return u<<uvar;
 }

 unsigned 
ufnc2 (unsigned *uvarp)
 {
 unsigned u=-1;
 return u>>*uvarp;
 }

 typedef unsigned int ui_type;
 unsigned int exui=-256;
 extern unsigned int exai[3]={ 255, 65535, 2147483648 };
 unsigned int static stui;

 int 
test2_1 (void)
 {
 unsigned int u;
 auto unsigned int au;
 register unsigned int ru;
 unsigned int ua[4] = { 4294967295, 2147483648, 65536, 0 };
 unsigned int ufnc();
 unsigned int const cu=0;
 unsigned int volatile vu;
 unsigned int *up;
 struct tagx  *stp;
 struct sttag st = { -2147483648, 4294967295 };
 struct tagx { char c ; unsigned int u; } stx = { 255, 32768 };

 u = 4294967295;
 if (u != 0xffffffff || u < 0)
     printf(" ***  TEST 4-1 ERROR ***\n");

 au = u>>16;
 if (au != 65535)
     printf(" ***  TEST 4-2 ERROR ***\n");

 ru = u - 0xffffffff;
 if (ru != 0)
     printf(" ***  TEST 4-3 ERROR ***\n");

 if (ua[0]-*(ua+1)-ua[2]-*(ua+3) != 2147418111)
     printf(" ***  TEST 4-4 ERROR ***\n");

 if (ufnc(31) != st.a)
     printf(" ***  TEST 4-5 ERROR ***\n");

 if (cu != ua[3])
     printf(" ***  TEST 4-6 ERROR ***\n");

 vu = u | 0;
 if (vu != 4294967295)
     printf(" ***  TEST 4-7 ERROR ***\n");

 up = ua;
 if (up[1]+*(up+2) != 2147549184)
     printf(" ***  TEST 4-8 ERROR ***\n");

 stp=&stx;
 if (stp->u != ua[2]/2)
     printf(" ***  TEST 4-9 ERROR ***\n");

 if (st.u != -st.a+(ua[1]-1))
     printf(" ***  TEST 4-10 ERROR ***\n");
 }

 int 
test2_2 (void)
 {
 ui_type *up=exai;
 volatile ui_type auto avu=12345;
 unsigned int const register rcu=-999;
 volatile unsigned int const auto avcu=999;

 if (up[0]+up[1]+up[2] != 2147549438)
     printf(" ***  TEST 5-1 ERROR ***\n");

 if (-avu != -12345)
     printf(" ***  TEST 5-2 ERROR ***\n");

 if (rcu != -avcu)
     printf(" ***  TEST 5-3 ERROR ***\n");

 stui = exui;
 if (stui != -256)
     printf(" ***  TEST 5-4 ERROR ***\n");

 }

 int 
test2_3 (void)
 {
 unsigned int uifnc(unsigned int u);
 extern unsigned int uifnc2(unsigned int *u);
 unsigned int u=1,*up=&u;

 if (uifnc(u) != 0x00000000)
     printf(" ***  TEST 6-1 ERROR ***\n");

 if (uifnc2(up) != 1073741824)
     printf(" ***  TEST 6-2 ERROR ***\n");
 }

 unsigned int extern uifnc(unsigned int uvar)
 {
 unsigned int u=2147483648;
 return u<<uvar;
 }

 unsigned int 
uifnc2 (unsigned int *uvarp)
 {
 unsigned int u=2147483648;
 return u>>*uvarp;
 }

