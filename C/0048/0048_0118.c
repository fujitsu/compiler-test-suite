#include <stdio.h>

#if defined(i386) || defined(__x86_64__) || defined(__aarch64__)
#define LITTLE_ENDIAN 1
#endif

 typedef short int (si_type);
 typedef int ((*fpa)());
 int (exi);
 extern int (ex) = 0;
 const int (excn) = -1;
 signed (exsg);
 unsigned (exus);
 char (exca[2][2]) = { 0, 1, 2, 3 };

 int (((((((main))))())))
 {
 auto int (i),((((*((((*ip)))))))), ((((ia))[3])),dummy;
 #if LONG64 
 auto long dummy2;
 #endif
 register int ((((((((((((((((((((((((((((r))))))))))))))))))))))))))));
 long double  (ld1),*(ldp);  long (l[2]) = { -1, 1 };
 static char
       (c1[5]),(c2)[3],(c3[2])[2],*(c4[2]),(*c5)[5],*cp;
 int   (f1()),(f2)(),*(f3()),(*f4)(),(*(((*f5))())),(*f6[2])(),
       (((f7))(int (((i))), long (((la))[2]), char (((*ca)[2]))));
 static struct sttag {
     int   i1,(i2),((*i3)),(fi):8;
     char  (*c1[2]),(c2)[2];
     struct sttag  (*stp0);
     struct sttag2 {
         int  (ia[2]);
         long ((((l))))[2];
     } (((st2)));
 } st = { 1, 2, &(st.i2), 0xff,{c3[1],},{255,0}, &st,
            { 0xffffffff, 0x80000000, -1, 0 } };
 struct sttag  (st3),(*stp3)=&st3;
 static union  untag {
     int   i,(j), ((((((k))))));
     char  ((((c)))[4]);
 } ((un)[2]) = { 0x01020304, 1 };
 union  untag (((*unp)));
 enum   entag { en1, en2 } (en) = en1;
 void   (*vp),(((((((((((((vf)))))))))))))(int (((((*i))))), int (j));
 volatile int ((((((((((((((((((((via))))))))))))))))))))[2];
 extern char (exca[2][2]);
 si_type  (si[2]);
 fpa  (fncp) = f1;

 printf(" ***  test start ****** \n");

 exi = 0x7fffffff;
 if (exi != 2147483647)
     printf(" ***  test 1  error ***\n");

 ex = exi+1;
#if INT64
 if (ex != 2147483648)
#else
 if (ex != -2147483648)
#endif
     printf(" ***  test 2  error ***\n%llx\n",ex);

 if (excn + 1)
     printf(" ***  test 3  error ***\n");

 exsg = 0xffffffff;
#if INT64
 if (exsg != 4294967295)
#else
 if (exsg != -1)
#endif
     printf(" ***  test 4  error ***\n");

 exus = 0xffffffff;
 if (exus != 4294967295)
     printf(" ***  test 5  error ***\n");

 if (exca[0][0] != 0 || exca[0][1] != 1 ||
     exca[1][0] != 2 || exca[1][1] != 3)
     printf(" ***  test 6  error ***\n");

 i = -1;
#if INT64
 if (i != 18446744073709551615)
#else
 if (i != 0xffffffff)
#endif
     printf(" ***  test 7  error ***\n%llx\n",i);

#if LONG64 
 ip = (long **)&dummy2; *ip = &i; ip = &(*ip);i = -1;
#else
 ip = (int **)&dummy; *ip = &i; ip = &(*ip);i = -1;
#endif
 if (**ip != -1)
     printf(" ***  test 8  error ***\n");

 r = -**ip;
 if (r != 1)
     printf(" ***  test 9  error ***\n");

 ld1 = 1e20; ldp =&ld1;
 if (*ldp != 1e20)
     printf(" ***  test 10 error ***\n");

 c1[0] = c1[1]= c1[2] = c1[3] = c1[4] = 0xff;
 c2[0] = c1[0]; c2[1] = c1[2]+1;
 c2[2] = c1[4]+1;

#if defined(S_CHAR) || defined(__GNUC__)
 if (c2[0] != -1 || c2[1] != 0 || c2[2] != 0)
#else
 if (c2[0] != 255|| c2[1] != 0 || c2[2] != 0)
#endif
     printf(" ***  test 11 error ***\n");

 c3[0][0] = 'a'; c3[0][1] = 'b';
 c3[1][0] = '1'; c3[1][1] = '2';
 if (c3[0][0] != 'a' || c3[0][1] != 'b' ||
     c3[1][0] != '1' || c3[1][1] != '2')
     printf(" ***  test 12 error ***\n");

 c4[0] = c3[1]; c4[1] = c3[0];
 if (c4[0][0] != '1' || c4[0][1] != '2' ||
     c4[1][0] != 'a' || c4[1][1] != 'b')
     printf(" ***  test 13 error ***\n");

 cp = c1; c5 = (char (*)[])cp;
#if defined(S_CHAR) || defined(__GNUC__)
 if ((*c5)[0] != -1 || (*c5)[1] != -1 ||
     (*c5)[2]-(*c5)[3]+(*c5)[4] != -1)
#else
 if ((*c5)[0] != 255 || (*c5)[1] != 255 ||
     (*c5)[2]-(*c5)[3]+(*c5)[4] != 255)
#endif
     printf(" ***  test 14 error ***\n");

 if (f1() || f2())
     printf(" ***  test 15 error ***\n");

 f4 = f1; f5 = f3;
 if (*f3() != 10 || (*f4)() || *(*f5)() != 10)
     printf(" ***  test 16 error ***\n");

 f6[0] = f1; f6[1] = f2;
 if ((*f6[0])() || (*f6[1])())
     printf(" ***  test 17 error ***\n");

 if (f7(i,l,c5))
     printf(" ***  test 18 error ***\n");

#if BIT_SIGNED || __GNUC__
 if (st.i1 != 1 || st.i2 != 2 || *(st.i3) != st.i2 || st.fi != -1)
#else
 if (st.i1 != 1 || st.i2 != 2 || *(st.i3) != st.i2 || st.fi != 255)
#endif
 {
     printf(" ***  test 19 error ***\n");
	 printf(" st.i1=%d  st.i2=%d *(st.i3)=%d st.fi=%d\n",st.i1,st.i2,*(st.i3),st.fi);
  }

 if (*(st.c1[0]) != '1'  || *(st.c1[0]+1) != '2' ||
     st.c2[0] != -1   || st.c2[1] != 0   )
     printf(" ***  test 20 error ***\n");

#if INT64
 if (st.st2.ia[0] != 4294967295|| st.st2.ia[1] != 2147483648 ||
     st.st2.l[0] != -1 || st.st2.l[1])
#else
 if (st.st2.ia[0] != -1 || st.st2.ia[1] != -2147483648 ||
     st.st2.l[0] != -1 || st.st2.l[1])
#endif
     printf(" ***  test 21 error ***\n%llx,\
%llx,%llx,%llx\n",st.st2.ia[0],st.st2.ia[1],st.st2.l[0],st.st2.l[1]);

 st3 = st;
 if (*(stp3->c1[0]) != *(st.c1[0]) ||
     stp3->c2[0] != -1 || st3.c2[1] != 0 || stp3->stp0 != st.stp0)
     printf(" ***  test 22 error ***\n");

#if INT64
 if (stp3->st2.ia[0] != 4294967295 || st3.st2.ia[1] != 2147483648 ||
     stp3->st2.l[0] != -1 || st3.st2.l[1])
#else
 if (stp3->st2.ia[0] != -1 || st3.st2.ia[1] != -2147483648 ||
     stp3->st2.l[0] != -1 || st3.st2.l[1])
#endif
     printf(" ***  test 23 error ***\n%llx,%llx,%llx,%llx\n",
	 stp3->st2.ia[0],st3.st2.ia[1],stp3->st2.l[0],st3.st2.l[1]);

#if INT64
 if (un[0].i != 0x1020304 || un[0].j != 0x01020304 ||
     un[0].c[0] != 0 || un[0].c[1] != 0 ||
     un[0].c[2] != 0 || un[0].c[3] != 0)
     printf(" ***  test 24 error ***\n%llx,%llx,%llx,%llx,%llx,%llx\n",
	 un[0].i,un[0].j,un[0].c[0],un[0].c[1],un[0].c[2],un[0].c[3]);
#elif LITTLE_ENDIAN
 if (un[0].i != 0x1020304 || un[0].j != 0x01020304 ||
     un[0].c[0] != 4 || un[0].c[1] != 3 ||
     un[0].c[2] != 2 || un[0].c[3] != 1)
     printf(" ***  test 24 error ***\n%x,%x,%x,%x,%x,%x\n",
	 un[0].i,un[0].j,un[0].c[0],un[0].c[1],un[0].c[2],un[0].c[3]);
#else
 if (un[0].i != 16909060 || un[0].j != 0x01020304 ||
     un[0].c[0] != 1 || un[0].c[1] != 2 ||
     un[0].c[2] != 3 || un[0].c[3] != 4)
     printf(" ***  test 24 error ***\n%x,%x,%x,%x,%x,%x\n",
	 un[0].i,un[0].j,un[0].c[0],un[0].c[1],un[0].c[2],un[0].c[3]);
#endif

 if ( (un[1].k) != 1    || *(int *)(un[1].c) != 1)
     printf(" ***  test 25 error ***\n");

 unp = &un[0];
#if INT64
 if (unp->i != 0x1020304 || unp->j != 0x01020304 ||
     unp->c[0] != 0 || unp->c[1] != 0 ||
     unp->c[2] != 0 || unp->c[3] != 0)
#elif LITTLE_ENDIAN
 if (unp->i != 0x01020304 || unp->j != 0x01020304 ||
     unp->c[0] != 4 || unp->c[1] != 3 ||
     unp->c[2] != 2 || unp->c[3] != 1)
#else
 if (unp->i != 16909060 || unp->j != 0x01020304 ||
     unp->c[0] != 1 || unp->c[1] != 2 ||
     unp->c[2] != 3 || unp->c[3] != 4)
#endif
     printf(" ***  test 26 error ***\n");

 if (en1 != 0 || en2 != 1 || en != 0)
     printf(" ***  test 27 error ***\n");

 vp = (void *)&i;
#if INT64
 if (*(int *)vp != 0xffffffffffffffff)
#else
 if (*(int *)vp != 0xffffffff)
#endif
     printf(" ***  test 28 error ***\n%llx\n",*(int *)vp);

 vf(&i,ex);
 if (i != 0)
     printf(" ***  test 29 error ***\n");

 via[0] = 123456; via[1] = 654321;
 if (via[0] + via[1] != 777777)
     printf(" ***  test 30 error ***\n");

 si[0] = 0; si[1] = 1;
#if INT64
 if (si[0]-si[1] != 0xffffffffffffffff)
#else
 if (si[0]-si[1] != 0xffffffff)
#endif
     printf(" ***  test 31 error ***\n");

 if ((*fncp)())
     printf(" ***  test 32 error ***\n");

 printf(" ***  test end ****** \n");
 }

 int ((((((((((((((((((f1)())))))))))))))))))
 {
 return 0;
 }

 int ((((((((((f2))))))))))()
 {
 return 0;
 }

 int *((((((((((f3)))))())))))
 {
 static int i=10;
 int *ip=&i;
 return ip;
 }

 int (f7(int (i), long int ((la)[]), char ((*ca)[])))
 {
#ifdef S_CHAR
 if (i != -1 || la[0] != -1 || la[1] != -la[0] ||
     (*ca)[0] != -1 || (*ca)[4] != -1)
#else
 if (i != -1 || la[0] != -1 || la[1] != -la[0] ||
     (*ca)[0] != 255 || (*ca)[4] != 255)
#endif
     return 1;
 else
     return 0;
 }

 void (vf(i,j))
 int *((((((i))))));
 int (j);
 {
 j -= 1;
 if (j != 0x7fffffff)
     return;
 *i += 1;
 return;
 }
