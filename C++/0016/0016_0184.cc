extern "C" void printf(char*,...);

enum {CHAR,SCHAR,UCHAR,SHORT,USHORT,SSHORT,INT,UINT,SINT,LONG,ULONG,SLONG,
      LLONG,ULLONG,SLLONG,FLOAT,DOUBLE,LDOUBLE,WCHAR,BOOL}cond;


void func1(){
 char **i1=0;
 signed char *const*i2=0;
 unsigned char *volatile*i3=0;
 short const *volatile*const *i4=0;
 unsigned short ****** i5=0;
 int **const i6=0;
 const unsigned int ***const i7=0;
 long *const * volatile * const volatile i8=0;
 unsigned long ***i9=0;
 const long long *** i10=0;
 volatile unsigned long long int ***i11=0;
 float const **i12=0;
 double **** volatile *** i13=0;
 long double **** i14=0;
 wchar_t ** i15=0;
 bool ***********i16=0;
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
 catch (char **){
   printf("char\n");
 }
 catch (signed char *const*){
   printf("signed char\n");
 }
 catch (unsigned char *volatile*){
   printf("unsigned char\n");
 }
 catch (short const *volatile*const *){
   printf("short\n");
 }
 catch (unsigned short ****** ){
   printf("unsigned short\n");
 }
 catch (int **const ){
   printf("int\n");
 }
 catch (const unsigned int ***const ){
   printf("unsigned int\n");
 }
 catch (long *const * volatile * const volatile ){
   printf("long\n");
 }
 catch (unsigned long ***){
   printf("unsigned long\n");
 }
 catch (const long long *** ) {
   printf("long long int\n");
 }
 catch (volatile unsigned long long int ***) {
   printf("unsigned long long int\n");
 }
 catch (float const **){
   printf("float\n");
 }
 catch (double **** volatile ***){
   printf("double\n");
 }
 catch (long double ****){
   printf("long double\n");
 }
 catch (wchar_t **){
   printf("wchar_t\n");
 }
 catch (bool ***********){
   printf("bool\n");
 }
}
void func2(){
 signed short *** i1=0;
 signed int **const* i2=0;
 signed long **** i3=0;
 volatile signed long long *const * i4=0;
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
 catch (signed short ***){
   printf("signed\n");
 }
 catch (signed int **const*){
   printf("signed int\n");
 }
 catch (signed long****){
   printf("signed long\n");
 }
 catch (volatile signed long long int *const*) {
   printf("signed long long int\n");
 }
}
int main(){
 cond=INT;
 func1();
 func2();
}
