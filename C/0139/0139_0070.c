#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
  
  
  
  
  
  
  
  
  
  


 struct tag1 {
     int i;
     char *p;
 };
 struct tag2 {
     char c1;
     char c2;
 };
 struct tag3 {
              char c0;
     const    char c1;
     volatile char c2;
 };
int main (void)
 {
 struct tag1 fnc1(struct tag1 st, int i);
 int fnc2(int i, volatile struct tag1 st);
 char fnc3(struct tag2 *stp);
 short fnc4(const struct tag3);
 float fnc5(struct tag2 *[2]);

 struct tag1 st1 = { 1, "abc" },st1r;
 volatile struct tag1 st11 = { 1, "abc" };

 printf(" ***  test start *** \n");

 st1r = fnc1(st1,100);
 if (st1r.i != 1 || st1r.p[0] != 'a')
     printf(" ***  test 1-2 error ***\n");

 if (fnc2(st1.i,st11) != 2)
     printf(" ***  test 2-2 error ***\n");

 printf(" ***  test end *** \n");
exit (0);
 }

 struct tag1 fnc1(struct tag1 st, int i)
 {
 if (st.i != 1 || *(st.p) != 'a' || st.p[2] != 'c' ||
     *(st.p+3) != 0x00 || i != 100)
     printf(" ***  test 1-1 error ***\n");
 return st;
 }

  int fnc2(int i, volatile struct tag1 st)
 {
 if (st.i != 1 || *(st.p) != 'a' || st.p[2] != 'c' ||
     *(st.p+3) != 0x00 || i != 1)
     printf(" ***  test 2-1 error ***\n");
 return i+st.i;
 }

#ifndef gmicro
 char fnc3(struct tag2 *stp)
 {
 if (stp->c1 !=  255 || stp->c2 != 0)
     printf(" ***  test 3-1 error ***\n");
 return stp->c1*stp->c2;
 }

 short 
fnc4 (const struct tag3 st)
 {
 if (st.c1 != 0 || st.c1 != 0x80 || st.c2 != 0xff)
     printf(" ***  test 4-1 error ***\n");
 return st.c2-st.c1;
 }
#endif

#ifndef nofloat
 float fnc5(struct tag2 *st[2])
 {
 float f=1.0;
 if ((*st[0]).c1 != 0 || st[0]->c2 != 0x7f ||
     st[1]->c1 != 0x80 || (*st[1]).c2 != 0xff)
     printf(" ***  test 5-1 error ***\n");
 return f*st[0]->c2;
 }
#endif
