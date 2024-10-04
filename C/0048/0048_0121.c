#include <stdio.h>

#if defined(i386)
#define LITTLE_ENDIAN 1
#endif

 enum { ena, enb, enc };
 typedef  char  ary_type[2];
 int exi[5] = { 1, 2, 3, 4, 5 };
 signed exs[5][2];
 unsigned exu[enc];
 static volatile long long int exvlli['c'-'a'];
 char exc[sizeof(short)][(int)2.99] = { 1, 2, 3, 4 };
 struct tag1 {
     int   i[5];
     struct  tag1  *stp[2];
     struct  tag2 {
         int  ii[2];
         char cc[2];
     } st11[2];
 } st1[2] = { { 0,1,2,3,4,&st1[0],&st1[1],
                     { -1,-2,0xff,0xff+1   ,   1,2,0xff,0xff-1 }
                  },
                  { 4,3,2,1,0,(struct tag1 *)(&st1[0]+1),&st1[0],
                     { -2,-1,'a','b'   ,   0,1,2,3 }
                  }
               };
int 
main (void)
 {
 double d[2];
 struct tag1 st2[2][2];
 union tag3 {
     long int li[5];
#if INT64
     unsigned __int32 us[5];
#elif LONG64  
     unsigned int us[5];
#else
     unsigned short us[5];
#endif
     struct tag2 *st2p[2];
 } un[2] = { 0,1,2,3,4 
#if LONG64  
 ,&(st1[0].st11[0]),
  st1[1].st11,7,8,9
#elif !defined(__GNUC__)
 ,(long)&(st1[0].st11[0]),
  (long)st1[1].st11,7,8,9
#else
 ,(long int)&(st1[0].st11[0]),
  (long int)st1[1].st11,7,8,9
#endif
};

 union tag3 static *un2[2];
 enum tag4 { en1, en2 } en[2][2] = { en1, en2, en2, en1 };
 void *vp[2];
 const int  ci[5] = { 5, 4, 3, 2, 1 } ;
 volatile short vs[5] = { -5, -4, -3, -2, -1 };
 volatile int const vci[5] = { 100, 200, 300, 400, 500 };
 auto int (*ai)[3];
 extern char exc[sizeof(short)][(int)2.99];
 char  c[][2] = { 1, 2, 3, 4, 5 };
 ary_type  c2[2] = { 'a', 'b', 'c', 'd' };
 ary_type  *cp = (char (*)[2])"abcde";
 int  *cpx,*cpz,i,j;
 char *cap[2], c3[5] = { 5, 4, 3, 2, 1 };
 int  fnc1(int [],char *[]),
      fnc2(char a[2][2],int (*b)[]);

 printf(" ***  TEST START ****** \n");

 if (exi[0] != 1 || exi[1] != 2 || exi[2] != 3 ||
     exi[3] != 4 || exi[4] != 5)
     printf(" ***  test 1  error ***\n");

 for (cpx=exi,cpz=&exs[2][1],i=0; i<5; cpx++,cpz++,i++)
     *cpz = *cpx;
 if (exs[0][0] != 0 || exs[0][1] != 0 || **(exs+1) != 0 ||
     *(*(exs+1)+1) != 0 || exs[2][0] != **exs ||
     exs[2][1] != 1 || exs[3][0] != 2 || exs[3][1] != 3 ||
     exs[4][0] != exi[3] || exs[4][1] != exi[4])
     printf(" ***  test 2  error ***\n");

 exu[0] = exi[0]; exu[1] = -exi[0];
#if INT64
 if (exu[0] != 1 || exu[1] != 18446744073709551615)
#else
 if (exu[0] != 1 || exu[1] != 4294967295)
#endif
     printf(" ***  test 3  error ***\n%llx,%llx\n",
	 exu[0],exu[1]);

 exvlli[0] = 0xffffffff; exvlli[1] = 2;
 if (exvlli[0]*exvlli[1] != exvlli[0]+exvlli[0])
     printf(" ***  test 4  error ***\n");

 if (exc[0][0] != 1 || exc[0][1] != 2 ||
     1[exc][0] != 3 || 1[exc][1] != 4)
     printf(" ***  test 5  error ***\n");

 d[0] = .1; d[1] = -.1;
 if (d[0]+d[1] != .0)
     printf(" ***  test 6  error ***\n");

 if (st1[0].i[0] || st1[0].i[1]!=1 || *(st1[0].i+2)!=2 ||
    st1[0].i[3]!=st1[1].i[1] || *(st1[0].i)!=st1[1].i[4])
     printf(" ***  test 7  error ***\n");

#if defined(S_CHAR) || defined(__GNUC__)
 if (st1[0].stp[0] != st1 || st1[0].stp[1]->i[4] ||
     st1[1].stp[0] != &st1[1] ||
     st1[1].stp[1]->st11[1].cc[1] != -2)
#else
 if (st1[0].stp[0] != st1 || st1[0].stp[1]->i[4] ||
     st1[1].stp[0] != &st1[1] ||
     st1[1].stp[1]->st11[1].cc[1] != 0xfe)
#endif
     printf(" ***  test 8  error ***\n");

 if (st1[0].st11[0].ii[0] != -1 ||
     st1[0].st11[0].ii[1] != st1[1].st11[0].ii[0] ||
     st1[0].st11[1].ii[0] != st1[1].st11[1].cc[1]-2)
     printf(" ***  test 9  error ***\n");

 st2[0][0] = st1[0]; st2[0][1] = *(st1[0].stp[1]);
 if (st2[0][0].i[0] != st1[0].i[0] ||
     st2[0][0].st11[0].ii[1]!=-st2[0][1].st11[1].cc[0])
     printf(" ***  test 10 error ***\n");

 st2[1][0] = st1[1];
 st2[1][1] = *(st1[1].stp[0]->stp[1]);    

#if defined(S_CHAR) || defined(__GNUC__)
 if (st2[1][0].stp[1] != st2[1][1].stp[0] ||
     (*(st2+1))->st11->ii[0] != -2 ||
     *((*((*(*(st2+1)+1)).st11+1)).cc+1) != -2)
#else
 if (st2[1][0].stp[1] != st2[1][1].stp[0] ||
     (*(st2+1))->st11->ii[0] != -2 ||
     *((*((*(*(st2+1)+1)).st11+1)).cc+1) != 0xfe)
#endif
     printf(" ***  test 11 error ***\n");

#if LITTLE_ENDIAN || __x86_64__ || __aarch64__
 if (un[0].li[0]!=0 || un->li[1] != 1 || *(un->li+2) != 2 ||
     0[un].li[3] != 3 || un[0].li[4] != 4 ||
     un[0].us[0]!=0 || un[0].us[1]!=0 || un[0].us[3] != 0)
#else
 if (un[0].li[0] || un->li[1] != 1 || *(un->li+2) != 2 ||
     0[un].li[3] != 3 || un[0].li[4] != 4 ||
     un[0].us[0] || un[0].us[1] || un[0].us[3]!=1 )
#endif
#if INT64 || LONG64   ||__x86_64__ || __aarch64__
     printf(" ***  test 12 error ***\n%llx,%llx,%llx,%llx,%llx,%llx,%llx,%llx\n",
#else
     printf(" ***  test 12 error ***\n%x,%x,%x,%x,%x,%x,%x,%x\n",
#endif
	 un[0].li[0],un->li[1],*(un->li+2),0[un].li[3],un[0].li[4],
	 un[0].us[0],un[0].us[1],un[0].us[3]);

#if LONG64   || __x86_64__ || __aarch64__
 if (un[1].st2p[0]->ii[0] != un[1].st2p[1]->ii[1] ||
     un[1].li[2] != 7 ||
     (struct tag2 *)*(((long *)un[1].us)+1) != (*(st1+1)).st11)
#else
 if (un[1].st2p[0]->ii[0] != un[1].st2p[1]->ii[1] ||
     un[1].li[2] != 7 ||
     (struct tag2 *)*(((int *)un[1].us)+1) != (*(st1+1)).st11)
#endif
     printf(" ***  test 13 error ***\n%llx,%llx,%llx,%llx,%llx\n",
 un[1].st2p[0]->ii[0],un[1].st2p[1]->ii[1],un[1].li[2],
     (struct tag2 *)*(((int *)un[1].us)+1), (*(st1+1)).st11);

 un2[0] = un; un2[1] = un+1;

#if LITTLE_ENDIAN || __x86_64__ || __aarch64__
 if (un2[0]->li[0] != 0 || *(((*un2)->us)+3) != 0 ||
     (*un2[1]).st2p[0] != (*st1).st11 || un2[1]->li[4] != 9)
#else
 if (un2[0]->li[0] != 0 || *(((*un2)->us)+3) != 1 ||
     (*un2[1]).st2p[0] != (*st1).st11 || un2[1]->li[4] != 9)
#endif
   {
     printf(" ***  test 14 error ***\n");
     printf("un2[0]->li[0]: %x\n",un2[0]->li[0]);
     printf("*(((*un2)->us)+3): %x\n", *(((*un2)->us)+3));
     printf("(*un2[1]).st2p[0]: %x\n", (*un2[1]).st2p[0]);
     printf("(*st1).st11: %x\n", (*st1).st11);
     printf("un2[1]->li[4]: %x\n", un2[1]->li[4]);
   }

 if (en[0][0] || en[0][1] != 1 ||
     **(en+1) != *(*en+1) || *(en[1]+1))
     printf(" ***  test 15 error ***\n");

 vp[0] = (void *)st1; vp[1] = (void *)(st1[0].stp[0]);
 if (vp[0] != vp[1])
     printf(" ***  test 16 error ***\n");

 if (ci[0] != 5 || ci[1] != 4 || ci[2] != 3 ||
     *(ci+3) != 2 || 0[ci+4] != 1)
     printf(" ***  test 17 error ***\n");

 for(i=0,j=4; i<5; i++,j--)
     if (vs[i]*100 != -vci[j])
         printf(" ***  test 18-%d error ***\n",i);

 ai = (int (*)[])vci;
 if ((*ai)[0] != 100 || (*ai)[1] != 200 || 2[*ai] != 300)
     printf(" ***  test 19 error ***\n");

 if (sizeof(c) != 6 || c[0][0] != 1 || c[0][1] != 2 ||
     *(c+1)[0] != 3 || c[1][1] != 4 || **(c+2) != 5)
     printf(" ***  test 20 error ***\n");

 if (c2[0][0] != 'a' || c2[0][1] != 'b' ||
     c2[1][0] != 'd'-1 || c2[1][1] != 'c'+1)
     printf(" ***  test 21 error ***\n");

 if ((*cp)[0]!='a' || (*cp)[1]!='b' || 2[(char *)*cp]!='c' ||
     *(*(cp+1)+1)!='d' || *(*cp+4)!='e')
     printf(" ***  test 22 error ***\n");

 cap[0] = (char *)c;
 cap[1] = c3;
 if (fnc1(exi,cap))
     printf(" ***  test 23 error ***\n");

 if (fnc2(exc,ai))
     printf(" ***  test 24 error ***\n");

 printf(" ***  test end ****** \n");
 }

 int 
fnc1 (int ia[], char *cap[])
 {
 if (ia[0] != 1 || ia[1] != 2 || ia[2] != 3 ||
     *(ia+3) != 4 || *(ia+4) != 5)
     return 1;

 if (**cap != 1 || cap[0][1] != 2 || *(cap[0]+2) != ia[2] ||
     *(*cap+3) != *(cap[1]+1) || cap[0][4] != *cap[1])
     return 1;

 return 0;
 }

  int fnc2(char c[2][2],int (*ip)[])
 {

#if INT64||LONG64  ||__x86_64__ || __aarch64__
 if (c[0][0] != 1 || (*c)[1] != 2 ||
     c[1][0] != exi[2] || *(*(c+1)+1)*2 != sizeof(c))
#else
 if (c[0][0] != 1 || (*c)[1] != 2 ||
     c[1][0] != exi[2] || *(*(c+1)+1) != sizeof(c))
#endif
     return 1;

#if !__x86_64__ || __aarch64__
 if ((*ip)[0] != 100 || (*ip)[1] != 200 || *(*ip+2) != 100***(c+1)||
     (*ip)[3] != 100**(*(c+1)+1) || (*ip)[4] != 500)
     return 1;
#endif
 
 return 0;
 }
