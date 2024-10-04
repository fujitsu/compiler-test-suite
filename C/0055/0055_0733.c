extern int printf(const char *, ...);

#if defined(__GNUC__) 

#ifndef TYPE
#define TYPE unsigned int
#endif
TYPE foo(volatile TYPE *x, TYPE oldval, TYPE newval) {
  return __sync_bool_compare_and_swap(x, oldval, newval);
}

#ifndef NO_EXEC
extern int printf(const char *, ...);
volatile TYPE a[4];
int main() {
  int ret;
  volatile TYPE a0, a1, a2, a3, a4;
  a4 = 0x7e;
  a1 = 0x7e;
  a2 = 0x7d;
  a3 = 0x7c;
  ret = (int)foo(&a1, a2, a3);
  if (ret != 0 || a1 != 0x7e || a2 != 0x7d || a3 != 0x7c) {
    printf(" - case ne - \n");
    printf("0x%x\n", (int)a1);
    printf("0x%x\n", ret);
    printf("0x%x\n", (int)a1);
    printf("0x%x\n", (int)a2);
    printf("0x%x\n", (int)a3);
  }
  a4 = 0x7e;
  a1 = 0x7e;
  a2 = 0x7e;
  a3 = 0x7c;
  ret = (int)foo(&a1, a2, a3);
  if (ret != 1 || a1 != 0x7c || a2 != 0x7e || a3 != 0x7c) {
    printf(" - case eq - \n");
    printf("0x%x\n", (int)a1);
    printf("0x%x\n", ret);
    printf("0x%x\n", (int)a1);
    printf("0x%x\n", (int)a2);
    printf("0x%x\n", (int)a3);
  }
  printf("ok\n");
  return 0;
}
#endif

#else

int main() {
  printf("ok\n");
  return 0;
}

#endif
