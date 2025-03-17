typedef int size_t;
typedef size_t T[3];
size_t a[3] = {10,20,30};
size_t b[3] = {1,2,3};
T *tp = &a;
T **tpp = &tp;
T *tap[2] = {&a,&a};
size_t x;

class C {
public:
  size_t a,b,c;
}cobj;
size_t C::* m=&C::b;
typedef size_t C::* TM;
TM tm=&C::c;

extern "C" { extern int puts(char *); }
int main(){
  x++;
  cobj.b=1;

  puts("ok");
}
