#define PRIMARY 1


typedef struct {
  int index;
} st;

#if PRIMARY
 #define EXTERN
#else 
 #define EXTERN extern
#endif 

EXTERN st *struct1;

extern int printf(const char*, ...);
extern int bar(void);
int main() {
  int res;
  st st1;
  struct1 = &st1;
  st1.index=1; 
  res = bar();
  if (res == 1) {
    printf("OK\n");
  }
  else {
    printf("NG : res=%d\n", res);
  }
  return 0;
}
