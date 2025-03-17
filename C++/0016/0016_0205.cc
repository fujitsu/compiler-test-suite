extern "C" void printf(char*,...);

enum {CHAR,SCHAR,UCHAR,SHORT,USHORT,SSHORT,INT,UINT,SINT,LONG,ULONG,SLONG,
      LLONG,ULLONG,SLLONG,FLOAT,DOUBLE,LDOUBLE,WCHAR,BOOL}cond;



class X {};
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
 A<int,10> X::*i1=0; 
 A<char,1>::B X::*i2=0;
 A<short,10>::C<int> X::*i3=0;
 T1 X::*i4=0;
 T2 X::*i5=0;
 T3 X::*i6=0;
 T1 (X::*i7)[2]=0;
 A<float,5> (*X::*i8)(T3,A<int,1>)=0;
 void (X::*i9)()=0;
 int A<short,10>::*i10 = 0;
 void (A<short,10>::*i11)(D*)=0; 

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
   case ULONG:  
     throw i9;  
   case LLONG:
     throw i10; 
   case FLOAT:
     throw i11; 
   default:
     break;
   }
 }  
 catch (A<int,10> X::*){
   printf("A<int,10> X::*\n");
 }
 catch (A<char,1>::B X::*){
   printf("A<char,1>::B X::*\n");
 }
 catch (A<short,10>::C<int> X::*){
   printf("A<short,10>::C<int> X::*\n");
 }
 catch (T1 X::*){
   printf("T1 X::*\n");
 }
 catch (T2 X::*){
   printf("T2 X::*\n");
 }
 catch (T3 X::* ){
   printf("T3 X::*\n");
 }
 catch (T1 (X::*)[2]){
   printf("T1 (X::*)[2]\n");
 }
 catch (A<float,5> (*X::*)(T3,A<int,1>)){
   printf("A<float,5> (*X::*)(T3,A<int,1>)\n");
 }
 catch (void (X::*)()) {
   printf("void (X::*)()\n");
 }
 catch (int A<short,10>::*) {
   printf("int A<short,10>::*\n");
 }
 catch (void (A<short,10>::*)(D*)) {
   printf("void (A<short,10>::*)(D*)\n");
 }
}
int main(){
 cond=INT;
 func1();
}
