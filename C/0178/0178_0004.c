#include <stdio.h>
#include <stddef.h>
#include <stdbool.h>

static void * t;
void *func00(int cc) {
  static void * (*fp)(int);

  cc++;
  fp=__builtin_return_address(0);

  if (cc>=10) return NULL;

  if ((t=func00(cc))!=0 && fp!=t) printf("NG %x %x \n",fp,t);
  else  printf("ok count:%d \n",cc);

  return fp;
}
int main() {
  int i;
  void * (*fp)(int);

  printf("return add test\n");
  fp=func00(5);
  if (fp==t) printf("ok end \n");
  else       printf("ng end %x %x\n",fp,t);

  printf("test end \n");
}
