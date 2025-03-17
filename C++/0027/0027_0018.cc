#include <iostream>

struct TC {
  int start_index;
  int end_index;
  int *parray;
  int loop_fusion_counter_self(void);
  int loop_fusion_counter_other(int, int const *);
  TC() {
    int i;
    start_index = 0;
    end_index = 10;
    parray = (int *)malloc(sizeof(int) * 11);
    for (i = 0; i < 11; ++i) {
      parray[i] = i;
    }
  }
};

int TC::loop_fusion_counter_self() {
  int i;
  int tmp = 0, tmp2 = 0;

  for (i = start_index; i < end_index; i++) {
    tmp += parray[i];
  }
  for (i = start_index; i < end_index; ++i) {
    tmp2 += parray[i];
  }
  free(parray);
  return tmp + tmp2;
}

int TC::loop_fusion_counter_other(int n, int const *p) {
  int i;
  int tmp = 0, tmp2 = 0;

  for (i = 0; i < n; i++) {
    tmp += p[i];
  }
  for (i = 0; i < n; ++i) {
    tmp2 += p[i];
  }
  return tmp + tmp2;
}

int main() {
  int res;
  int ia[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  TC obj;
  res = obj.loop_fusion_counter_self();
  res += obj.loop_fusion_counter_other(10, ia);
  if (res == 180) {
    std::cout << "OK" << std::endl;
  } else {
    std::cout << "NG" << std::endl;
  }
  return 0;
}
