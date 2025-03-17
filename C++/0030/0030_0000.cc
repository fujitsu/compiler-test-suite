#include <stdio.h>

typedef double rvec[3];
typedef struct v_t {
  int a;
  int **b;
} v_t;

static inline void copy_rvec(const rvec a, rvec b) {
  b[0] = a[0];
  b[1] = a[1];
  b[2] = a[2];
}

static int getMode(const int *a, const v_t *v) {
  if (a == nullptr)
    return 2;
  else if (v != nullptr && v->a)
    return 1;
  else
    return 0;
}

void sub(const v_t *v, const int *a, rvec r[], const int c[], const int n) {
  const int mode = getMode(a, v);
  const int *vb = nullptr;
  printf("OK1\n");
  for (int i = 0; i < 2; i++) {
    if (c[i] == 0)
      continue;

    if (mode == 1)
      vb = v->b[i];

    for (int j = 0; j < n;) {
      if (mode == 1) {
        int idx = vb[j++];
        copy_rvec(r[idx], r[idx + 3]);
      }
      j++;
    }
  }
  printf("OK2\n");
}

int main(int argc, char *argv[]) {
  int c[] = {0, 0};
  sub(nullptr, nullptr, nullptr, c, 0);
  return 0;
}
