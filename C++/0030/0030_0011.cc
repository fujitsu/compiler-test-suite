#include <stdio.h>

#define VLEN 16
struct data {
  float f_data[VLEN];
};

struct data ans_data;

static void make_data(struct data tmp_data) {
  long int i;
  for (i = 0; i < VLEN; i++) {
    ans_data.f_data[i] = tmp_data.f_data[i];
  }
}

int main() {
  struct data tmp_data[10];
  long int i, j;

  for (i = 0; i < 10; i++) {
    for (j = 0; j < VLEN; j++) {
      tmp_data[i].f_data[j] = (float)j;
    }
    make_data(tmp_data[i]);
  }

  printf("%f\n", ans_data.f_data[5]);
  printf("%f\n", ans_data.f_data[8]);
  printf("%f\n", ans_data.f_data[12]);
  return 0;
}
