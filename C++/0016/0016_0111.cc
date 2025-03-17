extern "C" void printf(char*,...);
template <class T ,int i> class AA {
 public:
   class BB {};
   template <class T2> class CC {};
 };
AA<int,10> x1;
AA<char,1>::BB x2;
class DD{};
typedef int T1;
typedef short (*T2)[2];
typedef DD T3;
class c{ };
union u{ };
class A {
 public:
   class B{};
 };
struct B {};
union C{};
enum D{};

void func1(){
     int i1=1;
     try {
       i1++;

       int i3=3;
       try {
         i3++;
         i3--;
       }
       catch (AA<int,10> *){
         printf("AA<int,10> *\n");
       }
       catch (AA<char,1>::BB *){
         printf("AA<char,1>::BB *\n");
       }
       catch (AA<short,10>::CC<int> *){
         printf("AA<short,10>::CC<int> *\n");
       }
       catch (T1 *){
         printf("T1 *\n");
       }
       catch (T2 *){
         printf("T2 *\n");
       }
       catch (T3 * ){
         printf("T3 *\n");
       }
       catch (T1 (*)[2]){
         printf("T1 (*)[2]\n");
       }
       catch (AA<float,5> (**)(T3,AA<int,1>)){
         printf("A<float,5> (**)(T3,A<int,1>)\n");
       }

       i1--;
     }
     catch (c){ }
     catch (char*){ }
     catch (int){ }
     catch (int (*)(int *,char &)){ }
     catch (u){ }
     catch (int (*(((((*)[16])))[17][18]))(void)){ }
}
void func2(){
     int i2=2;
     try {
       i2++;
       i2--;
     }
     catch (int){
       printf("int\n");
     }
     catch (int *){
       printf("int *\n");
     }
     catch (int *[2]){
       printf("int *[2]\n");
     }
     catch (int (char)){
       printf("int (char)\n");
     }
     catch (int (*)[2]){
       printf("int (*)[2]\n");
     }
     catch (int (***)( int (*)(A&))){
       printf("int (***)( int (*)(A&))\n");
     }
}
void func4(){
     int i4=4;
     try {
       i4++;
       i4--;
     }
     catch (unsigned int const volatile* ){
       printf("unsigned int\n");
     }
     catch (long * volatile){
       printf("long\n");
     }
     catch (unsigned long * const){
       printf("unsigned long\n");
     }
     catch (long long int const *) {
       printf("long long int\n");
     }
     catch (const unsigned long long int *) {
       printf("unsigned long long int\n");
     }
     catch (volatile float *){
       printf("float\n");
     }
     catch (const double volatile*){
       printf("double\n");
     }
     catch (long double const*){
       printf("long double\n");
     }
     catch (wchar_t *){
       printf("wchar_t\n");
     }
     catch (bool *){
       printf("bool\n");
     }
}
int main(){
     int i0=0;
     try {
       i0++;
       func1();
       func4();
       i0--;
     }
     catch (c){ }
     catch (char*){ }
     catch (int){ }
     catch (int (*)(int *,char &)){ }
     catch (u){ }
     catch (int (*(((((*)[16])))[17][18]))(void)){ }
     catch (volatile signed short){ }
     catch (signed long){ }
     func2();
     printf("catchtype command test\n");  
}
