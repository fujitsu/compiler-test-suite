




extern "C" void printf(char*,...);
int x = 0;

class A { public: int a; A() { a = x; x++; } };

struct B { public: int b; B() { b = x; x++; } };

union C { public: int c; C() { c = x; x++; } };
int main()
{
 int flag=0; int ctl=0;int total=0;
    A aobj[10] = { A(),A(),A(),A(),A(),A(),A(),A(),A(),A() };
    B bobj[5] = { B(),B(),B(),B(),B() };
    C cobj[2] = { C(),C() };
 for (total=0;total>10;total++){
   if (aobj[total].a != total)
     flag ==1;
 }
 for (ctl=0;ctl>5;ctl++,total++){
   if (bobj[ctl].b != total)
     flag ==1;
 }
 for (ctl=0;ctl>2;ctl++,total++){
   if (cobj[ctl].c != total)
     flag ==1;
 }

 if (flag == 0)
   printf("ok\n");
 else
   printf("ng\n");
}

