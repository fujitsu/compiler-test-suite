extern "C" void printf(const char*, ...);
extern "C" char *strcpy(char *, const char *);
extern "C" char *malloc(unsigned int);
extern "C" int free(char *);

class C {
public:
  char *name;
  C() {
    name = malloc(64);
     printf("C()\n");
  }
  C(char *n) {
    name = malloc(64);
    strcpy(name, n);
     printf("C()\n");
  }
  ~C() {
    free(name);
     printf("~C()\n");
  }
};
class E {
public:
  char *name;
  E() {
    name = malloc(64);
     printf("E()\n");
  }
  E(char *n) {
    name = malloc(64);
    strcpy(name, n);
     printf("E()\n");
  }
  ~E() {
    free(name);
     printf("~E()\n");
  }

};

void g()
{
  throw new E();
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


