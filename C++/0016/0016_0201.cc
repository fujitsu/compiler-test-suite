extern "C" void printf(char*,...);

enum {CHAR,SCHAR,UCHAR,SHORT,USHORT,SSHORT,INT,UINT,SINT,LONG,ULONG,SLONG,
      LLONG,ULLONG,SLLONG,FLOAT,DOUBLE,LDOUBLE,WCHAR,BOOL}cond;


class A{};
void func1(){
 char *A::*i1=0;
 signed char *const A::*i2=0;
 unsigned char *volatile A::*i3=0;
 short const *volatile*const A::*i4=0;
 unsigned short ***** A::* i5=0;
 int * A::*const i6=0;
 const unsigned int ** A::*const i7=0;
 long *const * volatile A::* const volatile i8=0;
 unsigned long ** A::*i9=0;
 const long long ** A::* i10=0;
 volatile unsigned long long int ** A::*i11=0;
 float const * A::*i12=0;
 double **** volatile ** A::* i13=0;
 long double *** A::* i14=0;
 wchar_t * A::* i15=0;
 bool ********** A::*i16=0;
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
 catch (char * A::*){
   printf("char\n");
 }
 catch (signed char *const A::*){
   printf("signed char\n");
 }
 catch (unsigned char *volatile A::*){
   printf("unsigned char\n");
 }
 catch (short const *volatile*const A::*){
   printf("short\n");
 }
 catch (unsigned short ***** A::* ){
   printf("unsigned short\n");
 }
 catch (int * A::*const ){
   printf("int\n");
 }
 catch (const unsigned int ** A::*const ){
   printf("unsigned int\n");
 }
 catch (long *const * volatile A::* const volatile ){
   printf("long\n");
 }
 catch (unsigned long ** A::*){
   printf("unsigned long\n");
 }
 catch (const long long ** A::* ) {
   printf("long long int\n");
 }
 catch (volatile unsigned long long int ** A::*) {
   printf("unsigned long long int\n");
 }
 catch (float const * A::*){
   printf("float\n");
 }
 catch (double **** volatile ** A::*){
   printf("double\n");
 }
 catch (long double *** A::*){
   printf("long double\n");
 }
 catch (wchar_t * A::*){
   printf("wchar_t\n");
 }
 catch (bool ********** A::*){
   printf("bool\n");
 }
}
void func2(){
 signed short ** A::* i1=0;
 signed int **const A::* i2=0;
 signed long *** A::* i3=0;
 volatile signed long long *const A::* i4=0;
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
 catch (signed short ** A::*){
   printf("signed\n");
 }
 catch (signed int **const A::*){
   printf("signed int\n");
 }
 catch (signed long*** A::*){
   printf("signed long\n");
 }
 catch (volatile signed long long int *const A::*) {
   printf("signed long long int\n");
 }
}
int main(){
 cond=INT;
 func1();
 func2();
}
