#if __cplusplus
extern "C" int printf(const char *, ...);
#else
extern int printf(const char *, ...);
#endif
#ident "ident2: #ident"
int main() {
  printf("OK\n");
  return 0;
}
