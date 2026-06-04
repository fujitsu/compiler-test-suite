#include <stdio.h>

#define OBJ_LIKE (1 - 1)
#define OBJ_LIKE
#define FUNC_LIKE(a) ( a )
#define FUNC_LIKE( a ) a ## 2

int main()
{
  OBJ_LIKE
  if(FUNC_LIKE(1) == 12)
    printf("ok\n");
  else
    printf("ng\n");
  
  return 0;
}
