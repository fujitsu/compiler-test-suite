extern "C" {


typedef unsigned int size_t;



extern int printf(const char *format,...);
extern int puts(const char *);

}


class A { private:   int x1;
          protected: int x2; 
          public:    void fa(int i) { x1 = i; }
                     friend int ga(A *); };
class B { protected: int x2; 
          public:    int x3; };
class C { public:    int x3;
          private:   int x1;
          public:    void fc(int i) { x1 = i; }
                     friend int gc(C *); };

int ga(A *pa)
{
    return pa->x1 +1;
}

int gc(C *pc)
{
    return pc->x1 -1;
}

class D { private: int x1;
          protected: public: int x3; 
          public: void fd(int i) { x1 = i; }
                  friend int gd(D *d); };
class E { public: private: protected: int x2;
          private: protected: public: private: int x1;
          public: void fe(int i) { x1 = i; }
                  friend int ge(E *e); };
class F { protected: public: private: protected: public: int x3;
          public: private: protected: public: private: protected: int x2; };

int gd(D *pd)
{
    return pd->x1 *2;
}

int ge(E *pe)
{
    return pe->x1 /2;
}

class CC : public A,public B,public C, public D, public F {
    public:
        void f(int,int,int);
        friend int gcc(CC *);
};
void CC::f(int i, int j, int k)
{
C::x3 = k+1; 
}
int main(){
  CC obj;
  obj.f(1,2,3);
  if (obj.C::x3 == 4)
   printf("ok\n");
  else
   printf("ng\n");
}
