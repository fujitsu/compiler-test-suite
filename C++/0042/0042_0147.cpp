struct X {
    X(int) {}
};

struct Y : public X {
    using X::X; 
};

struct Z : public Y {
    using Y::Y; 
};

void test() {
    Z z(123);
}

int main() {
    test();
}
