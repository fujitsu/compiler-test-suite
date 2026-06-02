
#include <stdio.h>
#include <pthread.h>
#include <unistd.h>

#define N 10

typedef struct {
  char name;
  int  numb;
} MY_THREAD_ARG;

static int __thread a[N]={1,2,3,4,5,6,7,8,9,10};

void *pthread_sub(void *arg){
  MY_THREAD_ARG *tmp = (MY_THREAD_ARG*)arg;
  int i;
  for( i=0; i<N; i++ ) a[i] = a[i] + tmp->numb;
  for( i=0; i<N; i++ ) printf("%c[%d]=%d ",tmp->name,i,a[i]);
  printf("\n");
  return 0;
}

int main(){
  pthread_t pt1,pt2;
  MY_THREAD_ARG th1,th2;
  th1.name = 'A'; th1.numb=2;
  th2.name = 'B'; th2.numb=3;

  pthread_create(&pt1,NULL,pthread_sub,&th1);
  pthread_create(&pt2,NULL,pthread_sub,&th2); 
  pthread_join(pt1,NULL);
  pthread_join(pt2,NULL);
  return 0;
}
