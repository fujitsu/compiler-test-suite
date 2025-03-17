





#include <stdio.h>

int data_f[5] = { 0,0,0,0,0 };
int data_g[5] = { 0,0,0,0,0 };

class X1 {
    private:
        int x1;
    public:
        X1() { }
        void f(int i) { data_f[0] = i; }
        void g(int i) { data_g[0] = i; }
};

class X2 : public X1 { 
    private:
        int x2;
    public:
        X2() { }
        void f(char i) { data_f[1] = i; }
        void g(char i) { data_g[1] = i; }
        void g(int i) { data_g[1] = i; X1::g(i); }
};

class X3 : public X2 { 
    private:
        int x3;
    public:
        X3() { }
        void f(short i) { data_f[2] = i; }
        void g(short i) { data_g[2] = i; }
        void g(int i) { data_g[2] = i; X2::g(i); }
};

class X4 : public X3 { 
    private:
        int x4;
    public:
        X4() { }
        void f(long i) { data_f[3] = i; }
        void g(long i) { data_g[3] = i; }
        void g(int i) { data_g[3] = i; X3::g(i); }
};

class X5 : public X4 { 
    private:
        int x5;
    public:
        X5() { }
        void f(double i) { data_f[4] = i; }
        void g(double i) { data_g[4] = i; }
        void g(int i) { data_g[4] = i; X4::g(i); }
};
int main()
{
    X5 obj;

    obj.f(2);
    obj.g(2);

    if( data_f[0] == 0 && data_f[1] == 0 && data_f[2] == 0 &&
        data_f[3] == 0 && data_f[4] == 2 &&
        data_g[0] == 2 && data_g[1] == 2 && data_g[2] == 2 &&
        data_g[3] == 2 && data_g[4] == 2 )
        printf("ok\n");
    else
        printf("ng\n");
}
