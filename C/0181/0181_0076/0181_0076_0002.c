




 
union union1;

#if ARG_S2
#if !NO_ARG_S1
extern int func1(union union1 *up);
#endif 

int func2(union union1 *up) {
#if !NO_ARG_S1
  func1(up);
#endif 
  return 500;
}
#else 
int func2() {
  return 500;
}
#endif 
