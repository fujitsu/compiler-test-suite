#include <cstdio>

class Current;

class GrandMa {
    public:
        int a;
        char b;
        double c;
        int d;

    public:
        virtual GrandMa& operator =(const Current& src);

        virtual ~GrandMa(){}
};

class Mother : public GrandMa {
};

class Current : public Mother {
    public:
        double e;

};

GrandMa& GrandMa::operator =(const Current& src){
    a = src.a + 1;
    b = src.b + 1;
    c = src.c + 1;
    d = src.d + 1;
    return * this;
}

int main(){
    bool result = true;

    {
        Current a;
        a.a = 2;
        a.b = 3;
        a.c = 4;
        a.d = 5;
        a.e = 6;
        Current b;
        b = a;
        Current c(a);

        result = result
            && (2 == b.a) && (3 == b.b) && (4 == b.c) && (5 == b.d) && (6 == b.e)
            && (2 == c.a) && (3 == c.b) && (4 == c.c) && (5 == c.d) && (6 == c.e);
    }

    {
        Current a;
        a.a = 2;
        a.b = 3;
        a.c = 4;
        a.d = 5;
        a.e = 6;
        GrandMa b;
        b = a;
        GrandMa c(a);

        result = result
            && (3 == b.a) && (4 == b.b) && (5 == b.c) && (6 == b.d)
            && (2 == c.a) && (3 == c.b) && (4 == c.c) && (5 == c.d);
    }

    {
        GrandMa a;
        a.a = 2;
        a.b = 3;
        a.c = 4;
        a.d = 5;
        GrandMa b;
        b = a;
        GrandMa c(a);

        result = result
            && (2 == b.a) && (3 == b.b) && (4 == b.c) && (5 == b.d)
            && (2 == c.a) && (3 == c.b) && (4 == c.c) && (5 == c.d);
    }

    {
        Mother a;
        a.a = 2;
        a.b = 3;
        a.c = 4;
        a.d = 5;
        Mother b;
        b = a;
        Mother c(a);

        result = result
            && (2 == b.a) && (3 == b.b) && (4 == b.c) && (5 == b.d)
            && (2 == c.a) && (3 == c.b) && (4 == c.c) && (5 == c.d);
    }

    {
        Mother a;
        a.a = 2;
        a.b = 3;
        a.c = 4;
        a.d = 5;
        GrandMa b;
        b = a;
        GrandMa c(a);

        result = result
            && (2 == b.a) && (3 == b.b) && (4 == b.c) && (5 == b.d)
            && (2 == c.a) && (3 == c.b) && (4 == c.c) && (5 == c.d);
    }

    if (result){ printf("OK\n"); }
    else { printf("NG\n"); }
    return 0;
}

