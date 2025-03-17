#include <stdio.h>

#define VLEN 16
struct data {
  unsigned short us_data;
  unsigned int ui_data;
  unsigned long ul_data;
  float f_data[VLEN];
};

struct data ans_data;

static void make_data(struct data tmp_data) {
  long int i;
  ans_data.us_data = tmp_data.us_data;
  ans_data.ui_data = tmp_data.ui_data;
  ans_data.ul_data = tmp_data.ul_data;
  for (i = 0; i < VLEN; i++) {
    ans_data.f_data[i] = tmp_data.f_data[i];
  }
}

int main() {
  struct data tmp_data[10];
  long int i, j;

  for (i = 0; i < 10; i++) {
    tmp_data[i].us_data = i;
    tmp_data[i].ui_data = i;
    tmp_data[i].ul_data = i;
    for (j = 0; j < VLEN; j++) {
      tmp_data[i].f_data[j] = (float)j;
    }
    make_data(tmp_data[i]);
  }

  printf("%d\n", ans_data.us_data);
  printf("%d\n", ans_data.ui_data);
  printf("%d\n", ans_data.ul_data);
  printf("%f\n", ans_data.f_data[5]);
  printf("%f\n", ans_data.f_data[8]);
  printf("%f\n", ans_data.f_data[12]);
  return 0;
}
