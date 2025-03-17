extern "C" void printf(const char*, ...);
extern "C" char *strcpy(char *, const char *);
extern "C" char *malloc(unsigned int);
extern "C" int free(char *);

class V {
public:
  char *vname;
  V() {
    vname = malloc(64);
     printf("V()\n");
  }
  V(char *n) {
    vname = malloc(64);
    strcpy(vname, n);
    printf("V()\n");
  }
  ~V() {
    free(vname);
     printf("~V()\n");
  }
};
class U {
public:
  char *uname;
  U() {
    uname = malloc(64);
     printf("U()\n");
  }
  U(char *n) {
    uname = malloc(64);
    strcpy(uname, n);
     printf("v()\n");
  }
  ~U() {
    free(uname);
     printf("~U()\n");
  }
};
class C : virtual V, virtual U {
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
  E(E& e) {  name = malloc(64);
             strcpy(name,e.name);
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


