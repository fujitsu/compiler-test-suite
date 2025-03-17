#include <iostream>
#define TYPE_FLOAT float

class CArray {
public:
  void CInitArray(int n, TYPE_FLOAT *a, TYPE_FLOAT *b, TYPE_FLOAT *c, TYPE_FLOAT *d);
  void CCalcArray(int n, TYPE_FLOAT *a, TYPE_FLOAT *b, TYPE_FLOAT *c, TYPE_FLOAT *d, TYPE_FLOAT *x);
  void CDistArray(int n, TYPE_FLOAT *a, TYPE_FLOAT *b, TYPE_FLOAT *c, TYPE_FLOAT *d, TYPE_FLOAT *x);
  void CPrintArray(int n, TYPE_FLOAT *a, char *c);
  bool CCheckArray(int n, TYPE_FLOAT *r, TYPE_FLOAT *i);

private:
  void setArrayRes(TYPE_FLOAT *r);
  void setArrayInit(TYPE_FLOAT *i);
  int size;
  TYPE_FLOAT *res;
  TYPE_FLOAT *init;
};

void CArray::setArrayInit(TYPE_FLOAT *i) { init = i; }

void CArray::setArrayRes(TYPE_FLOAT *r) { res = r; }

void CArray::CInitArray(int n, TYPE_FLOAT *a, TYPE_FLOAT *b, TYPE_FLOAT *c, TYPE_FLOAT *d) {
  int i;
  size = n;
  for (i = 0; i < n; i++) {
    a[i] = i + 1;
    b[i] = i + 2;
    c[i] = i + 3;
    d[i] = i + 4;
  }
  return;
}

void CArray::CCalcArray(int n, TYPE_FLOAT *a, TYPE_FLOAT *b, TYPE_FLOAT *c, TYPE_FLOAT *d, TYPE_FLOAT *x) {
  int i;
  TYPE_FLOAT temp;
  for (i = 0; i < n; i++) {
    temp = a[i] * b[i];
    temp = temp + b[i] * c[i];
    x[i] = temp + c[i] * d[i];
  }
  setArrayInit(x);
  return;
}

void CArray::CDistArray(int n, TYPE_FLOAT *a, TYPE_FLOAT *b, TYPE_FLOAT *c, TYPE_FLOAT *d, TYPE_FLOAT *x) {
  int i;
  TYPE_FLOAT temp;
  for (i = 0; i < n; i++) {
    temp = a[i] * b[i];

    temp = temp + b[i] * c[i];

    x[i] = temp + c[i] * d[i];
  }
  setArrayRes(x);
  return;
}

void CArray::CPrintArray(int n, TYPE_FLOAT *a, char *c) {
  int i;
  std::cout << c << "[" << n << "] = {";
  for (i = 0; i < n; i++) {
    if (i != 0)
      std::cout << ", ";
    std::cout << a[i];
  }
  std::cout << "}\n";
  return;
}

bool CArray::CCheckArray(int n, TYPE_FLOAT *res, TYPE_FLOAT *init) {
  int i;
  for (i = 0; i < n; i++) {
    if (abs(res[i] - init[i]) > 0.00000001)
      return false;
  }
  return true;
}

int main() {
  CArray obj;
  int n = 9;
  TYPE_FLOAT *a, *b, *c, *d, *init, *res;

  a = new TYPE_FLOAT[n];
  b = new TYPE_FLOAT[n];
  c = new TYPE_FLOAT[n];
  d = new TYPE_FLOAT[n];
  init = new TYPE_FLOAT[n];
  res = new TYPE_FLOAT[n];

  obj.CInitArray(n, a, b, c, d);
  obj.CCalcArray(n, a, b, c, d, init);
  obj.CDistArray(n, a, b, c, d, res);
  if (obj.CCheckArray(n, res, init)) {
    std::cout << "OK\n";
  } else {
    std::cout << "NG\n";
    obj.CPrintArray(n, a, "a");
    obj.CPrintArray(n, b, "b");
    obj.CPrintArray(n, c, "c");
    obj.CPrintArray(n, d, "d");
    obj.CPrintArray(n, init, "init");
    std::cout << "\n";
    obj.CPrintArray(n, res, "res");
  }

  delete[] a, b, c, d, res, init;
  return 0;
}
