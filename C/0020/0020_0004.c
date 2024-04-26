/*****************************************
 * Testing the restrict qualification
 * There are three types of variables assigned: arrays, variables, and pointers.
 ******************************************/

#include <stdio.h>
#include <stdlib.h>

int * alloc03(int * pa03){
  return pa03;
}

void foo01(int * restrict pa_ary01, int * restrict pa_p01) {
  pa_p01[0] = 1;
  pa_ary01[0] = 3;
  pa_p01[0] = pa_p01[0] + 1;

  if (pa_p01[0] == 2 && pa_ary01[0] == 3){
    puts("pa_ary01&pa_p01 optimization : ok");
  }else {
    puts("pa_ary01&pa_p01 optimization : ng");
  }
}

void foo02(int * restrict pa_arg02, int * restrict pa_p02) {
  pa_p02[0] = 1;
  pa_arg02[0] = 3;
  pa_p02[0] = pa_arg02[0] + 1;

  if (pa_p02[0] == 4 && pa_arg02[0] == 3){
    puts("pa_arg02&pa_p02 optimization : ok");
  }else{
    puts("pa_arg02&pa_p02 optimization : ng");
  }
}

void foo03(int * restrict pa_pt03, int * restrict pa_p03) {
  pa_p03[0] = 1;
  pa_pt03[0] = 3;
  pa_p03[0] = pa_p03[0] + 1;

  if (pa_p03[0] == 2 && pa_pt03[0] == 3){
    puts("pa_pt03&pa_p03 optimization : ok");
  }else{
    puts("pa_pt03&pa_p03 optimization : ng");
  }
}

int main() {
  int pa_ary01[2];
  int *pa_p01;
  pa_p01 = pa_ary01;
  foo01(pa_ary01, pa_p01);

  int pa_arg02;
  int *pa_p02;
  pa_p02 = &pa_arg02;
  foo02(&pa_arg02, pa_p02);

  int *pa_pt03 = (int *)malloc(sizeof(int));
  int *pa_p03;
  pa_p03 = pa_pt03;
  foo03(pa_pt03, pa_p03);

  free(pa_pt03);
  return 0;
}
