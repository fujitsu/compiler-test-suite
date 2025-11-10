struct X {
protected:
    X(int) {}
};

struct Y : public X {
    using X::X;
};

struct Z : public Y {
    Z(int n) : Y(n) 
    {}
};

void test() {

}

int main() {
    test();
}

