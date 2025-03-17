extern "C" int printf(const char*, ...);
int count;

template<class T>
class Class {
  int m01;
public:
  Class() { m01 = count++; if (count==1) throw "ok\n"; }
  ~Class() { count = m01; }
};
int main() {
  try {
    new Class<int>[2];
  } catch (const char *msg) {
    if (count==1)
      printf(msg);
    else
      printf("ng\n");
  }
}
