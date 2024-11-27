#include <stdio.h>


#include <time.h>
int main()
{
  time_t ct;
  struct tm *now;
  int    xx = 1;

  while (xx!=0) {
    ct = time(NULL);
    now = localtime(&ct);
    xx = now->tm_min %2;
  }

  printf("data = %d\n", xx); 
}
