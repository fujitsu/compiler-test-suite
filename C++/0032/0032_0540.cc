

extern "C" { int printf(const char*,...);}
class A {
 private:
 enum {x,y};
 static int a;
 static int b;
 public:
 int ar[A::y]; 
 protected:
 static int c;
 public:
 int f(){ return A::b;}
};
int A::a =10;
int A::c =10;
int A::b = (A::a+A::c);


class AA {
#ifdef __clang__
public:
#else
protected:
#endif
	enum { BB=1,CC };   
	int i;
};

class DD : public AA {
public:
	friend class AA2;
};

class AA2 {
public:
  static int a;
  int ar[AA::BB];
  int func(){ int x; x=AA::BB; return x;}       
};

int AA2::a =  AA::BB+1;


int main() {
 A obj;
 AA2 a2obj;

 int x = sizeof(obj.ar);
 if (obj.f() == 20 && x == sizeof(int)*1 &&
     (x=sizeof(a2obj.a))==sizeof(int)*1 &&
     a2obj.func() == 1 && AA2::a== 2)
   printf("ok\n");
 else 
   printf("ng\n");
}




