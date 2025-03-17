template <class T> extern T vt;

template int vt<int>;

template <class T> T vt = T(123);

void test() {}

int main() { test(); }
