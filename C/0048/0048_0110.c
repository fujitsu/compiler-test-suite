#include <stdio.h>

 struct tag1 {
     char                 c1,c2;
     signed short            ss;
     unsigned int            ui;
     volatile long           vl;
     long long               ll;
     const float             cf;
     const double volatile  cvd;
     long double             ld;
     struct tag2 {
         char      ca[2][2];
         short             **sp;
         int          *iap[2 + 1];
     } st2;
     union tag3 {
         enum tag4 { en1, en2=10, en3 } en;
         int  i;
     } st3;
     enum tag5 { ena, enb=20, enc } en;
     struct tag2 *st21;
     union  tag3  st31[2];
 };

 short exs=32767,*exsp=&exs,**exspp=&exsp;
 int   exia[10] = { 0, 1, 2, 3, 4, 0, -1, -2, -3, -4 };
 struct tag2 exst2;
 union  tag3 exun31={ 21 }, exun32={ 11 };
 struct tag1 exst1 = { 0x7f, 0x80, 11111, 0xffffffff, 0xffffffff,
                        0xffffffff, 1e7, 1e15, 1e25,
                        { 1, 2, 3, 4,&exsp, exia, exia+5 },
                        {  en2 }, enb, &exst2, {21,10+1}
                     };
int main()
 {
 struct tag1 st1 = exst1;
 struct tag1 *st1p=&st1;
 long long int dll1=0xffffffff,dll2=dll1*5;

 printf(" ***  test start *** \n");

 if (exst1.c1 != st1.c1 || st1.c1 != st1p->c1 || st1p->c1 != 127)
     printf(" ***  test 1 error ***\n");

#if defined(S_CHAR) || defined(__GNUC__)
 if (exst1.c2 != -128 || st1.ss != 11111 || st1p->ui != 4294967295)
#else
 if (exst1.c2 !=  128 || st1.ss != 11111 || st1p->ui != 4294967295)
#endif
     printf(" ***  test 2 error ***\n");

 st1p->ll = dll2+st1p->ll;
#if INT64||LONG64 || __x86_64__ || __aarch64__
 if (exst1.vl != 4294967295 || exst1.ll != 4294967295 || st1.ll != dll1*6)
#else
 if (exst1.vl != -1 || exst1.ll != 4294967295 || st1.ll != dll1*6)
#endif
     printf(" ***  test 3 error ***\n");

 if (exst1.cf != 1e7 || st1.cvd != 1e15 || st1p->ld != 1e25)
     printf(" ***  test 4 error ***\n");

 if (exst1.st2.ca[0][0] != 1 || *(st1.st2.ca[1]) != 3 ||
     *(st1p->st2.ca[0]+3) != 4)
     printf(" ***  test 5 error ***\n");

 if (**exst1.st2.sp != 32767 || st1.st2.sp != exst1.st2.sp ||
     *(st1p->st2.sp) != &exs)
     printf(" ***  test 6 error ***\n");

 if (**(exst1.st2.iap) != exst1.st2.iap[1][0] ||
     *(st1.st2.iap[0]+2) != -((*(st1p->st2.iap+1))[2]))
     printf(" ***  test 7 error ***\n");

 if (exst1.st3.i != 10 || st1.st3.en != en2 || st1p->st3.i != en3-1)
     printf(" ***  test 8 error ***\n");

 if (exst1.en != 20 || st1.en != enb || st1p->en != enc-1)
     printf(" ***  test 9 error ***\n");

 exst2 = exst1.st2;
 if (exst1.st21->ca[0][0] !=
                  *(exst1.st21->ca[0]+3)-(*(exst1.st21->ca+1)[0]))
     printf(" ***  test 10 error ***\n");

 if (**(exst1.st21->sp) != 0x7fff ||
     st1.st21->sp[0][0] != *(st1p->st21->sp[0]))
     printf(" ***  test 11 error ***\n");

 if (**(exst1.st21->iap) != *(st1.st21->iap[1]) ||
     st1p->st21->iap[0][1] != 1)
     printf(" ***  test 12 error ***\n");

 if (exst1.st31[0].i != exia[1]+enb ||
     st1.st31[1].en != -exia[6]+en2 ||
     st1p->st31[0].en != st1p->st31[1].i+en2)
     printf(" ***  test 13 error ***\n");

 printf(" ***  test end *** \n");
 }
