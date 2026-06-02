#include <stdio.h>
#include <stddef.h>
#include <stdbool.h>

#define check_const(a,b) \
  if (cc++,a!=__builtin_constant_p(b)) printf("NG %d\n",cc); \
  else printf("OK %d\n",cc);

static const char *cp="abc";
const int ci=2;
static int func(void) { return 1; }
int main() {
  static int cc=0;
  int a;
  printf("Const test \n");


  check_const(1,2);
  check_const(1,2/0.3);
  check_const(1,NULL);
  check_const(1,"");
  check_const(0,cp);
  check_const(0,&ci);
  check_const(0,cc);
  check_const(0,a=2);
  check_const(0,func());
  check_const(0,func);
  check_const(0,&func);
  check_const(1,sizeof(a));
#if         defined(__EDG_VERSION__) && (__EDG_VERSION__ > 310) && defined(__OPTIMIZE__)
  check_const(1,sizeof(a)==sizeof(cc)?ci:0);
#else
  check_const(1,sizeof(a)==sizeof(cc)?ci:0);
#endif
  check_const(1,sizeof(a)==sizeof(cc)?1:ci);
  check_const(1,sizeof(a)==sizeof(cc)?1:0);
  check_const(0,sizeof(a)==cc?1:0);
  check_const(1,sizeof(a)==4);
  check_const(1,(unsigned int)0XFFFFFFFFFFFFFFFF);
  check_const(1,0X7FFFFFFFFFFFFFFF);
  printf("test end\n");
}
