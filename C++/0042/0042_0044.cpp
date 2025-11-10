template <class T>
class Incomplete;


template <class T> Incomplete<T> foo(T);
decltype(foo(123)) g(); 
decltype((1, foo(456))) h(); 


template <class T>
struct X {
    Incomplete<T> foo();
};
decltype(X<int>().foo()) i(); 
decltype((2, X<void>().foo())) j(); 


template <class T> Incomplete<T> operator*(T);
struct Y {};
decltype(*Y()) k(); 
decltype((3, *Y())) l(); 

void test() {}

int main() {
    test();
}
