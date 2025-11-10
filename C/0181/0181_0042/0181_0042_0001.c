




 
struct struct1;

int func1(struct struct1 *stp) {
  return 10;
}

#if ARG_S1
int func(struct struct1 *stp) {
  return 10;
}
#else 
int func() {
  return 10;
}
#endif 
