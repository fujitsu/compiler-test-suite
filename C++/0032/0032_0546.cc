#include <stdio.h> 

void *deleted = 0;
void operator delete(void *p)
{
  deleted = p;
}
int main()
{
  int x;
  char *q[2];
  for (int i = 0; i < 2; ++i)
    q[i] = new char;
  char **p = &q[1];
  deleted = 0;

  delete *--p;         
  
  x = q[0] >= deleted;
  if (x == 1)
    printf("ok\n");
  else
    printf("ng \n");
}

