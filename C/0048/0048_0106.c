#include <stdio.h>
int test3 (void);
int test2 (void);
int test1 (void);
int main()
 {
 printf(" ***  test start *** \n");
 test1();
 test2();
 test3();
 printf(" ***  test end *** \n");
 }

 typedef char c_type;
 char exc=-1;
 extern char exa[3]={ 128, 255, 0 };
 char static stc;
 struct sttag { signed char sc;   char c; } ;

 int 
test1 (void)
 {
 char c;
 auto char ac;
 register char rc;
 char ca[4] = { 127, 0xff, 1, 0 };
 char cfnc(char);
 char const cc=0;
 char volatile vc;
 char *cp;
 struct tagx   *stp;
 struct sttag st = { 0, -128 };
 struct tagx { char x ; char c; } stx = { 255, 255 };
 extern char exa[];

 c = (char)-1;
#ifdef S_CHAR
 if (c != -1)
#else
 if (c != 0xff)
#endif
     printf(" ***  test 1-1 error ***\n");

 ac = c+1;
 if (ac != 0)
     printf(" ***  test 1-2 error ***\n");

 rc = -c;
 if (rc != 1)
     printf(" ***  test 1-3 error ***\n");

#ifdef S_CHAR
 if (ca[1]-*(ca+0)-ca[2]-*(ca+3) != -129)
#else
 if (ca[1]-*(ca+0)-ca[2]-*(ca+3) != 127)
#endif
     printf(" ***  test 1-4 error ***\n");

 if (cfnc(7) != st.c)
     printf(" ***  test 1-5 error ***\n");

 if (cc != exa[2])
     printf(" ***  test 1-6 error ***\n");

 vc = c | 0;
#ifdef S_CHAR
 if (vc != -1)
#else
 if (vc != 0xff)
#endif
     printf(" ***  test 1-7 error ***\n");

 cp = ca;
 if (cp[0]+*(cp+2) != 128)
     printf(" ***  test 1-8 error ***\n");

 stp=&stx;
 if (stp->c != ca[0]+st.c)
     printf(" ***  test 1-9 error ***\n");

 if ((st.c&0x000000ff) != ca[0]+ca[2])
     printf(" ***  test 1-10 error ***\n");
 }

 int 
test2 (void)
 {
 c_type *cp=exa;
 volatile c_type auto avc=10;
 const register char rcc=1;
 volatile auto char const avcc=1;

 if (cp[1]-cp[0]-cp[2] != 127)
     printf(" ***  test 2-1 error ***\n");

 if (-avc != -10)
     printf(" ***  test 2-2 error ***\n");

 if (-rcc != -avcc)
     printf(" ***  test 2-3 error ***\n");

 stc = exc;
#ifdef S_CHAR
 if (stc != -1)
#else
 if (stc != 0xff)
#endif
     printf(" ***  test 2-4 error ***\n");

 }

 int 
test3 (void)
 {
 char cfnc(char c);
 extern char cfnc2(char *c);
 char c=7,*cp=&c;

#ifdef S_CHAR
 if (cfnc(c) != -128)
#else
 if (cfnc(c) != 128)
#endif
     printf(" ***  test 3-1 error ***\n");

#ifdef S_CHAR
 if (cfnc2(cp) != -1)
#else
 if (cfnc2(cp) != 1)
#endif
     printf(" ***  test 3-2 error ***\n");
 }

 char extern cfnc(char cvar)
 {
 char c=1;
 return c<<cvar;
 }

 char 
cfnc2 (char *cvarp)
 {
 char c=0x80;
 return c>>*cvarp;
 }
