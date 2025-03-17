extern "C" void printf(const char*, ...);
extern "C" char *strcpy(char *, const char *);

class V {
public:
  char vname[64];
  V() {
     printf("V()\n");
  }
  V(char *n) {
    strcpy(vname, n);
     printf("V()\n");
  }
  ~V() {
     printf("~V()\n");
  }
};
class U {
public:
  char uname[64];
  U() {
     printf("U()\n");
  }
  U(char *n) {
    strcpy(uname, n);
     printf("v()\n");
  }
  ~U() {
     printf("~U()\n");
  }
};
class C : virtual V, virtual U {
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


