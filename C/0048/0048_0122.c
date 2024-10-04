#include <stdio.h>

 typedef  char  *cap_type[2];
 int  f1(register int **i);
 int  f2(signed i[5], unsigned f(void));
 struct tag1 { int i; char c; };
 int  f3(struct tag1 st[2], struct tag1 *f(struct tag1 []));
 union  tag2 { int i,j; };
 int  f4(union tag2 f(void), union tag2 *un[2]);
 enum tag3 { en1, en2 };
 int  f5(enum tag3 en[2], enum tag3 *f(enum tag3 []));
 int  f6(int *ip, void *vp, void vf(void));
 int  f7(const  int c[2], volatile int *f(volatile int *));
 int  f8(cap_type);
 int  exi=0;
 int  j=0xffffffff;
int 
main (void)
 {
 register int i=0xffffffff,**ipp;
 int  *ip;
 signed int sia[5] = { 1, 2, 3, 4, 5 };
 unsigned int ufnc(void);
 struct tag1 st1[2] = {{0x7fffffff,0x7f },{0xffffffff,0xff}};
 struct tag1 *stpfnc(struct tag1 []);
 union  tag2 unfnc(void);
 static union  tag2 un1={-1},un2={-2},*una[2]={&un1,&un2};
 enum   tag3 ena[2] = { en2, en1 };
 enum   tag3 *enfnc(enum tag3 []);
 void  *vp=(void *)&j,vfnc(void);
 const  int ca[2] = {-1, -2 };
 volatile  int *volfnc(volatile int *);
 char  *cap[2] = { "abc", "123" };

 printf(" ***  test start ****** \n");

 ip = &j; ipp = &ip;
 if(f1(ipp))
     printf(" ***  test 1  error *** \n");

 if(f2(sia,ufnc))
     printf(" ***  test 2  error *** \n");

 if(f3(st1,stpfnc))
     printf(" ***  test 3  error *** \n");

 if(f4(unfnc,una))
     printf(" ***  test 4  error *** \n");

 if(f5(ena,enfnc))
     printf(" ***  test 5  error *** \n");

 if(f6(&j,vp,vfnc))
     printf(" ***  test 6  error *** \n");

 if(f7(ca,volfnc))
     printf(" ***  test 7  error *** \n");

 if(f8(cap))
     printf(" ***  test 8  error *** \n");

 printf(" ***  test end ****** \n");
 }

  int f1(int **ipp)
 {
 if (**ipp != -1)
     return 1;
 return 0;
 }

  int f2(signed i[], unsigned f(void))
 {
 if (i[0] != 1 || i[1] != 2 || i[2] != 3 ||
     i[3] != 4 || i[4] != 5)
     return 1;

 if (f() != 4294967295)
     return 1;

 return 0;
 }

 unsigned ufnc(void)
 {
 return 0xffffffff;
 }

  int f3(struct tag1 st[2], struct tag1 *f(struct tag1 []))
 {
#ifdef S_CHAR
 if (st[0].i != 2147483647 || st[0].c != 127 ||
     st[1].i != -1         || st[1].c != -1 )
#else
 if (st[0].i != 2147483647 || st[0].c != 127 ||
     st[1].i != -1         || st[1].c != 255 )
#endif
     return 1;

#ifdef S_CHAR
 if ((f(st))->i != -1 || (f(st))->c != -1 )
#else
 if ((f(st))->i != -1 || (f(st))->c != 255 )
#endif
     return 1;

 return 0;
 }

 struct tag1 *stpfnc(struct tag1 st[])
 {
 return &(st[1]);
 }

  int f4(union tag2 f(void), union tag2 *un[])
 {
 if (f().i != -1 || f().j != -1)
     return 1;

 if (un[0]->i != -1 || (*un[0]).j != -1 ||
     un[1]->i != -2 || (*un[1]).j != -2)
     return 1;

 return 0;
 }

 union tag2 unfnc(void)
 {
 union tag2 un;
 un.i = 0xffffffff;
 return un;
 }

  int f5(enum tag3 en[], enum tag3 *f(enum tag3 []))
 {
 if (en[0] != 1 || en[1])
     return 1;

 if (100**f(en) != 100)
     return 1;

 return 0;
 }

 enum tag3 *enfnc(enum tag3 en[])
 {
 return en;
 }

  int f6(int *ip, void *vp, void vf(void))
 {
 if (vp != (void *)ip)
     return 1;

 vf();
 if (exi != 1)
     return 1;

 return 0;
 }

 void vfnc(void)
 {
 if (exi != 0) {
     exi = 0;
     return ;
 }
 exi++;
 return;
 }

  int f7(const int c[], volatile int *f(volatile int  *))
 {
 volatile  int vi = 10;
 if (c[0] != -1 || c[1] != -2)
     return 1;

 if (*f(&vi) != 11)
     return 1;

 return 0;
 }

 volatile int *volfnc(volatile int *vp)
 {
 (*vp)++;
 return vp;
 }

 int  f8(cap_type x)
 {
 if (*x[0] != 'a' || *(x[0]+1) != 'b' || x[0][2] != 'c' ||
     *(*x+3) != '\0' || *x[1] != '1' || *(x[1]+1) != '2' ||
     x[1][2] != '3' || *(*(x+1)+3) != '\0')
     return 1;
 return 0;
 }
