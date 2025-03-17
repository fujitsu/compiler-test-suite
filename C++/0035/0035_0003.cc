int Var;

struct ST {
  int m01;
  int m02;
  int* m03;
} Obj, *SP;

struct ST   sFunc();
struct ST * spFunc();

void gunc1(struct ST *SPX) {
  Var = SPX->m01;
}

void gunc4(struct ST *SPX) {
  Var = *(SPX->m03);
}

void gunc2(struct ST obj1) {
  Var = obj1.m01;
}

void gunc3(struct ST obj1) {
  Var = *(obj1.m03);
}

void gunc5(struct ST  sFunc()) {
  Var = sFunc().m01;
}

void gunc6(struct ST  sFunc()) {
  Var = *(sFunc().m03);
}

void gunc7(struct ST  * spFunc()) {
  Var = spFunc()->m01;
}

void gunc8(struct ST  * spFunc()) {
  Var = *(spFunc()->m03);
}

int main() {
  return 0;
}
