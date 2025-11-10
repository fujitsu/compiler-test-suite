

extern "C" void printf(char*,...);
extern void func3();
void func_sta(){
 try {
  func3();
 }
 catch (unsigned long long){
   printf(" E:NG \n");
 }
}
void func_ext(int i){
  double(*p)()=0;
  if (i==0)
    throw p;  
  func_sta();
}
