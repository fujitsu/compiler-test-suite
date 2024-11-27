
short _Alignas(1) _Alignas(2)        g_s;   

unsigned int _Alignas(1) _Alignas(2) _Alignas(8) g_i;   

long _Alignas(4) _Alignas(8) _Alignas(1)    g_l;   

float _Alignas(2) _Alignas(4) g_f;   

double _Alignas(4) _Alignas(16) g_d;   

long double _Alignas(8) _Alignas(32)    g_ld;  

void test() {
    short _Alignas(1) _Alignas(2)        l_s;   

    unsigned int _Alignas(1) _Alignas(2) _Alignas(8) l_i;   

    long _Alignas(4) _Alignas(8) _Alignas(1)    l_l;   

    float _Alignas(2) _Alignas(4) l_f;   

    double _Alignas(4) _Alignas(16) l_d;   

    long double _Alignas(8) _Alignas(32)    l_ld;  
}

int main() {
    test();
}
