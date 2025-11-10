
struct st1 {
  char *name;
  int flag;
};

int func1(const struct st1 *pst);

int func2(const struct st1 *pst) {
  return func1(pst);
}
