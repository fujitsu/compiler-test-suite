
enum e1;

int func1(const enum e1 *pe);

int func2(const enum e1 *pe) {
  return func1(pe);
}
