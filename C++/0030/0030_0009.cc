#include <stdio.h>

#define VLEN 16
struct data {
  unsigned short us_data;
  unsigned int   ui_data;
  unsigned long  ul_data;
  float f_data[VLEN];
};

static struct data make_data() {
  long int i;
  struct data tmp_data;
  tmp_data.us_data = 1;
  tmp_data.ui_data = 2;
  tmp_data.ul_data = 3;
  for (i=0; i<VLEN; i++) {
    tmp_data.f_data[i] = (float)i;
  }
  return tmp_data;
}

int main() {
  struct data ans_data[10];
  long int i;

  for (i=0; i<10; i++) {
    ans_data[i] = make_data();
  }
  printf("%d\n",ans_data[0].us_data);
  printf("%d\n",ans_data[1].ui_data);
  printf("%d\n",ans_data[2].ul_data);
  printf("%f\n",ans_data[3].f_data[2]);
  printf("%f\n",ans_data[4].f_data[10]);
  printf("%f\n",ans_data[5].f_data[7]);
  printf("%f\n",ans_data[6].f_data[5]);
  return 0;
}
