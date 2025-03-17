extern "C" int printf(const char*, ...);
int count;

class Base {
public:
  virtual void Func() { throw (float)1.0; }
};

class Derived : public Base {
public:
  virtual void Func() { throw (int)1; }
};
int main() {
  try {
    Derived Obj;
    Base *p = &Obj;
    p->Func();
  } catch (int) {
    printf("ok\n");
  }
}
