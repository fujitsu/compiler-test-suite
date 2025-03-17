extern "C" void printf(char*,...);

enum {CHAR,SCHAR,UCHAR,SHORT,USHORT,SSHORT,INT,UINT,SINT,LONG,ULONG,SLONG,
      LLONG,ULLONG,SLLONG,FLOAT,DOUBLE,LDOUBLE,WCHAR,BOOL}cond;



template <class T ,int i> class A {
  public:
  class B {};
  template <class T2> class C {};
};
A<int,10> x1; 
A<char,1>::B x2; 

class D{};
typedef int T1;
typedef short (*T2)[2];
typedef D T3;

void func1(){

 A<int,10> i1[10];
 A<char,1>::B i2[20][30];
 A<short,10>::C<int> i3[10];
 T1 i4[10];
 T2 i5[20];
 T3 i6[30];
 T1 (i7[40][50])[2];
 A<float,5> (*i8[30])(T3,A<int,1>);

 try {
   switch (cond){
   case CHAR:
     throw i1;  
   case SCHAR:  
     throw i2;  
   case UCHAR: 
     throw i3;  
   case SHORT: 
     throw i4;  
   case USHORT: 
     throw i5;  
   case INT: 
     throw i6 ; 
   case UINT: 
     throw i7;  
   case LONG: 
     throw i8;  
   default:
     break;
   }
 }  
 catch (A<int,10> [10]){
   printf("A<int,10> [10]\n");
 }
 catch (A<char,1>::B [20][30]){
   printf("A<char,1>::B [20][30];\n");
 }
 catch (A<short,10>::C<int> [10]){
   printf("A<short,10>::C<int> [10]\n");
 }
 catch (T1 [10]){
   printf("T1 [10]\n");
 }
 catch (T2 [20]){
   printf("T2 [20]\n");
 }
 catch (T3 [30]){
   printf("T3 [30]\n");
 }
 catch (T1 ([40][50])[2]){
   printf("T1 ([40][50])[2]\n");
 }
 catch (A<float,5> (*[30])(T3,A<int,1>)){
   printf("A<float,5> (*[30])(T3,A<int,1>)\n");
 }
}
int main(){
 cond=INT;
 func1();
}
