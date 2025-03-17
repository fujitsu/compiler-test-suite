





#include <stdio.h>

char type = 0;

class BASE {
    protected:
        long size;
    public:
        virtual void set_size() ;
        BASE() { BASE::set_size(); }
        virtual int  chk_size() = 0;
};

void BASE::set_size()
{
    switch( type )
    {
        case 'C' : size = 1; break;
        case 'S' : size = 2; break;
        case 'I' : size = 4; break;
        default  : size = 0;
    }
}

class CHAR : public BASE {
    private:
        char c;
    public:
        CHAR() { }
        void set_size(char);
        int chk_size();
};

void CHAR::set_size(char x)
{
    c = x;
}
 
int CHAR::chk_size()
{
    return size == sizeof(c);
}

class SHORT : public BASE {
    private:
        short s;
    public:
        SHORT() { }
        void set_size(short);
        int chk_size();
};

void SHORT::set_size(short x)
{
    s = x;
}

int SHORT::chk_size()
{
    return size == sizeof(s);
}

class INT : public BASE {
    private:
        int i;
    public:
        INT() { }
        void set_size(int);
        int chk_size();
};

void INT::set_size(int x)
{
    i = x;
}

int INT::chk_size()
{
    return size == sizeof(i);
}
int main()
{
    type = 'C'; CHAR  cobj;
    type = 'S'; SHORT sobj;
    type = 'I'; INT   iobj;

    if( cobj.chk_size() && sobj.chk_size() && iobj.chk_size() )
        printf("ok\n");
    else
        printf("ng\n");
}
