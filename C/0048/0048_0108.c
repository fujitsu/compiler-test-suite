#include <stdio.h>
int memcopy (char *c1, char *c2, int l);
int test2 (void);
int test1 (void);

 struct tagex {
     char  c;
     int   i;
     short s;
 } stx,*stxp=&stx,fncstx(int a);           
int 
main (void)
 {
 printf(" ***  test start *** \n");
 test1();
 test2();
 printf(" ***  test end *** \n");
 }

 int 
test1 (void)
 {
 int i;
 struct {              
     int i;
 } st;
 struct tag1 ;          
 struct tag1 *stp;      
 struct tag1 {         
     int i;
     short s;
 } ;
 struct tag1 st1;
 struct tag2 {         
     char c;
     struct tag1 st21;
     short s;
 } st2,*st3,st4[2]={ { 255, { 2147483647, 32767 }, 32767 },
                         { 0, { 0, 0 }, 0 } },fncst(int a);

 st.i = i = 2147483647;
 if (st.i != 0x7fffffff)
     printf(" ***  test 1-1 error ***\n");

 st1.i = i;  st1.s = i;
 if (st1.i != st.i || st1.s != -1)
     printf(" ***  test 1-2 error ***\n");

 stp=&st1;
 if (stp->i != 2147483647 || stp->s != -1)
     printf(" ***  test 1-3 error ***\n");

 st2=st4[1];
 if (st2.c != st2.st21.i || st2.st21.s != 0)
     printf(" ***  test 1-4 error ***\n");

 st3=st4;
 if (st3->st21.i != st.i || st3[1].st21.s != st4[1].s)
     printf(" ***  test 1-5 error ***\n");

 *stxp=fncstx(i);
#ifdef S_CHAR
 if (stxp->c != -1  || stxp->i != 2147483647 || stxp->s != -1)
#else
 if (stxp->c != 0xff|| stxp->i != 2147483647 || stxp->s != -1)
#endif
     printf(" ***  test 1-6 error ***\n");
 }

 struct tagex fncstx(int i)
 {
 struct tagex st;
 st.c = (char)i;
 st.i = i;
 st.s = (short)i;
 return st;
 }

 typedef struct tag st_type;
 struct tag {
     char ca[3];
     char *p;
 };
 st_type  stz;
 st_type st2;
 struct tag2 {
     double da[3];
     float  f;
 } static st3 = { 0.375, 0.5, 1.25, 2.125 };
 char ca[3] = { 'a', 'b', 'c' };

 int 
test2 (void)
 {
 const auto struct tag volatile ast = { 1,3,5,ca };
 register st_type const volatile *rstp;
 struct tag3 {
     char ca[1][3];
 } auto volatile avst;

 stz.ca[0] = 1; stz.ca[1] = 2; stz.ca[2] = 3;
 stz.p = stz.ca;
 if (*(stz.p) != 1 || stz.p[1] != 2 || *(stz.p+2) != 3)
     printf(" ***  test 2-1 error ***\n");

 st2 = stz;
 stz.ca[1] = 0;
 if (st2.ca[0] != 1 || st2.ca[1] != 2 ||
     st2.p[1] != 0 || *(st2.ca+2) != 3)
     printf(" ***  test 2-2 error ***\n");

 if (st3.da[0]+st3.da[1]+st3.da[2] != st3.f)
     printf(" ***  test 2-3 error ***\n");

 if (ast.ca[0] != 1 || ast.ca[2] != 5 ||
     ast.p[0] != 'b'-*(ast.ca) || ast.p[2]-*(ast.p+1) != 1)
     printf(" ***  test 2-4 error ***\n");

 rstp = &ast;
 if (rstp->ca[1]!=*(rstp->p+2)-rstp->p[0]+rstp->p[2]-*(rstp->p+1))
     printf(" ***  test 2-5 error ***\n");

 memcopy(avst.ca[0],ca,3);
 if (avst.ca[0][0] != 'a' || avst.ca[0][1] != 'b' ||
     avst.ca[0][2] != 'c')
     printf(" ***  test 2-6 error ***\n");
 }

 int 
memcopy (char *c1, char *c2, int l)
 {
 int indx;
 for(indx=0;l-indx>0;indx++) *(c1+indx) = *(c2+indx);
 return 0;
 }
