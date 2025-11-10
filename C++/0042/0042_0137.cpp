namespace case1 {
    struct X {
        X(int = 0, const X* = 0, ...) {}
    };

    struct Y : public X {
        using X::X; 
    };

    void test() {
        Y y0;
        Y y1(1);
        Y y2(2, &y0);
    }
}

namespace case2 {
    struct X {
        X(int = 0, const X* = 0) {}
    };

    struct Y : public X {
        using X::X; 
    };

    void test() {
        Y y0;
        Y y1(1);
        Y y2(2, &y0);
    }
}

void test() {
    case1::test();
    case2::test();
}

int main() {
    test();
}
