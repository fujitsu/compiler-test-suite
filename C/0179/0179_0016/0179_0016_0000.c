#include <stdio.h>
extern int add(int a, int b);
extern int sub(int a, int b);
extern int swap(int *a, int *b);

int a = 12;
int b = 18;

int main()
{
  int (*p) (int x, int y);
  int result;

  p = (a < b) ? add : sub;
  result = (*p) (a, b);
  printf("result 1 = %d\n", result);
  swap(&a,&b);
  p = (a < b) ? add : sub;
  result = (*p) (a, b);
  printf("result 2 = %d\n", result);
 
  return 0;
}
