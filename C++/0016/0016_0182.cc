extern "C" void printf(char*,...);

enum {CHAR,SCHAR,UCHAR,SHORT,USHORT,SSHORT,INT,UINT,SINT,LONG,ULONG,SLONG,
      LLONG,ULLONG,SLLONG,FLOAT,DOUBLE,LDOUBLE,WCHAR,BOOL}cond;


void func1(){
 char *i1=0;
 signed char *i2=0;
 unsigned char *i3=0;
 short *const i4=0;
 unsigned short *volatile i5=0;
 int *const volatile   i6=0;
 unsigned int const volatile * i7=0;
 long * volatile i8=0;
 unsigned long * const i9=0;
 long long const *i10=0;
 const unsigned long long int *i11=0;
 volatile float *i12=0;
 const double volatile *  i13=0;
 long double const * volatile i14=0;
 wchar_t *i15=0;
 bool *i16=0;
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
 catch (char *){
   printf("char\n");
 }
 catch (signed char *){
   printf("signed char\n");
 }
 catch (unsigned char *){
   printf("unsigned char\n");
 }
 catch (short * const){
   printf("short\n");
 }
 catch (unsigned short *volatile){
   printf("unsigned short\n");
 }
 catch (int * const volatile){
   printf("int\n");
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
void func2(){
 signed short * i1=0;
 signed int * i2=0;
 signed long * i3=0;
 signed long long * i4=0;
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
 catch (signed short *){
   printf("signed\n");
 }
 catch (signed int *){
   printf("signed int\n");
 }
 catch (signed long*){
   printf("signed long\n");
 }
 catch (signed long long int *) {
   printf("signed long long int\n");
 }
}
int main(){
 cond=INT;
 func1();
 func2();
}
