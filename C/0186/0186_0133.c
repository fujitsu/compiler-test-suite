#include <stdio.h>

struct data {
  long double ld_data1;
  long double ld_data2;
};

static struct data make_data() {
  struct data tmp_data;
  tmp_data.ld_data1 = 1.0;
  tmp_data.ld_data2 = 2.0;
  return tmp_data;
}

int main() {
  struct data ans_data[10];
  long int i;

  for (i=0; i<10; i++) {
    ans_data[i] = make_data();
  }
  printf("%Lf\n",ans_data[1].ld_data1);
  printf("%Lf\n",ans_data[2].ld_data2);

  return 0;
}
