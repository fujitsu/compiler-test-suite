
enum enum1 {
  e0,
  e1,
  e2,
  e_last = 10 
};

int func1(enum enum1 *ep) {
  return *ep;
}

int func() {
  return e_last;
}
