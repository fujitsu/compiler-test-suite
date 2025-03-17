int Var, *P, **PP;

void Func() {
  Var = PP[10][4];
  Var = *((int *)Var);
  Var = *P;
  *P = Var;
  Var = **PP;
  **PP = Var;
  Var = *(P+1);
  *(P+1) = Var;
  Var = **(PP+1);
  **(PP+1) = Var;
  Var = P[20];
  P[20] = Var;
  Var = (*PP)[20];
  (*PP)[20] = Var;
  Var = (P+1)[20];
  (P+1)[20] = Var;
  Var = (*(PP+1))[20];
  (*(PP+1))[20] = Var;
  (*P)++;
  (**PP)++;
  (*(P+1))++;
  (**(PP+1))++;
}

struct ST {
  int m01;
  int m02;
  int* m03;
} Obj, *SP;

struct ST   sFunc();
struct ST * spFunc();

void Gunc() {
  Var = Obj.m01;
  Var = Obj.m02;
  Var = *(Obj.m03);
  Var = SP->m01;
  Var = SP->m02;
  Var = *(SP->m03);
  Var = sFunc().m01;
  Var = sFunc().m02;
  Var = *(sFunc().m03);
  Var = spFunc()->m01;
  Var = spFunc()->m02;
  Var = *(spFunc()->m03);
  (Obj.m01)++;
  (Obj.m02)++;
  (*(Obj.m03))++;
  (SP->m01)++;
  (SP->m02)++;
  (*(SP->m03))++;
  (*(sFunc().m03))++;
  (spFunc()->m01)++;
  (spFunc()->m02)++;
  (*(spFunc()->m03))++;
}

struct ST * spFunc() {
}
struct ST   sFunc() {
}

int main() {
  return 0;
}
