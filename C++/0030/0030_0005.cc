#include <stdio.h>

struct data {
  float f_data1;
  float f_data2;
  struct {
    float str_f_data;
  } data2;
  float f_data3;
  float f_data4;
};

static struct data make_data() {
  struct data tmp_data;
  tmp_data.f_data1 = 1.0;
  tmp_data.f_data2 = 2.0;
  tmp_data.data2.str_f_data = 10.0;
  tmp_data.f_data3 = 3.0;
  tmp_data.f_data4 = 4.0;
  return tmp_data;
}

int main() {
  struct data ans_data[100];
  long int i;

  for (i=0; i<100; i++) {
    ans_data[i] = make_data();
  }
  printf("%f\n",ans_data[1].f_data1);
  printf("%f\n",ans_data[2].f_data2);
  printf("%f\n",ans_data[5].data2.str_f_data);
  printf("%f\n",ans_data[3].f_data3);
  printf("%f\n",ans_data[4].f_data4);
  return 0;
}
