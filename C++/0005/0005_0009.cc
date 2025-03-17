#if __cplusplus
extern "C" int printf(const char *, ...);
#else
extern int printf(const char *, ...);
#endif

#if __EDG_VERSION <= 310
#ident "string2"
#else 
  
  
  
#ident "string2" extra2
  
  
#endif 

int main() {
  printf("OK\n");
  return 0;
}
