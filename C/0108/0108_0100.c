#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <pthread.h>

#define N 100

typedef struct {
  int i;
  int *flag;
} data_t;

static void *worker(void *d)
{
  data_t *data = (data_t*)d;
  for (int j = 0; j < N; j++) {
    int i = __sync_add_and_fetch(&data->i, 1);
    data->flag[i-1] += 1;
  }
  return 0;
}

int main(void)
{
  int n_threads;
  int n_seqs;
  int n_seqs_ng;
  int sum_flags;
  pthread_t *tid;
  data_t data;
  int i;

  n_threads = 8;
  n_seqs = n_threads * N;

  tid = (pthread_t*)malloc(n_threads * sizeof(pthread_t));
  data.flag = (int*)malloc(n_seqs * sizeof(int));

  data.i = 0;
  memset(data.flag, 0, sizeof(int) * n_seqs);

  for (i = 0; i < n_threads; i++) pthread_create(&tid[i], 0, worker, &data);
  for (i = 0; i < n_threads; i++) pthread_join(tid[i], 0);

  n_seqs_ng = sum_flags = 0;
  for (i = 0; i < n_seqs; i++) {
    if (data.flag[i] == 1) {
    } else {
      n_seqs_ng++;
    }
    sum_flags += data.flag[i];
  }

  if (n_seqs_ng != 0) {
    printf("ng  n_seqs_ng != 0 \n");
    fprintf(stderr, "[M::%s] n_threads = %d\n", __func__, n_threads);
    fprintf(stderr, "[M::%s] n_seqs = %d\n", __func__, n_seqs);
    fprintf(stderr, "[M::%s] n_seqs_ng = %d\n", __func__, n_seqs_ng);
    fprintf(stderr, "[M::%s] sum_flags = %d\n", __func__, sum_flags);
  } else {
    printf("ok\n");
  }

  free(data.flag);
  free(tid);

  return 0;
}
