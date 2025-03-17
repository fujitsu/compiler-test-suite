extern "C" void printf(char*,...);
int work=0;
void func(int  (*)(char*)){
#pragma omp atomic
  work++;
}
void func(char (*)(char*)){;}
int main(){
  char (*p)(char*)=0;
#pragma omp parallel
  func(p);
  if(!work)
    printf("ok\n");
  else
    printf("ng\n");
  return 0;
}
