struct B {
    B(int) {}
};

struct D : public B {
    using B::B;
    int x;
};

void test() {
    D d(2); 
}

int main() {
    test();
}
