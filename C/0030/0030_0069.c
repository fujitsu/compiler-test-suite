#include <stdio.h>
struct a {
  int i;
  char j;
};
struct b {
  int i;
  char j;
};
struct c {
  int i;
  char j;
};
struct d {
  int i;
  char j;
};
struct aa {
  char i;
  char j;
  struct a a;
};
struct ba {
  char i;
  char j;
  struct a a;
};
struct ca {
  char i;
  char j;
  struct a a;
};
struct da {
  char i;
  char j;
  struct a a;
};
int main()
{
  struct aa s1 = {.j = 10, {1,2}};
  struct aa s2 = {.j=10,1,.a.j=2};
  struct aa s3 = {.j=10,.a.j=2,.a.i=1};
  struct aa s4 = {.j=10,{.i=1, .j=2}};
  struct aa s5 = {.j=10,{.j=2, .i=1}};
  struct aa s6 = {.a.j=2,.a.i=1,.j=10,.i=0};
  struct aa s7 = {.j=10,{.i=1, {2}}};
  struct aa s8 = {.j=10,.i=0,10,{{1},{2}}};
  struct aa s9 = {0,10,1,2};
  struct aa s10 = {0,10,.a=(struct a){1,2}};
  
  printf("%d %d %d %d\n",s1.i, s1.j, s1.a.i, s1.a.j);
  printf("%d %d %d %d\n",s2.i, s2.j, s2.a.i, s2.a.j);
  printf("%d %d %d %d\n",s3.i, s3.j, s3.a.i, s3.a.j);
  printf("%d %d %d %d\n",s4.i, s4.j, s4.a.i, s4.a.j);
  printf("%d %d %d %d\n",s5.i, s5.j, s5.a.i, s5.a.j);
  printf("%d %d %d %d\n",s6.i, s6.j, s6.a.i, s6.a.j);
  printf("%d %d %d %d\n",s7.i, s7.j, s7.a.i, s7.a.j);
  printf("%d %d %d %d\n",s8.i, s8.j, s8.a.i, s8.a.j);
  printf("%d %d %d %d\n",s9.i, s9.j, s9.a.i, s9.a.j);
  printf("%d %d %d %d\n",s10.i,s10.j,s10.a.i,s10.a.j);
}
