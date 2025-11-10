




 
union union1;

int func1(union union1 *up) {
  return 10;
}

#if ARG_S1
int func(union union1 *up) {
  return 10;
}
#else 
int func() {
  return 10;
}
#endif 
