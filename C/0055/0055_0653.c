extern int printf(const char *, ...);

#if defined(__GNUC__) 

#ifndef TYPE
#define TYPE char
#endif

void foo0() {
  __atomic_signal_fence(__ATOMIC_RELAXED);  
}
void foo1() {
  __atomic_signal_fence(__ATOMIC_CONSUME);  
}
void foo2() {
  __atomic_signal_fence(__ATOMIC_ACQUIRE);  
}
void foo3() {
  __atomic_signal_fence(__ATOMIC_RELEASE);  
}
void foo4() {
  __atomic_signal_fence(__ATOMIC_ACQ_REL);  
}
void foo5() {
  __atomic_signal_fence(__ATOMIC_SEQ_CST);  
}

#ifndef NO_EXEC
int main() {
  foo0();
  printf("  __atomic_signal_fence(0) \n");
  foo1();
  printf("  __atomic_signal_fence(1) \n");
  foo2();
  printf("  __atomic_signal_fence(2) \n");
  foo3();
  printf("  __atomic_signal_fence(3) \n");
  foo4();
  printf("  __atomic_signal_fence(4) \n");
  foo5();
  printf("  __atomic_signal_fence(5) \n");

  return 0;
}
#endif

#else
int main() {
  printf("  __atomic_signal_fence(0) \n");
  printf("  __atomic_signal_fence(1) \n");
  printf("  __atomic_signal_fence(2) \n");
  printf("  __atomic_signal_fence(3) \n");
  printf("  __atomic_signal_fence(4) \n");
  printf("  __atomic_signal_fence(5) \n");
  return 0;
}
#endif
