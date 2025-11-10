class A {
    static thread_local int m_x;
};
thread_local int A::m_x;

int main() {
    return 0;
}