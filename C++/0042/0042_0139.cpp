struct X {
    template <class T> X(T, int = 1, int = 2, ...) {}
};
struct Y : public X {
    using X::X; 
};

struct Z {} z;

void test() {
    Y yi(123);            
    Y yz(z);              
    Y yzi(z, 456);        
    Y ydii(3.14, 11, 22); 
    Y ydiie(3.14, 11, 22, 0); 
                              
}

int main() {
    test();
}
