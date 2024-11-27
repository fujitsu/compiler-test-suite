#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int test8 (void);
int test7 (void);
int test6 (void);
int test5 (void);
int test4 (void);
int test3 (void);
int test2 (void);
int test1 (void);
  
  
  
  
  
  
  
  

int main (void)
 {
     printf(" *** TEST \n");
 test1();
 test2();
 test3();
 test4();
 test5();
 test6();
 test7();
 test8();
     printf(" *** TEST \n");
exit (0);
 }

  
 int test1 (void)
 {
 int a;                 
 struct tag;            
 enum  { e1,e2 };     

 a=e1;
 if (a != 0 || e2 != 1)
     printf(" *** TEST \n");
 return 0;
 }

  
 int ex = 1;
 struct ex {
     int    a;
     char   b;
 } ;
 struct ex exst = { 2, 3 };

 int test2 (void)
 {
 struct ex exst2 = { 4, 5 };

 if (ex != 1 || exst.a != 2 || exst.b != 3 ||
     exst2.a != 4 || exst2.b != 5)
     printf(" *** TEST \n");
 return 0;
 }

  
 extern int ex;
 extern int test1();
 extern int exa = 10;
 struct exa {
     int    a;
     char   b;
 } ;
 extern struct exa exsta = { 1,2 };

 int test3 (void)
 {
 extern int exa;
 extern struct exa exsta;

 exa=1;
 exsta.a=3;
 exsta.b=4;
 if (ex != 1 || exa != 1 || exsta.a != 3 || exsta.b != 4)
     printf(" *** TEST \n");
 return 0;
 }

  
 extern int ex;
 extern int test1();
 static int exb = 10;
 struct exb {
     int    a;
     char   b;
 } ;
 static struct exb exstb = { 1,2 };

 int test4 (void)
 {
 extern int exb;
 extern struct exb exstb;

 if (exa != 1 || exb != 10 || exstb.a != 1 || exstb.b != 2)
     printf(" *** TEST \n");
 return 0;
 }
  
 int exc = 10;
 struct exc {
     int    a;
     char   b;
 } ;
 struct exc exstc = { 1,2 };

 int test5 (void)
 {
 extern int ex;
 extern int test1();
 int exc = 1;
 struct exc {
     int    c;
     char   d;
 } ;
 struct exc exstc = { 3,4 };

 if (ex != 1 || exc != 1 || exstc.c != 3 || exstc.d != 4)
     printf(" *** TEST \n");
 return 0;
 }

  
 int exd = 10;
 struct exd {
     int    a;
     char   b;
 } ;
 struct exd exstd = { 1,2 };
 int test6 (void)
 {
 static int exd = 1;
 struct exd {
     int    c;
     char   d;
 } ;
 static struct exd exstd = { 3,4 };

 if (exc != 10 || exd != 1 || exstd.c != 3 || exstd.d != 4)
     printf(" *** TEST \n");
 return 0;
 }

  
 static int exe = 10;
 struct exe {
     int    a;
     char   b;
 } ;
 static struct exe exste = { 1,2 };
 int test7 (void)
 {
 static int exe = 1;
 struct exe {
     int    c;
     char   d;
 } ;
 static struct exe exste = { 3,4 };

 if (exd != 10 || exe != 1 || exste.c != 3 || exste.d != 4)
     printf(" *** TEST \n");
 return 0;
 }

  
 struct taga {
     int a;
     char b;
 };
 int test8 (void)
 {
 auto int  a1=5;
 struct taga st = { 4, 5 };
     {
     auto int a1=6;
     struct taga st = { 1, 2 };
     if (a1 != 6 || st.a != 1 || st.b != 2)
         printf(" *** TEST \n");
     }

 if (a1 != 5 || st.a != 4 || st.b != 5)
     printf(" *** TEST \n");
 return 0;
 }

