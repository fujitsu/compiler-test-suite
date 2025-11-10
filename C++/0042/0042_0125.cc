struct X {};
struct Y {
  Y(X){}
};

template <class T> auto f(T t1, T t2) -> decltype(t1 + t2); 
X f(Y, Y){};  

void func()
{
  X x1, x2;
  X x3 = f(x1, x2);  
}

int main(void){

  return 0;
}
