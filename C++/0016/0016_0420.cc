#include "007.h"
#ifdef	__cplusplus
extern "C" void printf(char*,...);
#else
void printf(char*,...);
#endif
int main(){
  int i=0;
  i++;
  i--;
  func();
  printf("ok\n");
}
