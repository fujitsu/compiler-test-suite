#include <stdio.h>
int strcmpx (char *s1, char *s2);

 struct tagx { int i,j; };
 struct tagy { int i; struct tagx stx; };
 struct tagy sty[2] = {100,200,{300}};
int 
main (void)
 {
 printf(" ***  TEST START ***\n");
 printf(" ***  TEST END ***\n");
 }

 int 
test1 (void)
 {
 char  ca1[ ] = {1,2,3,},
       ca2[5] = "abc",
       ca3[3] = "",
       ca4[5] = {1,2,{3}},
       ca5[5] = {4,5,{6},},
       ca6[5] = {7,8,9,10,11,},
       ca7[2][2] = {1,2,3},
       ca8[2][2] = {1,},
       ca9[4][2] = {{{1}},{2,},{3}},
       ca10[4][2] = {1,{2},3},
       ca11[4][2] = {{1},2,3,4,5,6},
       ca12[4][2] = {{1,},},
       ca13[][2] = {1,2,3},
       ca14[][2] = {1,{2},3,4,{5,6},7},
       ca15[][2] = {{1},2,{3},{{4}},5,6,7},
      *ca16[2] = {"abc"};

 struct tag1 {
     char c[2][2];
     int i;
     struct tag11 {
         short s;
         char c[2][2];
     } st11[2];
 };
 struct tag1 st11 = {1,2,3,4,5,6,7};
 struct tag1 st12 = {{1,{2}},{3},{{4},{5,6,7,8}}};

 union tag2 {
     char c[3][2];
     int  i;
     char c2[6];
 };
 union tag2 un21 = {1,2,3};
 union tag2 un22 = {{1,2,3}};

 struct tag3 {
     union  tag2  un;
     struct tag11 st;
 };
 struct tag3 st31 = {1,2,{3,}};
 struct tag3 st32 = {1,2,{{3,}}};
 struct tag3 st33 = {{1,2},{3,}};

 union tag4 {
     struct tag11 st;
     union  tag2  un;
 };
 union tag4 un41[2] = {1,{{2},3,}};
 union tag4 un42[2] = {1,{{{2},3,}}};
 union tag4 un43[2] = {{{{1},2}},3,4};

 enum tag5 {en1=100,en2};
 enum tag5 en52[2] = {{en2},};

 struct tagx *stxpa[][2] = {{{&sty[0].stx}}};

 const volatile  int cv[2] = {-1};


 if (ca1[0] != 1 || ca1[1] != 2 || ca1[2] != 3 ||
     sizeof(ca1) != 3)
     printf(" ***  TEST 1  ERROR ***\n");

 if (ca2[0] != 'a' || ca2[1] != 'b' || ca2[2] != 'c' ||
     ca2[3] != '\0' || ca2[4] != 0x00)
     printf(" ***  TEST 2  ERROR ***\n");

 if (ca3[0] != '\0' || ca3[1] != 0x00 || ca3[2] != 0x00)
     printf(" ***  TEST 3  ERROR ***\n");

 if (ca4[0] != 1 || ca4[1] != 2 || ca4[2] != 3 ||
     ca4[3] != 0x00 || ca4[4] != 0x00)
     printf(" ***  TEST 4  ERROR ***\n");

 if (ca5[0] != 4 || ca5[1] != 5 || ca5[2] != 6 ||
     ca5[3] != 0x00 || ca5[4] != 0x00)
     printf(" ***  TEST 5  ERROR ***\n");

 if (ca6[0] != 7 || ca6[1] != 8 || ca6[2] != 9 ||
     ca6[3] != 10 || ca6[4] != 11)
     printf(" ***  TEST 6  ERROR ***\n");

 if (*(int *)ca7 != 0x01020300)
     printf(" ***  TEST 7  ERROR ***\n");

 if (*(int *)ca8 != 0x01000000)
     printf(" ***  TEST 8  ERROR ***\n");

 if (*(int *)ca9 != 0x01000200 || *(int *)ca9[2] != 0x03000000)
     printf(" ***  TEST 9  ERROR ***\n");

 if (*(int *)ca10 != 0x01020300 || *(int *)ca10[2] != 0x00000000)
     printf(" ***  TEST 10 ERROR ***\n");

 if (*(int *)ca11 != 0x01000203 || *(int *)ca11[2] != 0x04050600)
     printf(" ***  TEST 11 ERROR ***\n");

 if (*(int *)ca12 != 0x01000000 || *(int *)ca12[2] != 0x00000000)
     printf(" ***  TEST 12 ERROR ***\n");

 if (*(int *)ca13 != 0x01020300)
     printf(" ***  TEST 13 ERROR ***\n");

 if (*(int *)ca14 != 0x01020304 || *(int *)ca14[2] != 0x05060700 ||
     sizeof(ca14) != 8)
     printf(" ***  TEST 14 ERROR ***\n");

 if (*(int *)ca15 != 0x01000203 || *(int *)ca15[2] != 0x04000506 ||
     *(short *)ca15[4] != 0x0700 || sizeof(ca15) != 10)
     printf(" ***  TEST 15 ERROR ***\n");

 if (strcmpx(ca16[0],"abc") || ca16[1])
     printf(" ***  TEST 16 ERROR ***\n");

 if (*(int *)st11.c != 0x01020304 || st11.i != 5 ||
     st11.st11[0].s != 6 || *(short int *)st11.st11[0].c != 0x0000 ||
     st11.st11[1].s != 0 || *(short int *)st11.st11[1].c != 0x0000)
     printf(" ***  TEST 17 ERROR ***\n");

 if (*(int *)st12.c != 0x01020000 || st12.i != 3 ||
     st12.st11[0].s != 4 || *(int *)st12.st11[0].c != 0x00000000 ||
     st12.st11[1].s != 5 || *(int *)st12.st11[1].c != 0x06070800)
     printf(" ***  TEST 18 ERROR ***\n");

 if (*(int *)un21.c != 0x01020300 || *(short *)un21.c[2] != 0x0000 ||
     un21.i != 0x01020300 ||
     *(int *)un21.c2 != 0x01020300 || *(short *)(un21.c2+4) != 0x0000)
     printf(" ***  TEST 19 ERROR ***\n");

 if (*(int *)un22.c != 0x01020300 || *(short *)un22.c[2] != 0x0000 ||
     un22.i != 0x01020300 ||
     *(int *)un22.c2 != 0x01020300 || *(short *)(un22.c2+4) != 0x0000)
     printf(" ***  TEST 20 ERROR ***\n");

 if (*(int *)st31.un.c != 0x01020300 ||
     *(short *)st31.un.c[2] != 0x0000 ||
     st31.un.i != 0x01020300 ||
     *(int *)st31.un.c2 != 0x01020300 ||
     *(short *)(st31.un.c2+4) != 0x0000 ||
     st31.st.s != 0 || *(int *)st31.st.c != 0x00000000)
     printf(" ***  TEST 21 ERROR ***\n");

 if (*(int *)st32.un.c != 0x01020300 ||
     *(short *)st32.un.c[2] != 0x0000 ||
     st32.un.i != 0x01020300 ||
     *(int *)st32.un.c2 != 0x01020300 ||
     *(short *)(st32.un.c2+4) != 0x0000 ||
     st32.st.s != 0 || *(int *)st32.st.c != 0x00000000)
     printf(" ***  TEST 22 ERROR ***\n");

 if (*(int *)st33.un.c != 0x01020000 ||
     *(short *)st33.un.c[2] != 0x0000 ||
     st33.un.i != 0x01020000 ||
     *(int *)st33.un.c2 != 0x01020000 ||
     *(short *)(st33.un.c2+4) != 0x0000 ||
     st33.st.s != 3 || *(int *)st33.st.c != 0x00000000)
     printf(" ***  TEST 23 ERROR ***\n");

 if (un41[0].st.s != 1 || *(int*)un41[0].st.c != 0x02000300 ||
     *(int *)un41[0].un.c != 0x00010200 ||
     *(short *)un41[0].un.c[2] != 0x0300 ||
     un41[0].un.i != 0x00010200 ||
     *(int *)un41[0].un.c2 != 0x00010200 ||
     *(short *)(un41[0].un.c2+4) != 0x0300)
     printf(" ***  TEST 24 ERROR ***\n");

 if (un41[1].st.s != 0 || *(int*)un41[1].st.c != 0x00000000 ||
     *(int *)un41[1].un.c != 0x00000000 ||
     *(short *)un41[1].un.c[2] != 0x0000 ||
     un41[1].un.i != 0x00000000 ||
     *(int *)un41[1].un.c2 != 0x00000000 ||
     *(short *)(un41[1].un.c2+4) != 0x0000)
     printf(" ***  TEST 25 ERROR ***\n");

 if (un42[0].st.s != 1 || *(int*)un42[0].st.c != 0x02030000 ||
     *(int *)un42[0].un.c != 0x00010203 ||
     *(short *)un42[0].un.c[2] != 0x0000 ||
     un42[0].un.i != 0x00010203 ||
     *(int *)un42[0].un.c2 != 0x00010203 ||
     *(short *)(un42[0].un.c2+4) != 0x0000)
     printf(" ***  TEST 26 ERROR ***\n");

 if (un42[1].st.s != 0 || *(int*)un42[1].st.c != 0x00000000 ||
     *(int *)un42[1].un.c != 0x00000000 ||
     *(short *)un42[1].un.c[2] != 0x0000 ||
     un42[1].un.i != 0x00000000 ||
     *(int *)un42[1].un.c2 != 0x00000000 ||
     *(short *)(un42[1].un.c2+4) != 0x0000)
     printf(" ***  TEST 27 ERROR ***\n");

 if (un43[0].st.s != 1 || *(int*)un43[0].st.c != 0x02000000 ||
     *(int *)un43[0].un.c != 0x00010200 ||
     *(short *)un43[0].un.c[2] != 0x0000 ||
     un43[0].un.i != 0x00010200 ||
     *(int *)un43[0].un.c2 != 0x00010200 ||
     *(short *)(un43[0].un.c2+4) != 0x0000)
     printf(" ***  TEST 28 ERROR ***\n");

 if (un43[1].st.s != 3 || *(int*)un43[1].st.c != 0x04000000 ||
     *(int *)un43[1].un.c != 0x00030400 ||
     *(short *)un43[1].un.c[2] != 0x0000 ||
     un43[1].un.i != 0x00030400 ||
     *(int *)un43[1].un.c2 != 0x00030400 ||
     *(short *)(un43[1].un.c2+4) != 0x0000)
     printf(" ***  TEST 29 ERROR ***\n");

 if (en52[0] != 101 || en52[1] != 0)
     printf(" ***  TEST 30 ERROR ***\n");

 if (stxpa[0][0]->i != 200 || stxpa[0][0]->j != 300 ||
     stxpa[0][1] || sizeof(stxpa) != 8)
     printf(" ***  TEST 31 ERROR ***\n");

 if (cv[0] != -1 || cv[1])
     printf(" ***  TEST 32 ERROR ***\n");

 }

int 
strcmpx (char *s1, char *s2)
{
    int j;
    while (!(j = *s1 - *s2) && *s1++)
        s2++;
    return(j);
}
