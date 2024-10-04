#include <stdio.h>
int test4 (void);
int test3 (void);
int test2 (void);
int test1 (void);

 char *memcmp();

 typedef  char  *(*fnc_type)[2];
 int  (*f1[3])(int i);
 char (*f2(char []))[5];
 int  *(*f3[3])(int fnc(int));
 fnc_type f4(void);        
int 
main (void)
 {
 printf(" ***  test start ****** \n");
 test1();
 test2();
 test3();
 test4();
 printf(" ***  test end ****** \n");
 }

 int 
test1 (void)
 {
 int ((*((f1[3]))))(int);
 int  fnc1(int), fnc2(int), fnc3(int);

 f1[0] = fnc1;
 f1[1] = fnc2;
 f1[2] = fnc3;
 if ((*f1[0])(1) || (*(f1+1))(2) || (f1+2)[0](3))
     printf(" ***  test 1  error ***\n");
 }

 int 
test2 (void)
 {
 char (((*(f2(char ([])))))[5]);
 char c[5] = { 'a', 'b', 'c', 'd', 'e' };
 char (*cp)[];

 cp = f2(c);
 if ((*cp)[0] != '1' || *(*cp+1) != '2' || (*cp)[2] != '3' ||
     (*cp)[3] != '4' || (*cp)[4] != '5')
     printf(" ***  test 2  error ***\n");
 }

#if defined(__GNUC__)
 int fnc1(), fnc2(), fnc3();
#endif

 int 
test3 (void)
 {
 int *(((*(f3[3])))(int ((int))));
 int *fncp1(int fnc(int)),
     *fncp2(int (*fncp)(int)),
     *fncp3(int fnc(int));

 f3[0] = fncp1;
 f3[1] = fncp2;
 f3[2] = fncp3;
 if (*(*f3[0])(fnc1) || *(*f3[1])(fnc2) || *(*f3[2])(fnc3))
     printf(" ***  test 3  error ***\n");
 }

 int 
test4 (void)
 {
 char  (*((*(f4(void)))[]));
 char  *(*cp)[];


 cp = f4();
 if (memcmp((*cp)[0],"abc",4) || memcmp(*(*cp+1),"123",4))
     printf(" ***  test 4  error ***\n");

 }


 int 
fnc1 (int i)
 {
 if (i != 1)
     return 1;
 return 0;
 }

  int fnc2(int ((i)))
 {
 if (i != 2)
     return 1;
 return 0;
 }

 int 
fnc3 (int ((i)))
 {
 if (i != 3)
     return 1;
 return 0;
 }

 char (*f2(char c[]))[]
 {
 static char ca[5] = { '1', '2', '3', '4', '5' };
 if (c[0] != 'a' || c[1] != 'b' || c[2] != 'c' ||
     c[3] != 'd' || c[4] != 'e')
     return 0;
 return (char (*)[])ca;
 }

 int *(((fncp1)(int ((fnc)(int)))))
 {
 static int a=0,i=1;
 if (fnc(i))
     return &i;
 return &a;
 }

 int *(fncp2(int (((*fncp))(int))))
 {
 static int a=0,i=2;
 if ((*fncp)(i))
     return &i;
 return &a;
 }

 int *fncp3(int fnc(int))
 {
 static int a=0,i=3;
 if (fnc(i))
     return &i;
 return &a;
 }

 char  *(*f4(void))[]
 {
 static char  *c[2] = { "abc", "123" };
 char  *(*cp)[] = (char *(*)[])c;
 return cp;
 }
