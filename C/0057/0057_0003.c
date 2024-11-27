
struct S {
    short _Alignas(1) _Alignas(2)               m_s;   
    unsigned int _Alignas(1) _Alignas(4)        m_i;   
    long _Alignas(4) _Alignas(8)                m_l;   
    float _Alignas(2) _Alignas(4)               m_f;   
    double _Alignas(4) _Alignas(8)              m_d;   
    long double _Alignas(_Alignof(long double)) m_ld;  
};

union U {
    short _Alignas(1) _Alignas(2)               m_s;   
    unsigned int _Alignas(1) _Alignas(4)        m_i;   
    long _Alignas(4) _Alignas(8)                m_l;   
    float _Alignas(2) _Alignas(4)               m_f;   
    double _Alignas(4) _Alignas(8)              m_d;   
    long double _Alignas(_Alignof(long double)) m_ld;  
};

void test() {
}

int main() {
    test();
}
