extern int printf(const char *, ...);

int main() {
  printf(" atomic_always_lock_free \n");
  printf(" atomic_always_lock_free \n");
  printf(" atomic_always_lock_free \n");
  printf(" atomic_always_lock_free \n");
  printf(" no_atomic_always_lock_free \n");

  return 0;
}
