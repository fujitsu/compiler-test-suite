#if __cplusplus
extern "C" int printf(const char *, ...);
#else
extern int printf(const char *, ...);
#endif
int main() {
  printf("OK\n");
  return 0;
}
