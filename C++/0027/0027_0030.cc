#include <limits.h>
#include <stdio.h>

#define NUM 50

int ret(int i);
int main() {

  struct st {
    int N, M, O, i, j, k;
  };
  struct st var, *arg;
  arg = &var;
  unsigned int x[NUM][NUM], ax[NUM][NUM], bx[NUM], cx[NUM][NUM][NUM];

  arg->N = ret(4);
  arg->M = ret(8);
  arg->O = ret(16);

  for ((arg->i) = 0; (arg->i) < NUM; (arg->i)++) {
    bx[(arg->i)] = arg->i;
  }
  for ((arg->i) = 0; (arg->i) < NUM; (arg->i)++) {
    for ((arg->j) = 0; (arg->j) < NUM; (arg->j)++) {
      ax[(arg->i)][(arg->j)] = arg->j;
    }
  }
  for ((arg->i) = 0; (arg->i) < NUM; (arg->i)++) {
    for ((arg->j) = 0; (arg->j) < NUM; (arg->j)++) {
      for ((arg->k) = 0; (arg->k) < 50; (arg->k)++) {
        cx[(arg->i)][(arg->j)][(arg->k)] = arg->k;
      }
    }
  }

  for ((arg->i) = 0; (arg->i) < (arg->N); (arg->i)++) {
    for ((arg->j) = 0; (arg->j) < (arg->M); (arg->j)++) {
      for ((arg->k) = 0; (arg->k) < (arg->O); (arg->k)++) {
        x[(arg->k)][(arg->j)] = ax[(arg->k)][(arg->j)] +
                                bx[(arg->k)] * cx[(arg->k)][(arg->j)][(arg->i)];
      }
    }
  }

  printf("result:\n");
  for ((arg->j) = 0; (arg->j) < (arg->M); (arg->j)++) {
    for ((arg->k) = 0; (arg->k) < (arg->O); (arg->k)++) {
      printf(" %d,", x[(arg->k)][(arg->j)]);
    }
  }
  printf("\nend\n");

  for ((arg->i) = (arg->N); (arg->i) > 0; (arg->i)--) {
    for ((arg->j) = (arg->M); (arg->j) > 0; (arg->j)--) {
      x[arg->j][arg->i] = ax[arg->j][arg->i] + bx[arg->j] * bx[arg->i];
    }
  }

  printf("result2:\n");
  for ((arg->i) = 0; (arg->i) < (arg->M); (arg->i)++) {
    for ((arg->j) = 0; (arg->j) < (arg->O); (arg->j)++) {
      printf(" %d,", x[(arg->j)][(arg->i)]);
    }
  }
  printf("\nend2\n");

  return 0;
}

int ret(int i) {
  switch (i) {
  case 4:
    return 4;
  case 8:
    return 8;
  case 16:
    return 16;
  default:
    return 0;
  }
}
