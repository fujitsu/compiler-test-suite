
#include <iostream>


#define debug(...) fprintf(stdout, __VA_ARGS__);


#define message(id, msg) "id = " #id ", details: " #msg

int main(void){

  int x = 10;

  
  debug("X = %d\n", x)
  debug("ok\n");

  
  printf("%s\n", message(10, This is old macro) ); 
  printf("%s\n", message(11,) ); 

  return 0;
}
