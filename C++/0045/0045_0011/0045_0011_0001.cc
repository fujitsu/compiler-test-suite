
extern int st;
extern void  func3();
void func2(){
 st++;
 func3();
 st--;
 st++;
}
