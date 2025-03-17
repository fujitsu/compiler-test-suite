#include <stdio.h>
#include <pthread.h>
#include <unistd.h>

pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;

void* counter(void* args){
  pthread_mutex_lock(&mutex);
  for(int i=0; i<5; ++i){
    sleep(1);
  }
  pthread_mutex_unlock(&mutex);
  return NULL;
}

void* waiter(void* args){
  pthread_mutex_lock(&mutex);  
  printf("ok\n");
  pthread_mutex_unlock(&mutex);
  return NULL;
}

int main(void){
  pthread_t thread1;
  pthread_t thread2;

  pthread_create(&thread1, NULL, counter, NULL);
  pthread_create(&thread2, NULL, waiter, NULL);

  pthread_join(thread1, NULL);
  pthread_join(thread2, NULL);

  return 0;
}


