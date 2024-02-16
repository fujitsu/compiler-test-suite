#include <stdio.h>
#define N 1024

typedef unsigned long long int uint64_t;

struct list;

struct list{
  uint64_t val;
  struct list* next;
} ;

void sub(struct list *p) {
  uint64_t i=N;

  while(p != NULL) {
    p->val = i--;
    p = p->next;
  }
}

void init(struct list *head) {
  int i;
  for(i=0;i<N-1;++i) {
    head[i].val = 0;
    head[i].next = &(head[i+1]); 
  }
  head[N-1].val  = 0;
  head[N-1].next = NULL;
}

void test(struct list *head) {
  struct list *ptr;
  ptr = head;
  while(ptr != NULL) {
    printf("%p %llu\n",ptr, ptr->val);
    ptr = ptr->next;
  }
}

int main(void) {
  struct list nodes[N];
  int i;
  init(nodes);
  sub(nodes);
  
  for(i=0;i<N;++i) {
    if(nodes[i].val != N-i) {
      printf("NG\n");
    }
  }
  puts("OK");

  return 0;
}
