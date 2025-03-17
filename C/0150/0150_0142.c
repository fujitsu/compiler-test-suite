#include <stdlib.h>
#include <stdio.h>
#include <math.h>

struct tag {
	int a;
 };
struct tag st[] = {1,2};
int main(){
  printf(" TEST START\n");
  if(st[0].a != 1 || st[01].a != 2)
    printf(" TEST NG!!!\n");
  printf(" TEST END\n");
exit (0);
}
