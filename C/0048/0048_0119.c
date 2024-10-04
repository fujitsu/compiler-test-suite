#include <stdio.h>

#if defined(i386) || defined(__x86_64__) || defined(__aarch64__)
#define LITTLE_ENDIAN 1
#endif

 typedef char  c_type;
 typedef unsigned short int *usip_type;
 int exi=0x7fffffff, *exip;
 extern int exz = -1,*exbp=&exz,*exap=&exz,**expp=&exap;
 const int *excnp = &exi;
 signed *exsgp;
 unsigned *exusp;
int main()
 {
 static int  i=0x7fffffff, j=0x80000000, zero=0;
 auto int *ip,**ipp;
 register int *rp;
 char  c1[5]={'a','b','c','d','e'};
 char  *c2[5]={"abc","xyz","ABC","XYZ","123"};
 char  (*c3)[5],**c4[2];
 static struct sttag {
     int   *i1;
     char  *c1[2];
     struct sttag  *stp0;
     struct sttag2 {
         int  *ia[2];
         long *lp;
     } st2;
 } st = { &i, "abc", "xyz", &st,
            { (int *)"abc", (int *)"123", (long *)&i } };
 struct sttag  st3,*st3p=&st3;
 union  untag {
#if LONG64  || __x86_64__ || __aarch64__
     long int   i,*j;
#else
     int   i,*j;
#endif
     char  **p;
#if LONG64  || __x86_64__ || __aarch64__
 } un[2] = { 0x01020304, (long)&i };
#else
 } un[2] = { 0x01020304, (int)&i };
#endif
 union  untag *unp;
 int   *f1(),(*f2)( int *p, char *q),fnc(int *, char *);
 void   *vp,*vf(int **i,void *v);
 volatile int *vip;
 int * const cip = &j;
 extern char *exca[10];
 c_type  **cppa[2];
 usip_type sipa[2];

 printf(" ***  test start ****** \n");

 exip = &exi;
 if (*exip != 2147483647)
     printf(" ***  test 1  error ***\n");

 exap = (int *)&exbp; exbp = &exz; expp = (int **)exap;
 if (**expp != -1)
     printf(" ***  test 2  error ***\n");

 if (*excnp != 2147483647)
     printf(" ***  test 3  error ***\n");

 exsgp = (signed *)("abc");
#if INT64
 if (*exsgp !=  0x6162630000000000)
     printf(" ***  test 4  error ***\n%llx\n",*exsgp);
#elif LITTLE_ENDIAN
 if (*exsgp !=  0x636261) 
     printf(" ***  test 4  error ***\n%x\n",*exsgp);
#else
 if (*exsgp !=  1633837824)      
     printf(" ***  test 4  error ***\n%x\n",*exsgp);
#endif

 exusp = (unsigned *)exsgp;
#if INT64
 if (*exusp != 0x6162630000000000)
#elif LITTLE_ENDIAN
 if (*exusp != 0x636261)
#else
 if (*exusp != 1633837824)
#endif
     printf(" ***  test 5  error ***\n");

 ip = &i;
 if (*ip != 2147483647)
     printf(" ***  test 6  error ***\n");

 ipp = &ip;
 if (**ipp != 0x7fffffff)
     printf(" ***  test 7  error ***\n");

 rp = &j; *rp = j-1;
 if (j != i)
     printf(" ***  test 8  error ***\n");

 if (*c1 != 0x61 || *(c1+1) != 0x62 || *(c1+2) != 0x63 ||
     *(c1+3) != 0x64 || *(c1+4) != 0x65)
     printf(" ***  test 9  error ***\n");

 if (*c2[0] != 'a' || *c2[1] != 'x' || *c2[2] != 'A' ||
     *(c2[3]+1) != 'Y' || c2[4][2] != '3')
     printf(" ***  test 10 error ***\n");

 c3 = (char (*)[5])c1;
 if ((*c3)[0] != 'a' || c3[0][1] != 'b' || (*c3)[2] != 'c' ||
     c3[0][3] != 'd' || (*c3)[4] != 'e')
     printf(" ***  test 11 error ***\n");

 c4[0] = &c2[0]; c4[1] = &c2[2];
 if (**c4[0]!='a' || *(*c4[0]+1)!='b' || c4[0][0][2]!='c' ||
     **c4[1]!='A' || *(*c4[1]+1)!='B' ||
     c4[1][0][2]!='C')
     printf(" ***  test 12 error ***\n");

 if (*(st.i1) != 2147483647)
     printf(" ***  test 13 error ***\n");

 if (**(st.c1) != 'a' || *(st.c1[0]+1) != 'b' ||
     *(st.c1[1]) != 'x' || st.c1[1][2] != 'z')
     printf(" ***  test 14 error ***\n");

#if INT64
 if (*(st.st2.ia[0]) != 0x6162630000000000 || *(st.st2.ia[1]) != 0x3132330000000000)
     printf(" ***  test 15 error ***\n%llx,%llx\n",*(st.st2.ia[0]),*(st.st2.ia[1]));
#elif LITTLE_ENDIAN
 if (*(st.st2.ia[0]) != 0x636261 || *(st.st2.ia[1]) != 0x333231)
     printf(" ***  test 15 error ***\n%x,%x\n",*(st.st2.ia[0]),*(st.st2.ia[1]));
#else
 if (*(st.st2.ia[0]) != 0x61626300 || *(st.st2.ia[1]) != 0x31323300)
     printf(" ***  test 15 error ***\n%x,%x\n",*(st.st2.ia[0]),*(st.st2.ia[1]));
#endif

#if LONG64  || __x86_64__ || __aarch64__
 if (*(st.st2.lp)&0x7fffffff00000000LL != 0x7fffffff00000000)
#else
 if (*(st.st2.lp) != 0x7fffffff)
#endif
     printf(" ***  test 16 error *** %llx\n",*(st.st2.lp));

 if (*(st.stp0->i1) != 2147483647 ||
     *(st.stp0->c1[0]) != 'a' || *(st.stp0->c1[1]+1) != 'y' ||
#if INT64
     *(st.stp0->st2.ia[0]) != 0x6162630000000000 ||
     *(st.stp0->st2.ia[1]) != 0x3132330000000000 ||
#elif LITTLE_ENDIAN
     *(st.stp0->st2.ia[0]) != 0x636261 ||
     *(st.stp0->st2.ia[1]) != 0x333231 ||
#else
     *(st.stp0->st2.ia[0]) != 0x61626300 ||
     *(st.stp0->st2.ia[1]) != 0x31323300 ||
#endif
#if LONG64  || __x86_64__ || __aarch64__
     *(st.stp0->st2.lp)&0x7fffffff00000000 != 0x7fffffff00000000)
#else
     *(st.stp0->st2.lp) != 0x7fffffff)
#endif
     printf(" ***  test 17 error ***\n");

 st3 = st;
 if (*(st3.i1) != 2147483647 ||
     *(st3.c1[0]) != 'a' || *(st3p->c1[1]) != 'x' ||
#if INT64
     *(st3.st2.ia[0]) != 0x6162630000000000 ||
     *(st3p->st2.ia[1]) != 0x3132330000000000 ||
#elif LITTLE_ENDIAN
     *(st3.st2.ia[0]) != 0x636261 ||
     *(st3p->st2.ia[1]) != 0x333231 ||
#else
     *(st3.st2.ia[0]) != 0x61626300 ||
     *(st3p->st2.ia[1]) != 0x31323300 ||
#endif
#if LONG64  || __x86_64__ || __aarch64__
     *(st3.st2.lp)&0x7fffffff00000000 != 0x7fffffff00000000)
#else
     *(st3.st2.lp) != 0x7fffffff)
#endif
     printf(" ***  test 18 error ***\n");

#if LONG64  || __x86_64__ || __aarch64__
 if ((int)(un[0].j) != 0x1020304 || (int)((*un).p) != 0x1020304 ||
     *(int*)(un[1].j) != 0x7fffffff || (int)(*(int*)(un[1].p)) != 0x7fffffff)
#else
 if ((int)(un[0].j) != 16909060 || (int)((*un).p) != 16909060 ||
     *(un[1].j) != 2147483647 || (int)(*(un[1].p)) != 2147483647)
#endif
     printf(" ***  test 19 error ***\n%llx,%llx,%llx,%llx\n",
	 un[0].j,(*un).p,*(un[1].j),*(un[1].p));

 un[1].p = c4[0];
 unp = un+1;
 if (*(char *)(*(unp->j)) != 'a' ||
     **(unp->p) != 'a' || unp->p[0][2] != 'c')
     printf(" ***  test 20 error ***\n");
 f2 = fnc;
 if (*f1() != 0x7fffffff || (*f2)(ip,c1))
     printf(" ***  test 22 error ***\n");

 vp = (void *)&i;
 if (vp != (void *)&i)
     printf(" ***  test 23 error ***\n");

#if INT64
 if (vf(ipp,vp) != (void *)&i || i != 2147483648)
#else
 if (vf(ipp,vp) != (void *)&i || i != -2147483648)
#endif
     printf(" ***  test 24 error ***\n");

 vip = (volatile int *)&i;
#if INT64
 if (*vip != 0x80000000 || *vip < 0)
#else
 if (*vip != 0x80000000 || *vip > 0)
#endif
     printf(" ***  test 25 error ***\n%llx\n",*vip);

#if INT64 || LONG64  || __x86_64__  || __aarch64__
 if (sizeof(exca[0])+sizeof(*exca[0]) != 9+zero)
#else
 if (sizeof(exca[0])+sizeof(*exca[0]) != 5+zero)
#endif
     printf(" ***  test 26 error ***\n");

 cppa[0] = c4[0];
 cppa[1] = c4[1];
 if (**cppa[0] != 'a' || **cppa[1] != 'A')
     printf(" ***  test 27 error ***\n");

 sipa[0] = (unsigned short *)c2[0];
 sipa[1] = (unsigned short *)c2[1];

#if LITTLE_ENDIAN
 if (*sipa[0] != 0x6261 || *(sipa[0]+1) != 0x63 ||
     **(sipa+1) != 0x7978 || *(sipa[1]+1) != 0x7a)
#else
 if (*sipa[0] != 0x6162 || *(sipa[0]+1) != 0x6300 ||
     **(sipa+1) != 0x7879 || *(sipa[1]+1) != 0x7a00)
#endif
     printf(" ***  test 28 error ***\n");

 if (*cip != 0x7fffffff)
     printf(" ***  test 29 error ***\n");

 printf(" ***  test end ****** \n");
 }

 int *f1()
 {
 return &exi;
 }

 int fnc(int *ip, char *cp)
 {
 if (*ip != 0x7fffffff || *cp != 'a' || *(cp+1) != 'b' ||
     cp[2] != 'c' || cp[3] != *(cp+2)+1 || *(cp+4) != 'e')
     return 1;
 else
     return 0;
 }

 void *vf(ipp,vp)
 int **ipp;
 void *vp;
 {
 **ipp += 1;
 return vp;
 }
