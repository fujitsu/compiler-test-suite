
#include <stdio.h>
struct t1 {
  int a;
  long double b[2];
};
struct t1 tt1;
struct t1 tt2 = {1,{2,3}};
struct t1 ta1[2];
struct t1 ta2[2] = {{4,{5,6}},{7,{8,9}}};
#pragma omp threadprivate(tt1,tt2,ta1,ta2)
int main() {
#pragma omp parallel
  {
    
    if (tt1.a != 0)    printf("main_0 ng001\n");
    if (tt1.b[0] != 0) printf("main_0 ng002\n");
    if (tt1.b[1] != 0) printf("main_0 ng003\n");

    if (tt2.a != 1)    printf("main_0 ng004\n");
    if (tt2.b[0] != 2) printf("main_0 ng005\n");
    if (tt2.b[1] != 3) printf("main_0 ng006\n");

    if (ta1[0].a != 0)    printf("main_0 ng007\n");
    if (ta1[0].b[0] != 0) printf("main_0 ng008\n");
    if (ta1[0].b[1] != 0) printf("main_0 ng009\n");
    if (ta1[1].a != 0)    printf("main_0 ng010\n");
    if (ta1[1].b[0] != 0) printf("main_0 ng011\n");
    if (ta1[1].b[1] != 0) printf("main_0 ng012\n");

    if (ta2[0].a != 4)    printf("main_0 ng013\n");
    if (ta2[0].b[0] != 5) printf("main_0 ng014\n");
    if (ta2[0].b[1] != 6) printf("main_0 ng015\n");
    if (ta2[1].a != 7)    printf("main_0 ng016\n");
    if (ta2[1].b[0] != 8) printf("main_0 ng017\n");
    if (ta2[1].b[1] != 9) printf("main_0 ng018\n");
  }
#pragma omp parallel
  {
    
    tt1.a = 10;
    tt1.b[0] = 20;
    tt1.b[1] = 30;
    tt2.a = 40;
    tt2.b[0] = 50;
    tt2.b[1] = 60;
    ta1[0].a = 110;
    ta1[0].b[0] = 120;
    ta1[0].b[1] = 130;
    ta1[1].a = 140;
    ta1[1].b[0] = 150;
    ta1[1].b[1] = 160;
    ta2[0].a = 210;
    ta2[0].b[0] = 220;
    ta2[0].b[1] = 230;
    ta2[1].a = 240;
    ta2[1].b[0] = 250;
    ta2[1].b[1] = 260;
  }
#pragma omp parallel
  {
    
    if (tt1.a != 10)    printf("main_1 ng001\n");
    if (tt1.b[0] != 20) printf("main_1 ng002\n");
    if (tt1.b[1] != 30) printf("main_1 ng003\n");

    if (tt2.a != 40)    printf("main_1 ng004\n");
    if (tt2.b[0] != 50) printf("main_1 ng005\n");
    if (tt2.b[1] != 60) printf("main_1 ng006\n");

    if (ta1[0].a != 110)    printf("main_1 ng007\n");
    if (ta1[0].b[0] != 120) printf("main_1 ng008\n");
    if (ta1[0].b[1] != 130) printf("main_1 ng009\n");
    if (ta1[1].a != 140)    printf("main_1 ng010\n");
    if (ta1[1].b[0] != 150) printf("main_1 ng011\n");
    if (ta1[1].b[1] != 160) printf("main_1 ng012\n");

    if (ta2[0].a != 210)    printf("main_1 ng013\n");
    if (ta2[0].b[0] != 220) printf("main_1 ng014\n");
    if (ta2[0].b[1] != 230) printf("main_1 ng015\n");
    if (ta2[1].a != 240)    printf("main_1 ng016\n");
    if (ta2[1].b[0] != 250) printf("main_1 ng017\n");
    if (ta2[1].b[1] != 260) printf("main_1 ng018\n");
  }
  printf("pass\n");
  return 0;
}
