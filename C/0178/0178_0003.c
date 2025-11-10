#include <stdio.h>
#include <stddef.h>
#include <stdbool.h>

void *func00(int i) {
  if (i==1) return NULL;
  return __builtin_return_address(0);
}

static void *func01(int i) {
  if (i==1) return NULL;
  return __builtin_return_address(0);
}
int main() {
  int i;
  void *p,*(*fp)(int);
  static int cc=0;

  printf("return add test\n");
  p=__builtin_return_address(0);
  printf("main %d \n",cc);
  p=fp=func00(0);
RETUEN_ADDRESS:;
  printf("auto   func %d\n",cc);

  if (cc++==10) goto jmp;

  p=func01(0);
  printf("static func %d\n",cc);

  goto RETUEN_ADDRESS;

jmp:;
  printf("end    func %d\n",cc);

  printf("test end \n");
}
