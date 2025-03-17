#include <stdio.h>
#include <string.h>
int main()
{

char abcV[] = "abc";
char abcF[100] = "abcF";
char abc2V[][10] = {"abc1","abc2","abc3","abc4"};
char abc2F[10][100] = {"abc1-","abc2-","abc3-","abc4-"};
struct tag {
  int i;
  char p[1000];
} x1 = {10, "abc"};
struct tag2 {
  int i;
  char abc2F[10][100];
} x2 = {10, {"abc1-","abc2-","abc3-","abc4-"}};
struct tag3 {
  int i;
  char abc2F[10][100];
} x3 = {10, "abc1+","abc2+","abc3+","abc4+"};

struct tag x1a[] = {10, "abc"};
struct tag2 x2a[] = {{10, {"[abc1-","[abc2-","[abc3-","[abc4-"}}, {20, {"abc1@","[abc2@","[abc3@","[abc4@"}}};
struct tag3 x3a[] = {{10, "[abc1+","[abc2+","[abc3+","[abc4+"}, {20, "abc1*","[abc2*","[abc3*","[abc4*"}};

struct tag x1b[] = {10, "@abc", 20, "abcd"};
struct tag2 x2b[] = {10, {"%abc1-","%abc2-","%abc3-","%abc4-"}, 20, {"abc1@","%abc2@","%abc3@","%abc4@"}};
struct tag3 x3b[] = {10, {"%abc1+","%abc2+","%abc3+","%abc4+"}, {20, "abc1*","%abc2*","%abc3*","%abc4*"}};



struct {
  int i : 1;
  int j : 2;
  int k : 3;
  int l : 4;
  int m : 5;
  int n;
  int o : 7;
  int p : 8;
  int q : 9;
  int r : 10;
} d = {1,2,3,4,6,7,8,9,10};

  int ng=0;

  if (strcmp(abcV, "abc")) { ng++; printf("%s\n", abcV); }
  if (strcmp(abcF, "abcF")) { ng++; printf("%s\n", abcF); }
  if (strcmp(abc2V[0], "abc1")) { ng++; printf("%s\n", abc2V[0]); }
  if (strcmp(abc2V[1], "abc2")) { ng++; printf("%s\n", abc2V[1]); }
  if (strcmp(abc2V[2], "abc3")) { ng++; printf("%s\n", abc2V[2]); }
  if (strcmp(abc2V[3], "abc4")) { ng++; printf("%s\n", abc2V[3]); }
  if (strcmp(abc2F[0], "abc1-")) { ng++; printf("%s\n", abc2F[0]); }
  if (strcmp(abc2F[1], "abc2-")) { ng++; printf("%s\n", abc2F[1]); }
  if (strcmp(abc2F[2], "abc3-")) { ng++; printf("%s\n", abc2F[2]); }
  if (strcmp(abc2F[3], "abc4-")) { ng++; printf("%s\n", abc2F[3]); }
  if (strcmp(x1.p, "abc")) { ng++; printf("%s\n", x1.p); }
  if (strcmp(x2.abc2F[0], "abc1-")) { ng++; printf("%s\n", x2.abc2F[0]); }
  if (strcmp(x2.abc2F[1], "abc2-")) { ng++; printf("%s\n", x2.abc2F[1]); }
  if (strcmp(x2.abc2F[2], "abc3-")) { ng++; printf("%s\n", x2.abc2F[2]); }
  if (strcmp(x2.abc2F[3], "abc4-")) { ng++; printf("%s\n", x2.abc2F[3]); }
  if (strcmp(x3.abc2F[0], "abc1+")) { ng++; printf("%s\n", x3.abc2F[0]); }
  if (strcmp(x3.abc2F[1], "abc2+")) { ng++; printf("%s\n", x3.abc2F[1]); }
  if (strcmp(x3.abc2F[2], "abc3+")) { ng++; printf("%s\n", x3.abc2F[2]); }
  if (strcmp(x3.abc2F[3], "abc4+")) { ng++; printf("%s\n", x3.abc2F[3]); }
  if (strcmp(x1a[0].p, "abc")) { ng++; printf("%s\n", x1a[0].p); }
  if (strcmp(x2a[1].abc2F[0], "abc1@")) { ng++; printf("%s\n", x2a[1].abc2F[0]); }
  if (strcmp(x2a[1].abc2F[1], "[abc2@")) { ng++; printf("%s\n", x2a[1].abc2F[1]); }
  if (strcmp(x2a[1].abc2F[2], "[abc3@")) { ng++; printf("%s\n", x2a[1].abc2F[2]); }
  if (strcmp(x2a[1].abc2F[3], "[abc4@")) { ng++; printf("%s\n", x2a[1].abc2F[3]); }
  if (strcmp(x3a[1].abc2F[0], "abc1*")) { ng++; printf("%s\n", x3a[1].abc2F[0]); }
  if (strcmp(x3a[1].abc2F[1], "[abc2*")) { ng++; printf("%s\n", x3a[1].abc2F[1]); }
  if (strcmp(x3a[1].abc2F[2], "[abc3*")) { ng++; printf("%s\n", x3a[1].abc2F[2]); }
  if (strcmp(x3a[1].abc2F[3], "[abc4*")) { ng++; printf("%s\n", x3a[1].abc2F[3]); }
  if (strcmp(x1b[0].p, "@abc")) { ng++; printf("%s\n", x1b[0].p); }
  if (strcmp(x2b[1].abc2F[0], "abc1@")) { ng++; printf("%s\n", x2b[1].abc2F[0]); }
  if (strcmp(x2b[1].abc2F[1], "%abc2@")) { ng++; printf("%s\n", x2b[1].abc2F[1]); }
  if (strcmp(x2b[1].abc2F[2], "%abc3@")) { ng++; printf("%s\n", x2b[1].abc2F[2]); }
  if (strcmp(x2b[1].abc2F[3], "%abc4@")) { ng++; printf("%s\n", x2b[1].abc2F[3]); }
  if (strcmp(x3b[1].abc2F[0], "abc1*")) { ng++; printf("%s\n", x3b[1].abc2F[0]); }
  if (strcmp(x3b[1].abc2F[1], "%abc2*")) { ng++; printf("%s\n", x3b[1].abc2F[1]); }
  if (strcmp(x3b[1].abc2F[2], "%abc3*")) { ng++; printf("%s\n", x3b[1].abc2F[2]); }
  if (strcmp(x3b[1].abc2F[3], "%abc4*")) { ng++; printf("%s\n", x3b[1].abc2F[3]); }

#if __INTEL_COMPILER
  if (d.i != -1) { ng++; printf("%d\n", d.i); }
  if (d.j != -2) { ng++; printf("%d\n", d.j); }
#else 
  if (d.i != -1) { ng++; printf("%d\n", d.i); }
  if (d.j != -2) { ng++; printf("%d\n", d.j); }
#endif
  if (d.k != 3) { ng++; printf("%d\n", d.k); }
  if (d.l != 4) { ng++; printf("%d\n", d.l); }
  if (d.m != 6) { ng++; printf("%d\n", d.m); }
  if (d.o != 8) { ng++; printf("%d\n", d.o); }
  if (d.p != 9) { ng++; printf("%d\n", d.p); }
  if (d.q != 10) { ng++; printf("%d\n", d.q); }
  if (d.r != 0){ ng++; printf("%d\n", d.r); }

  if (ng) printf("ng\n");
  else    printf("ok\n");

}
