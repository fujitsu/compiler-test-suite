
#include <stdio.h>

union A { private:   int x1;
          protected: int x2;
          public:    int x3; 
          public:    void f(int i) { x1 = i; x2 = i*1; }
                     friend int ga(A *); };

union B { private:   int x1;
          protected: int x2;
          public:    int x3;
          private:   int x11;
          protected: int x22;
          public:    int x33;
          public:    void f(int i, int j) { x1 = i; x11 = j; 
                                            x2 = i*2; x22 = j*2; }
                      friend int gb(B *); };

union C { private:   int x1;
          protected: int x2;
          public:    int x3;
          protected: int x22;
          public:    int x33;
          private:   int x11;
          public:    int x333;
          private:   int x111;
          protected: int x222;
          public:    void f(int i,int j,int k) { 
                         x1 = i; x11 = j; x111 = k; 
                         x2 = i*3; x22 = j*3; x222 = k*3; }
                     friend int gc(C *); };

int ga(A *pa) { return pa->x1 *2; }
int gb(B *pb) { return (pb->x1 + pb->x11 ) /2; }
int gc(C *pc) { return ( pc->x1 + pc->x11 + pc->x111 ) /3; }
int main()
{
    A aobj;    aobj.f(10);
    B bobj;    bobj.f(4,8);
    C cobj;    cobj.f(7,5,3);

    aobj.x3++;
    bobj.x3--;    bobj.x33--;
    cobj.x3++;    cobj.x33++;    cobj.x333++;

    if( ga(&aobj) == 22 && gb(&bobj) == 14 && gc(&cobj) == 12 )
        printf("ok\n");
    else
        printf("ng\n");
}


