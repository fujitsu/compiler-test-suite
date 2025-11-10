struct B1 {
    B1(int) {}
};

struct B2 {
    B2(int) {}
};

struct D : B1, B2 {
    using B1::B1;
    using B2::B2;
    D(int) : B1(0), B2(0) {}
};

void test() {
    D d(123);
}

int main() {
    test();
}
