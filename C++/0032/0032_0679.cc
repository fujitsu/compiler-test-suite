





#include <stdio.h>

int x=0;

struct BASE {
    public:
        virtual int v1();
        virtual int v2();
        int f1();
        int f2();
};

int BASE::v1() { return 1; }
int BASE::v2() { return 2; }
int BASE::f1() { return 10; }
int BASE::f2() { return 20; }

struct DERIVE : public BASE {
    public:
        int v1();
        int v2(int);
        int f1();
        int f2(int);
};

int DERIVE::v1() { return 3; }
int DERIVE::v2(int i) { return i*4; }
int DERIVE::f1() { return 30; }
int DERIVE::f2(int i) { return i+40; }
int main()
{
    DERIVE dobj;
    BASE *pb = &dobj;

    x += pb->v1();          
    x += pb->v2();          
    x += pb->f1();          
    x += pb->f2();          
 
    x += dobj.v1();         
    x += dobj.v2(2);        
    x += dobj.f1();         
    x += dobj.f2(5);        

    if( x == 121 )
        printf("ok\n");
    else
        printf("ng\n");
}
