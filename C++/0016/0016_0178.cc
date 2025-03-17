extern "C" void printf(char*,...);

enum {CHAR,SCHAR,UCHAR,SHORT,USHORT,SSHORT,INT,UINT,SINT,LONG,ULONG,SLONG,
      LLONG,ULLONG,SLLONG,FLOAT,DOUBLE,LDOUBLE,WCHAR,BOOL,OTHER}cond;

void func11(){


 char const i1=0;
 signed char const i2=0;
 unsigned char const i3=0;
 short const i4=0;
 unsigned short const i5=0;
 int const i6=0;
 unsigned int const i7=0;
 long const i8=0;
 unsigned long const i9=0;
 long long const i10=0;
 unsigned long long int const i11=0;
 float const i12=0;
 double const i13=0;
 long double const i14=0;
 wchar_t const i15=0;
 bool const i16=0;
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
 catch (char const){
   printf("char\n");
   throw;
 }
 catch (signed char const){
   printf("signed char\n");
   throw;
 }
 catch (unsigned char const){ 
   printf("unsigned char\n");
   throw;
 }
 catch (short  const){ 
   printf("short\n");
   throw;
 }
 catch (unsigned short const){ 
   printf("unsigned short\n");
   throw;
 }
 catch (int const){ 
   printf("int\n");
   throw;
 }
 catch (unsigned int const){ 
   printf("unsigned int\n");
   throw;
 }
 catch (long const){ 
   printf("long\n");
   throw;
 }
 catch (unsigned long const){ 
   printf("unsigned long\n");
   throw;
 }
 catch (long long int const){
   printf("long long int\n");
   throw;
 }
 catch (unsigned long long int const){
   printf("unsigned long long int\n");
   throw;
 }
 catch (float const){ 
   printf("float\n");
   throw;
 }
 catch (double const){ 
   printf("double\n");
   throw;
 }
 catch (long double const){ 
   printf("long double\n");
   throw;
 }
 catch (wchar_t const){ 
   printf("wchar_t\n");
   throw;
 }
 catch (bool const){ 
   printf("bool\n");
   throw;
 }
}
void func12(){ 
 signed short const i1=0;
 signed int const i2=0;
 signed long const i3=0;
 signed long long const i4=0;
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
 catch (signed short const){ 
   printf("signed\n");
   throw;
 }
 catch (signed int const){ 
   printf("signed int\n");
   throw;
 }
 catch (signed long const){ 
   printf("signed long\n");
   throw;
 }
 catch (signed long long int const){
   printf("signed long long int\n");
   throw;
 }
}

void func21(){
 char volatile i1=0;
 signed char volatile i2=0;
 unsigned char volatile i3=0;
 short volatile i4=0;
 unsigned short volatile i5=0;
 int volatile i6=0;
 unsigned int volatile i7=0;
 long volatile i8=0;
 unsigned long volatile i9=0;
 long long volatile i10=0;
 unsigned long long int volatile i11=0;
 float volatile i12=0;
 double volatile i13=0;
 long double volatile i14=0;
 wchar_t volatile i15=0;
 bool volatile i16=0;
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
 catch (char volatile){
   printf("char\n");
   throw;
 }
 catch (signed char volatile){
   printf("signed char\n");
   throw;
 }
 catch (unsigned char volatile){
   printf("unsigned char\n");
   throw;
 }
 catch (short  volatile){
   printf("short\n");
   throw;
 }
 catch (unsigned short volatile){
   printf("unsigned short\n");
   throw;
 }
 catch (int volatile){
   printf("int\n");
   throw;
 }
 catch (unsigned int volatile){
   printf("unsigned int\n");
   throw;
 }
 catch (long volatile){
   printf("long\n");
   throw;
 }
 catch (unsigned long volatile){
   printf("unsigned long\n");
   throw;
 }
 catch (long long int  volatile){
   printf("long long int\n");
   throw;
 }
 catch (unsigned long long int  volatile){
   printf("unsigned long long int\n");
   throw;
 }
 catch (float volatile){
   printf("float\n");
   throw;
 }
 catch (double volatile){
   printf("double\n");
   throw;
 }
 catch (long double volatile){
   printf("long double\n");
   throw;
 }
 catch (wchar_t volatile){
   printf("wchar_t\n");
   throw;
 }
 catch (bool volatile){
   printf("bool\n");
   throw;
 }
}
void func22( ){
 signed short volatile i1=0;
 signed int volatile i2=0;
 signed long volatile i3=0;
 signed long long volatile i4=0;
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
 catch (signed short volatile){
   printf("signed\n");
   throw;
 }
 catch (signed int volatile){
   printf("signed int\n");
   throw;
 }
 catch (signed long volatile){
   printf("signed long\n");
   throw;
 }
 catch (signed long long int  volatile){
   printf("signed long long int\n");
   throw;
 }
}
void func31(){
 char const volatile i1=0;
 signed char const volatile i2=0;
 unsigned char const volatile i3=0;
 short const volatile i4=0;
 unsigned short const volatile i5=0;
 int const volatile i6=0;
 unsigned int const volatile i7=0;
 long const volatile i8=0;
 unsigned long const volatile i9=0;
 long long const volatile i10=0;
 unsigned long long int const volatile i11=0;
 float const volatile i12=0;
 double const volatile i13=0;
 long double const volatile i14=0;
 wchar_t const volatile i15=0;
 bool const volatile i16=0;
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
 catch (char const volatile){
   printf("char\n");
   throw;
 }
 catch (signed char const volatile){
   printf("signed char\n");
   throw;
 }
 catch (unsigned char const volatile){
   printf("unsigned char\n");
   throw;
 }
 catch (short  const volatile){
   printf("short\n");
   throw;
 }
 catch (unsigned short const volatile){
   printf("unsigned short\n");
   throw;
 }
 catch (int const volatile){
   printf("int\n");
   throw;
 }
 catch (unsigned int const volatile){
   printf("unsigned int\n");
   throw;
 }
 catch (long const volatile){
   printf("long\n");
   throw;
 }
 catch (unsigned long const volatile){
   printf("unsigned long\n");
   throw;
 }
 catch (long long int  const volatile){
   printf("long long int\n");
   throw;
 }
 catch (unsigned long long int  const volatile){
   printf("unsigned long long int\n");
   throw;
 }
 catch (float const volatile){
   printf("float\n");
   throw;
 }
 catch (double const volatile){
   printf("double\n");
   throw;
 }
 catch (long double const volatile){
   printf("long double\n");
   throw;
 }
 catch (wchar_t const volatile){
   printf("wchar_t\n");
   throw;
 }
 catch (bool const volatile){
   printf("bool\n");
   throw;
 }
}
void func32(){
 signed short const volatile i1=0;
 signed int const volatile i2=0;
 signed long const volatile i3=0;
 signed long long const volatile i4=0;
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
 catch (signed short const volatile){
   printf("signed\n");
   throw;
 }
 catch (signed int const volatile){
   printf("signed int\n");
   throw;
 }
 catch (signed long const volatile){
   printf("signed long\n");
   throw;
 }
 catch (signed long long int  const volatile){
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
