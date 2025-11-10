
enum e1 {
  white,
  blue,
  yellow,
  red
};

int func1(const enum e1 *array) {
  const enum e1 *ep;
  int i = 0;

  for (ep = array; *ep != white; ep++) {
    if (*ep == red) {
      i++;
    }
  }
  return i;
}
