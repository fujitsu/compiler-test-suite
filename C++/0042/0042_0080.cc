extern "C" int puts(const char*);

struct S {
  S(int) {};
  S(const char *, int = 0){};
};

S s1(1);        
S s2 = 1;       
S s3("hello");  
S s4 = "hello"; 


struct E {
  explicit E(int){};
  explicit E(const char *, int = 0){};
};

E e1(1);        

E e3("hello");  


struct N1 {
  operator bool() const{puts("N1");return false;};
};

struct N2 {
  explicit operator bool() const {puts("N2 called"); return false;}; 
};

int main()
{
  N1 n1;
  bool a1(n1);        
  bool a2 = bool(n1); 
  bool a3 = n1;       
   
  N2 n2;
  bool b1(n2);        
  bool b2 = bool(n2); 
  
}
