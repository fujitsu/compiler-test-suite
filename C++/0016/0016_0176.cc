extern "C" void printf(char*,...);

enum {CHAR,SCHAR,UCHAR,SHORT,USHORT,SSHORT,INT,UINT,SINT,LONG,ULONG,SLONG,
      LLONG,ULLONG,SLLONG,FLOAT,DOUBLE,LDOUBLE,WCHAR,BOOL,OTHER}cond;

void func11(){


 const char i1=0;
 const signed char i2=0;
 const unsigned char i3=0;
 const short i4=0;
 const unsigned short i5=0;
 const int i6=0;
 const unsigned int i7=0;
 const long i8=0;
 const unsigned long i9=0;
 const long long i10=0;
 const unsigned long long int i11=0;
 const float i12=0;
 const double i13=0;
 const long double i14=0;
 const wchar_t i15=0;
 const bool i16=0;
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
 catch (const char){
   printf("char\n");
   throw;
 }
 catch (const signed char){
   printf("signed char\n");
   throw;
 }
 catch (const unsigned char){
   printf("unsigned char\n");
   throw;
 }
 catch (const short ){
   printf("short\n");
   throw;
 }
 catch (const unsigned short){
   printf("unsigned short\n");
   throw;
 }
 catch (const int){
   printf("int\n");
   throw;
 }
 catch (const unsigned int){
   printf("unsigned int\n");
   throw;
 }
 catch (const long){
   printf("long\n");
   throw;
 }
 catch (const unsigned long){
   printf("unsigned long\n");
   throw;
 }
 catch (const long long int ) {
   printf("long long int\n");
   throw;
 }
 catch (const unsigned long long int ) {
   printf("unsigned long long int\n");
   throw;
 }
 catch (const float){
   printf("float\n");
   throw;
 }
 catch (const double){
   printf("double\n");
   throw;
 }
 catch (const long double){
   printf("long double\n");
   throw;
 }
 catch (const wchar_t){
   printf("wchar_t\n");
   throw;
 }
 catch (const bool){
   printf("bool\n");
   throw;
 }
}
void func12(){
 const signed short  i1=0;
 const signed int  i2=0;
 const signed long  i3=0;
 const signed long long  i4=0;
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
 catch (const signed short){
   printf("signed\n");
   throw;
 }
 catch (const signed int){
   printf("signed int\n");
   throw;
 }
 catch (const signed long){
   printf("signed long\n");
   throw;
 }
 catch (const signed long long int ) {
   printf("signed long long int\n");
   throw;
 }
}

void func21(){
 volatile char i1=0;
 volatile signed char i2=0;
 volatile unsigned char i3=0;
 volatile short i4=0;
 volatile unsigned short i5=0;
 volatile int i6=0;
 volatile unsigned int i7=0;
 volatile long i8=0;
 volatile unsigned long i9=0;
 volatile long long i10=0;
 volatile unsigned long long int i11=0;
 volatile float i12=0;
 volatile double i13=0;
 volatile long double i14=0;
 volatile wchar_t i15=0;
 volatile bool i16=0;
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
 catch (volatile char){
   printf("char\n");
   throw;
 }
 catch (volatile signed char){
   printf("signed char\n");
   throw;
 }
 catch (volatile unsigned char){
   printf("unsigned char\n");
   throw;
 }
 catch (volatile short ){
   printf("short\n");
   throw;
 }
 catch (volatile unsigned short){
   printf("unsigned short\n");
   throw;
 }
 catch (volatile int){
   printf("int\n");
   throw;
 }
 catch (volatile unsigned int){
   printf("unsigned int\n");
   throw;
 }
 catch (volatile long){
   printf("long\n");
   throw;
 }
 catch (volatile unsigned long){
   printf("unsigned long\n");
   throw;
 }
 catch (volatile long long int ) {
   printf("long long int\n");
   throw;
 }
 catch (volatile unsigned long long int ) {
   printf("unsigned long long int\n");
   throw;
 }
 catch (volatile float){
   printf("float\n");
   throw;
 }
 catch (volatile double){
   printf("double\n");
   throw;
 }
 catch (volatile long double){
   printf("long double\n");
   throw;
 }
 catch (volatile wchar_t){
   printf("wchar_t\n");
   throw;
 }
 catch (volatile bool){
   printf("bool\n");
   throw;
 }
}
void func22(){
 volatile signed short  i1=0;
 volatile signed int  i2=0;
 volatile signed long  i3=0;
 volatile signed long long  i4=0;
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
 catch (volatile signed short){
   printf("signed\n");
   throw;
 }
 catch (volatile signed int){
   printf("signed int\n");
   throw;
 }
 catch (volatile signed long){
   printf("signed long\n");
   throw;
 }
 catch (volatile signed long long int ) {
   printf("signed long long int\n");
   throw;
 }
}

void func31(){
 const volatile char i1=0;
 const volatile signed char i2=0;
 const volatile unsigned char i3=0;
 const volatile short i4=0;
 const volatile unsigned short i5=0;
 const volatile int i6=0;
 const volatile unsigned int i7=0;
 const volatile long i8=0;
 const volatile unsigned long i9=0;
 const volatile long long i10=0;
 const volatile unsigned long long int i11=0;
 const volatile float i12=0;
 const volatile double i13=0;
 const volatile long double i14=0;
 const volatile wchar_t i15=0;
 const volatile bool i16=0;
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
 catch (const volatile char){
   printf("char\n");
   throw;
 }
 catch (const volatile signed char){
   printf("signed char\n");
   throw;
 }
 catch (const volatile unsigned char){
   printf("unsigned char\n");
   throw;
 }
 catch (const volatile short ){
   printf("short\n");
   throw;
 }
 catch (const volatile unsigned short){
   printf("unsigned short\n");
   throw;
 }
 catch (const volatile int){
   printf("int\n");
   throw;
 }
 catch (const volatile unsigned int){
   printf("unsigned int\n");
   throw;
 }
 catch (const volatile long){
   printf("long\n");
   throw;
 }
 catch (const volatile unsigned long){
   printf("unsigned long\n");
   throw;
 }
 catch (const volatile long long int ) {
   printf("long long int\n");
   throw;
 }
 catch (const volatile unsigned long long int ) {
   printf("unsigned long long int\n");
   throw;
 }
 catch (const volatile float){
   printf("float\n");
   throw;
 }
 catch (const volatile double){
   printf("double\n");
   throw;
 }
 catch (const volatile long double){
   printf("long double\n");
   throw;
 }
 catch (const volatile wchar_t){
   printf("wchar_t\n");
   throw;
 }
 catch (const volatile bool){
   printf("bool\n");
   throw;
 }
}
void func32(){
 const volatile signed short  i1=0;
 const volatile signed int  i2=0;
 const volatile signed long  i3=0;
 const volatile signed long long  i4=0;
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
 catch (const volatile signed short){
   printf("signed\n");
   throw;
 }
 catch (const volatile signed int){
   printf("signed int\n");
   throw;
 }
 catch (const volatile signed long){
   printf("signed long\n");
   throw;
 }
 catch (const volatile signed long long int ) {
   printf("signed long long int\n");
   throw;
 }
}

int main(){
 cond=OTHER;
 try {
   func11();
   func12();
   func21();
   func22();
   func31();
   func32();
 }
 catch (...){}

 printf("ok\n");
}
