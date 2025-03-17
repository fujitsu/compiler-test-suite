extern "C" void printf(const char*, ...);
extern "C" char *strcpy(char *, const char *);

class C {
public:
  char name[64];
  C() {
     printf("C()\n");
  }
  C(char *n) {
    strcpy(name, n);
     printf("C()\n");
  }
  ~C() {
     printf("~C()\n");
  }
};
class E {
public:
  char name[64];
  E() {
     printf("E()\n");
  }
  E(char *n) {
    strcpy(name, n);
     printf("E()\n");
  }
  ~E() {
     printf("~E()\n");
  }

};

void g()
{
  E e;
  throw e;
}

void f()
{
   C a("a");
   try {
     C b("b");
     g();
     C c("c");
   } catch (E &e) {
     C d("d");
     throw;
   }

}
int main()
{
for (int i =0; i < 20; i++) {
try {
f();
} catch (...) {
;
}
}
}


