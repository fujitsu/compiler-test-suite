#include <stdio.h>

typedef struct TEST_TAG {
  struct TEST_TAG *next;
  int i;
} test_t;

int j;

void foo(test_t *root)
{
  test_t *p;
  for(p=root; p; p=p->next) {
    p->i = j++;
  }
}
int main()
{
  test_t array[10];
  for(j=0;j<9;j++) {
    array[j].next = &array[j+1];
  }
  array[9].next = NULL;

  j = 0;
  foo(array);
  if( j==10 ) puts("OK");
  else       puts("NG");
}
   
