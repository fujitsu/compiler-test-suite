#include <cstdio>
#include <iostream>

#define debug(...) fprintf(stdout, __VA_ARGS__);

#define message(id, msg) "id = " #id ", details: " #msg

int main(void){
  int x = 10;
  debug("args = %d\n", x);
  
  printf("%s\n", message(10, This is old macro) );
  printf("%s\n", message(10, ) );

  return 0;
}
