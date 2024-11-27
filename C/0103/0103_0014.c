#include <stdio.h>
#include <alloca.h>

#if defined(__x86_64__)
#define ALIGNMENT_VALUE 256
#define TEST_TYPE void *
struct mem_str {
  unsigned long ar[4];
} sval = {0, 1, 2, 3};

void ref_reg(int a, ...) {}

void check_call(struct mem_str arg) {
  if (arg.ar[0] != 0 || arg.ar[1] != 1 || arg.ar[2] != 2 || arg.ar[3] != 3) {
    puts("arg NG");
  }
}

int do_test_reg0(int val, struct mem_str arg) {
  unsigned long ul;
  TEST_TYPE aligned_val __attribute__((aligned(ALIGNMENT_VALUE)));
  int *ap[val], i;
  for(i=0;i<val;++i) {
    ap[i] = (int*)alloca(sizeof(i));
  }
  ul = (unsigned long)&aligned_val;
  check_call(arg);
  if ((ul % ALIGNMENT_VALUE) != 0) {
    printf("%llx\n", (unsigned long)ap[0]);
    return 1;
  }
  return 0;
}

int do_test_reg1(int val, struct mem_str arg) {
  register int r1 __asm__("r15");
  unsigned long ul;
  TEST_TYPE aligned_val __attribute__((aligned(ALIGNMENT_VALUE)));
  int *ap[val], i;
  for(i=0;i<val;++i) {
    ap[i] = (int*)alloca(sizeof(i));
  }
  ul = (unsigned long)&aligned_val;
  check_call(arg);
  ref_reg(1,r1);
  if ((ul % ALIGNMENT_VALUE) != 0) {
    printf("%llx\n", (unsigned long)ap[0]);
    return 1;
  }
  return 0;
}

int do_test_reg2(int val, struct mem_str arg) {
  register int r1 __asm__("r12");
  register int r2 __asm__("r13");
  unsigned long ul;
  TEST_TYPE aligned_val __attribute__((aligned(ALIGNMENT_VALUE)));
  int *ap[val], i;
  for(i=0;i<val;++i) {
    ap[i] = (int*)alloca(sizeof(i));
  }
  ul = (unsigned long)&aligned_val;
  check_call(arg);
  ref_reg(2, r1, r2);
  if ((ul % ALIGNMENT_VALUE) != 0) {
    printf("%llx\n", (unsigned long)ap[0]);
    return 1;
  }
  return 0;
}

int do_test_reg3(int val, struct mem_str arg) {
  register int r1 __asm__("rbx");
  register int r2 __asm__("r13");
  register int r3 __asm__("r15");
  unsigned long ul;
  TEST_TYPE aligned_val __attribute__((aligned(ALIGNMENT_VALUE)));
  int *ap[val], i;
  for(i=0;i<val;++i) {
    ap[i] = (int*)alloca(sizeof(i));
  }
  ul = (unsigned long)&aligned_val;
  check_call(arg);
  ref_reg(3, r1, r2, r3);
  if ((ul % ALIGNMENT_VALUE) != 0) {
    printf("%llx\n", (unsigned long)ap[0]);
    return 1;
  }
  return 0;
}

int do_test_reg4(int val, struct mem_str arg) {
  register int r1 __asm__("r12");
  register int r2 __asm__("r13");
  register int r3 __asm__("r14");
  register int r4 __asm__("r15");
  unsigned long ul;
  TEST_TYPE aligned_val __attribute__((aligned(ALIGNMENT_VALUE)));
  int *ap[val], i;
  for(i=0;i<val;++i) {
    ap[i] = (int*)alloca(sizeof(i));
  }
  ul = (unsigned long)&aligned_val;
  check_call(arg);
  ref_reg(4, r1, r2, r3, r4);
  if ((ul % ALIGNMENT_VALUE) != 0) {
    printf("%llx\n", (unsigned long)ap[0]);
    return 1;
  }
  return 0;
}

int do_test_reg5(int val, struct mem_str arg) {
  register int r1 __asm__("rbx");
  register int r2 __asm__("r12");
  register int r3 __asm__("r13");
  register int r4 __asm__("r14");
  register int r5 __asm__("r15");
  unsigned long ul;
  TEST_TYPE aligned_val __attribute__((aligned(ALIGNMENT_VALUE)));
  int *ap[val], i;
  for(i=0;i<val;++i) {
    ap[i] = (int*)alloca(sizeof(i));
  }
  ul = (unsigned long)&aligned_val;
  check_call(arg);
  ref_reg(5, r1, r2, r3, r4, r5);
  if ((ul % ALIGNMENT_VALUE) != 0) {
    printf("%llx\n", (unsigned long)ap[0]);
    return 1;
  }
  return 0;
}

int main() {
  int ret = 0;
  ret += do_test_reg0(10, sval);
  ret += do_test_reg1(10, sval);
  ret += do_test_reg2(10, sval);
  ret += do_test_reg3(10, sval);
  ret += do_test_reg4(10, sval);
  ret += do_test_reg5(10, sval);
  if (ret == 0) {
    puts("OK");
  } else {
    printf("NG : %d\n", ret);
  }
  return 0;
}
#else
int main() {
  puts("OK");
  return 0;
}
#endif
