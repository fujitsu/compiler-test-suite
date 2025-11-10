
struct st1 {
  char *name;
  int flag;
};

int func1(const struct st1 *array) {
  const struct st1 *stp;
  int i = 0;

  for (stp = array; stp->name; stp++) {
    if (stp->flag) {
      i++;
    }
  }
  return i;
}
