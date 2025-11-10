#include <stdio.h>
extern int sub0(int *k);
extern int sub1(int *k);
extern int sub2(int *k);
extern int sub3(int *k);
extern int sub4(int *k);
extern int sub5(int *k);
extern int sub6(int *k);
extern int sub7(int *k);
extern int sub8(int *k);
extern int sub9(int *k);
extern int sub10(int *k);
extern int sub11(int *k);
extern int sub12(int *k);
extern int sub13(int *k);
extern int sub14(int *k);
int main() {
  int k = 1;
  k = sub0(&k);
  k = sub1(&k);
  k = sub2(&k);
  k = sub3(&k);
  k = sub4(&k);
  k = sub5(&k);
  k = sub6(&k);
  k = sub7(&k);
  k = sub8(&k);
  k = sub9(&k);
  k = sub10(&k);
  k = sub11(&k);
  k = sub12(&k);
  k = sub13(&k);
  k = sub14(&k);
  if (k == 1)
    printf("ok: %d\n",k);
  else
    printf("ng: %d\n",k);
}
