#ifdef	__cplusplus
extern "C" void printf(char*,...);
#else
void printf(char*,...);
#endif
int main(){
  int i=0;
  i++;
  i--;
  printf("ok\n");
}
