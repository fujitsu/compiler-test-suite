extern "C" void printf(char*,...);

enum {CHAR,SCHAR,UCHAR,SHORT,USHORT,SSHORT,INT,UINT,SINT,LONG,ULONG,SLONG,
      LLONG,ULLONG,SLLONG,FLOAT,DOUBLE,LDOUBLE,WCHAR,BOOL}cond;


class X {};
class A {
 public:
   class B{};
};
struct B {};
union C{};
enum D{};
void func1(){
 char (X::*i1)[2]=0;
 A (X::*i2)[2][5]=0;
 unsigned char (X::*i3)[10]=0;
 short const (X::*i4)[2]=0;
 unsigned short (*(X::*i5)[3])=0;
 int (*(X::*const i6)[10])(int (*)[2])=0;
 A (X::* i7)[2][3][4][5][6]=0;
 long  (*X::*i8)[10]=0;

 A X::*i9=0;
 B *X::*i10=0;
 C *const*X::*i11=0; 
 const D ****volatile*X::*i12=0;

 A (X::*i13)(void)=0;
 int (X::*i14)( int (*)(A&))=0;
 const B  (*(*(X::*i15)[3])(short int,const float**))[2]=0;
 A::B *(*(X::*i16)(long int))[2][5] =0;

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
   case ULLONG: 
     throw i11; 
   case FLOAT: 
     throw i12; 
   case DOUBLE: 
     throw i13; 
   case LDOUBLE: 
     throw i14; 
   case WCHAR: 
     throw i15; 
   case BOOL: 
     throw i16; 
   default:
     break;
   }
 }  
 catch (char (X::*)[2]){
   printf("char\n");
 }
 catch (A (X::*)[2][5]){
   printf("signed char\n");
 }
 catch (unsigned char (X::*)[10]){
   printf("unsigned char\n");
 }
 catch (short const (X::*)[2]){
   printf("short\n");
 }
 catch (unsigned short (*(X::*)[3])){
   printf("unsigned short\n");
 }
 catch (int (*(X::*const )[10])(int (*)[2]) ){
   printf("int\n");
 }
 catch (A (X::* )[2][3][4][5][6] ){
   printf("unsigned int\n");
 }
 catch (long  (*X::*)[10]){
   printf("long\n");
 }
 catch (A X::*){
   printf("unsigned long\n");
 }
 catch (B *X::*) {
   printf("long long int\n");
 }
 catch (C *const*X::*) {
   printf("unsigned long long int\n");
 }
 catch (const D ****volatile*X::*){
   printf("float\n");
 }
 catch (A (X::*)(void)){
   printf("double\n");
 }
 catch (int (X::*)( int (*)(A&))){
   printf("long double\n");
 }
 catch (const B  (*(*(X::*)[3])(short int,const float**))[2]){
   printf("wchar_t\n");
 }
 catch (A::B *(*(X::*)(long int))[2][5]){
   printf("bool\n");
 }
}
int main(){
 cond=INT;
 func1();
}
