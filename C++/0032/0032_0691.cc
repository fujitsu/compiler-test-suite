





#include <stdio.h>

struct BASE {
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

struct CHAR : public BASE {
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

struct SHORT : public BASE {
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

struct INT : public BASE {
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

    cobj.set_size();
    sobj.set_size();
    iobj.set_size();

    if( cobj.BASE::chk_size( &cobj, 1 ) &&
        sobj.BASE::chk_size( &sobj, 2 ) &&
        cobj.BASE::chk_size( &iobj, 4 ) )
        printf("ok\n");
    else
        printf("ng\n");
}
