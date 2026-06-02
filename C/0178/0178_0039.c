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
  void *p,*r,*(*fp)(int);
  char *cp;
  static int cc=0;


  printf("return add test\n");
  p=__builtin_return_address(0);
  r=__builtin_extract_return_addr(p);
  if (p!=r) printf("main ng %x %x \n",p,r);
  else      printf("main ok \n");
  fp=p=func00(0);
RETUEN_ADDRESS:;
  r=__builtin_extract_return_addr(fp);
  if (fp!=r) printf("auto   func ng %x %x \n",fp,r);
  else       printf("auto   func ok %d \n",cc);

  if (cc++==10) goto jmp;
  p=func01(0);
  r=__builtin_extract_return_addr(p);
  if (p!=r) printf("static func ng %x %x \n",p,r);
  else      printf("static func ok %d \n",cc);

  goto RETUEN_ADDRESS;

jmp:;
  printf("const & exper test \n");
  r=__builtin_extract_return_addr(0);
  if (r!=0) printf("const0 ng %d \n",r);
  else      printf("const0 ok \n");

  r=__builtin_extract_return_addr((void*)1);
  if (r!=(void*)1) printf("const1 ng %d \n",r);
  else             printf("const1 ok \n");

  cp=p;
  r=__builtin_extract_return_addr(cp+2);
  if (r!=cp+2) printf("ptr ng %d %d\n",r,cp+2);
  else         printf("ptr ok \n");

  r=__builtin_extract_return_addr(p);
  if (p!=r) printf("end func ng %x %x \n",p,r);
  else      printf("end func ok %d \n",cc);

  printf("test end \n");
}
