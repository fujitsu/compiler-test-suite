extern "C" void printf(char*,...);

enum {CHAR,SCHAR,UCHAR,SHORT,USHORT,SSHORT,INT,UINT,SINT,LONG,ULONG,SLONG,
      LLONG,ULLONG,SLLONG,FLOAT,DOUBLE,LDOUBLE,WCHAR,BOOL}cond;


class A {};
void func1(){
 char A::*i1=0;
 signed char A::*i2=0;
 unsigned char A::*i3=0;
 short A::*const i4=0;
 unsigned short A::*volatile i5=0;
 int A::*const volatile   i6=0;
 unsigned int const volatile A::* i7=0;
 long A::* volatile i8=0;
 unsigned long A::* const i9=0;
 long long const A::*i10=0;
 const unsigned long long int A::*i11=0;
 volatile float A::*i12=0;
 const double volatile A::*  i13=0;
 long double const A::* volatile i14=0;
 wchar_t A::*i15=0;
 bool A::*i16=0;
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
 catch (char A::*){
   printf("char\n");
 }
 catch (signed char A::*){
   printf("signed char\n");
 }
 catch (unsigned char A::*){
   printf("unsigned char\n");
 }
 catch (short A::* const){
   printf("short\n");
 }
 catch (unsigned short A::*volatile){
   printf("unsigned short\n");
 }
 catch (int A::* const volatile){
   printf("int\n");
 }
 catch (unsigned int const volatile A::* ){
   printf("unsigned int\n");
 }
 catch (long A::* volatile){
   printf("long\n");
 }
 catch (unsigned long A::* const){
   printf("unsigned long\n");
 }
 catch (long long int const A::*) {
   printf("long long int\n");
 }
 catch (const unsigned long long int A::*) {
   printf("unsigned long long int\n");
 }
 catch (volatile float A::*){
   printf("float\n");
 }
 catch (const double volatile A::*){
   printf("double\n");
 }
 catch (long double const A::*){
   printf("long double\n");
 }
 catch (wchar_t A::*){
   printf("wchar_t\n");
 }
 catch (bool A::*){
   printf("bool\n");
 }
}
void func2(){
 signed short A::* i1=0;
 signed int A::* i2=0;
 signed long A::* i3=0;
 signed long long A::* i4=0;
 try{
   switch (cond){ 
   case SSHORT:
    throw i1;  
   case SINT:  
    throw i2;  
   case SLONG:
    throw i3;  
   case SLLONG:
    throw i4;  
   default:
    break;
   }
 }
 catch (signed short A::*){
   printf("signed\n");
 }
 catch (signed int A::*){
   printf("signed int\n");
 }
 catch (signed long A::*){
   printf("signed long\n");
 }
 catch (signed long long int A::*) {
   printf("signed long long int\n");
 }
}
int main(){
 cond=INT;
 func1();
 func2();
}
