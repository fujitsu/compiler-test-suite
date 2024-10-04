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

 int 
test1 (void)
 {
 int i;
 enum { en0 } en;               
 enum tag1 { en11, en12 };      
 enum tag1 *en1p;                 
 enum tag1 en1;
 enum tag2 { en21, en22, en23=-1, en24, en25 } en2,*en2p=&en2,
            en2a[3] = { en21, en23, en25 };

 en = en0;
 if (en != 0 || en0 != 0)
     printf(" ***  test 1-1 error ***\n");

 en1 = en12;
 en1p = &en1;
 if (*en1p != 1 || en1 != en22)
     printf(" ***  test 1-2 error ***\n");

 en2 = en22;
 if (*en2p != 1 || en2 != *en1p)
     printf(" ***  test 1-3 error ***\n");

 if (en2a[0] != 0 || *(en2a+1) != -1 || en2a[2] != en22)
     printf(" ***  test 1-4 error ***\n");
 }

 enum tag { en1=-10,en2,en3,en4,en5=5,en6,en7,en8,en9,en10 };
 typedef enum tag un_type;
 un_type  unx;
 extern un_type un2;
 enum tag2 { ena,enb=0,enc,end,ene,enf,eng,enh } static exsten;

 int 
test2 (void)
 {
 const auto enum tag volatile aen[2] = { en3, en6 };
 register un_type const volatile  *renp;
 enum tag3 { en31, en32=3, en33=3, en34, en35 } auto volatile avun;
 int zero=0;

 if (en1 != -10 || en2 != -9 || en3 != -8 || en4 != -7 || en5 != 5 ||
     en6 != 6+zero || en7 != 7 || en8 != 8 || en9 != 9 || en10 != 10)
     printf(" ***  test 2-1 error ***\n");

 if (sizeof(unx) != 4+zero || sizeof(en1) != 4)
     printf(" ***  test 2-2 error ***\n");

 unx = en2;
 if (unx != -9 || en10 != -en1)
     printf(" ***  test 2-3 error ***\n");

 exsten = enb;
 if (exsten != ena || exsten+6 != enh)
     printf(" ***  test 2-4 error ***\n");

 if (aen[0] != -8 || aen[1] != 6)
     printf(" ***  test 2-5 error ***\n");

 renp = aen+1;
 if (*renp != 6 || *(renp-1) != -8)
     printf(" ***  test 2-6 error ***\n");

 avun = exsten;
 if (avun)
     printf(" ***  test 2-7 error ***\n");
 }

 int 
test3 (void)
 {
#define one 1
 enum tag1 { en11=-10, en12, en13='a', en14, en15=0, en16 };
 enum tag2 { en21=sizeof(long long), en22, en23=(int)11, en24 };
 enum tag3 { en31=en11, en32, en33='a', en34 };
 enum tag4 { en41=en14>en22, en42, en43=en15?'b':'a', en44=one, en45};
 int zero=0;

 if (en11 != -10 || en12 != -9 || en13 != 'a' ||
     en14 != 'b' || en15 !=  0 || en16 != 1+zero)
     printf(" ***  teen 3-1 error ***\n");




 if (en31 != -10 || en32 != -9 || en33 != 'a')
     printf(" ***  teen 3-3 error ***\n");

 if (en41 != 1 || en42 != 2 || en43 != 'a' ||
     en44 != 1 || en45 != 2+zero)
     printf(" ***  teen 3-4 error ***\n");

 }
