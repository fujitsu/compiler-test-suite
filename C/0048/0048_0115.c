#include <stdio.h>

 enum tag1 { en11=-10, en12, en13, en14, en15 };
 enum tag2 { en21=10, en22, en23, en24, en25 };
 enum tag3 { en31, en32, en33, en34, en35 } ;
int 
main (void)
 {
 enum tag1 fnc1(enum tag1 en, int i);
 int fnc2(int i, volatile enum tag1 en);
 char fnc3(enum tag2 *enp);
 short fnc4(const enum tag3);
 float fnc5(enum tag2 *[2]);

 enum tag1 en1 = en13;
 volatile enum tag1 ven1 = en15;
 enum tag2 en2 = en25,*en2p=&en2;
 const enum tag3 enc = en35;
 static enum tag2 en2x[2] = { en21, en23 };
 enum tag2 *en2xp[2] = { &en2x[0], &en2x[1] };

 printf(" ***  teen enart *** \n");

 if (fnc1(en1,en11) != en13)
     printf(" ***  teen 1-2 error ***\n");

 if (fnc2(en31,ven1) != 6)
     printf(" ***  teen 2-2 error ***\n");

 if (fnc3(en2p) != 15)
     printf(" ***  teen 3-2 error ***\n");

 if (fnc4(enc))
     printf(" ***  teen 4-2 error ***\n");

 if (fnc5(en2xp) != 120.0)
     printf(" ***  teen 5-2 error ***\n");

 printf(" ***  teen end *** \n");
 }

 enum tag1 fnc1(enum tag1 en, int i)
 {
 if (en != -8 || i != -10)
     printf(" ***  teen 1-1 error ***\n");
 return en;
 }

  int fnc2(int i, volatile enum tag1 en)
 {
 if (i != 0 || en != -6)
     printf(" ***  teen 2-1 error ***\n");
 return i-en;
 }

 char fnc3(enum tag2 *enp)
 {
 if (*enp != 14)
     printf(" ***  teen 3-1 error ***\n");
 return *(enp)+1;
 }

 short 
fnc4 (const enum tag3 en)
 {
 if (en != 4)
     printf(" ***  teen 4-1 error ***\n");
 return en-4;
 }

 float fnc5(enum tag2 *en[2])
 {
 float f=1.0;
 if (*en[0] != 10 || **(en+1) != 12)
     printf(" ***  teen 5-1 error ***\n");
 return *en[0]**en[1]*f;
 }
