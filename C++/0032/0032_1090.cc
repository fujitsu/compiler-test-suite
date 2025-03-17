extern "C" void printf(char*,...);
void func(int  (*)(char*)){ printf("ng\n");}
void func(char (*)(char*)){ printf("ok\n");}
int main(){
  char (*p)(char*)=0;
  func(p);
  return 0;
}
