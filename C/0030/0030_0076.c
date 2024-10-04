#include <stdio.h>
 struct tag3 {
    struct tag3 *st_3;
  };
  struct tag3 tg3_1={ &tg3_1 };
int main()
  {
     printf("OK\n");
  }
