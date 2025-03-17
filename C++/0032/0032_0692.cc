





#include <stdio.h>

class BASE {
    protected:
        long size;
    public:
        virtual void set_size() = 0;
                int  chk_size(BASE *, int);
};

int BASE::chk_size( BASE *p, int i )
{
    return p->size == i;
}

class CHAR : public BASE {
    private:
        char c;
    public:
        void set_size();
};

void CHAR::set_size()
{
    c = 0;
    size = sizeof(c);
}

class SHORT : public BASE {
    private:
        short s;
    public:
        void set_size();
};

void SHORT::set_size()
{
    s = 0;
    size = sizeof(s);
}

class INT : public BASE {
    private:
        int i;
    public:
        void set_size();
};

void INT::set_size()
{
    i = 0;
    size = sizeof(i);
}
int main()
{
    CHAR  cobj;
    SHORT sobj;
    INT   iobj;

    BASE *p1 = &cobj;
    BASE *p2 = &sobj;
    BASE *p3 = &iobj;

    cobj.set_size();
    sobj.set_size();
    iobj.set_size();

    if( p1->chk_size( p1, 1 ) &&
        p2->chk_size( p2, 2 ) &&
        p3->chk_size( p3, 4 ) )
        printf("ok\n");
    else
        printf("ng\n");
}
