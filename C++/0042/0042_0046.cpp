template<class T> struct A { ~A() = delete; };
template<class T> auto h() -> A<T>;
template<class T> auto i(T) -> T; 

template<class T> auto f(T) 
    -> decltype(i(h<T>())); 
                            
                            
                            

template<class T> auto f(T) 
    -> void {}
auto g() -> void {
    f(42); 
           
           
}
template<class T> auto q(T)
-> decltype((h<T>())); 
                       
void r() {
    
           
           
           
}

void test() {}

int main() {
    test();
}