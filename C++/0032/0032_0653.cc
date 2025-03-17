




#include <stdio.h>

struct BASE {
    public:
        int a,b;
};

struct DERIVE : public BASE {
    public:
        int b,c;
        friend void func(BASE &);
};

void func(BASE &bobj)
{
    bobj.a++;
    bobj.b++;
}
int main()
{
    DERIVE dobj;

    dobj.a = 1;
    dobj.BASE::b = 2;
    dobj.b = 3;
    dobj.c = 4;

    BASE *bp = &dobj;

    func(dobj);

    if( bp->a == 2 && bp->b == 3 )
        printf("ok\n");
    else
        printf("ng\n");
}
