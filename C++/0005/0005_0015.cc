#if __cplusplus
extern "C" int printf(const char *, ...);
#else
extern int printf(const char *, ...);
#endif

#define X 1
#define Y 2

int main() {
  printf("%d\n",X);          
  printf("%d\n",Y);        
#define Y 3              
#pragma push_macro("Y")
#pragma push_macro("X")
  printf("%d\n",Y);        
#define X 2              
  printf("%d\n",X);        
#pragma pop_macro("X")
#pragma pop_macro("Y")
  if (
       X == 1 &&
       Y == 3) {
     printf("OK\n");
   }
   else {
     printf("NG:X=%d, Y=%d\n", X, Y);
   }
   return 0;
}
