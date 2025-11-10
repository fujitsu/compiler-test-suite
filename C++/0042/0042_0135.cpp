
struct X {
    X() {}
    X(int) {}
    X(double, const X*) {}
};

struct Y : public X {
    using X::X; 
};

void test() {
    Y y0;
    Y y1(1);
    Y y2(3.14, &y0);
}

int main() {
    test();
}
