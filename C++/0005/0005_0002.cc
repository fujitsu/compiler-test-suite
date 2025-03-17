extern "C" int printf(const char *, ...);

struct D {
  int x;
  D(int n=0) : x(n) {}; 
  D(D const& obj) {     
    x = (obj.x)*(obj.x);
  }
};
D g(D d) {
  return ({ d; });
}

int main() {

  D obj1(10);
  D obj2 = obj1;
  D obj3 = g(obj1);
  printf("OK\n");
  return 0;
}
