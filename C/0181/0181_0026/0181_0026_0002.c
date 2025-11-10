




 
enum enum1;

extern int func1(enum enum1 *ep);

#if ARG_S2
int func2(enum enum1 *ep) {
  return func1(ep);
}
#else 
int func2() {
  return 10;
}
#endif 
