struct X {
    template <class T> X(T) {}
    template <class T1, class T2> X(T1, T2) {}
};

struct Y : public X {
    using X::X; 
};

struct Z {} z;

void test() {
    Y yi(123);
    Y yd(3.14);
    Y yz(z);
    
    Y yii(123, 456);
    Y yid(123, 3.14);
    Y yzd(z, 3.14);
}

int main() {
    test();
}
