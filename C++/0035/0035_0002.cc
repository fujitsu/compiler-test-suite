int Var, *P, **PP;

void func1(int *P) {
  (*P)++;
}

void func2(int **PP) {
  (**PP)++;
}


void func3(int P[20]) {
  P[5]=5;
}

void func4(int **PP) {
  Var = PP[10][4];
}

void func5(int Var) {
  Var=*((int *)Var);
}

void func6(int *P) {
  (*(P+1))++;
}

void func7(int **P) {
  (**(P+1))++;
}

void func8(int **PP) {
  Var = (*PP)[5];
}

void func9(int P[20]) {
  (P+1)[4]=4;
}

void func10(int **PP) {
  (*(PP+1))[5]=7;
}


int main() {
  return 0;
}
