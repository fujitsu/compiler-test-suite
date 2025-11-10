




 
struct struct1;

#if ARG_S2
#if !NO_ARG_S1
extern int func1(struct struct1 *stp);
#endif 

int func2(struct struct1 *stp) {
#if !NO_ARG_S1
  func1(stp);
#endif 
  return 500;
}
#else 
int func2() {
  return 500;
}
#endif 
