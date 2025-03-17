extern "C" void printf(char*,...);

enum {CHAR,SCHAR,UCHAR,SHORT,USHORT,SSHORT,INT,UINT,SINT,LONG,ULONG,SLONG,
      LLONG,ULLONG,SLLONG,FLOAT,DOUBLE,LDOUBLE,WCHAR,BOOL}cond;


void func1(){

 char *i1[10];
 signed char **i2[20];
 unsigned char ***i3[30][40];
 const short        ** i4[30]={0};
 unsigned short * i5[10];
 int **  i6[20];
 unsigned int *** i7[30][40];
 long **** i8[50][60];
 unsigned long ***** i9[70][80];
 long long const ******i10[90]={0};
 const unsigned long long int *****i11[30][10]={0};
 volatile float ****i12[10][20];
 const double volatile ***  i13[10]={0};
 long double const ** i14[10][20]={0};
 wchar_t *i15[10];
 bool *i16[30];
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
 catch (char *[10]){
   printf("char\n");
 }
 catch (signed char** [20]){
   printf("signed char\n");
 }
 catch (unsigned char*** [30][40]){
   printf("unsigned char\n");
 }
 catch (const short **[30]){
   printf("short\n");
 }
 catch (unsigned short *[10]){
   printf("unsigned short\n");
 }
 catch (int **[20]){
   printf("int\n");
 }
 catch (unsigned int ***[30][40] ){
   printf("unsigned int\n");
 }
 catch (long ****[50][60]){
   printf("long\n");
 }
 catch (unsigned long *****[70][80]){
   printf("unsigned long\n");
 }
 catch (long long int const ******[90]) {
   printf("long long int\n");
 }
 catch (const unsigned long long int *****[30][10]) {
   printf("unsigned long long int\n");
 }
 catch (volatile float ****[10][20]){
   printf("float\n");
 }
 catch (const double volatile***[10]){
   printf("double\n");
 }
 catch (long double const**[10][20]){
   printf("long double\n");
 }
 catch (wchar_t *[10]){
   printf("wchar_t\n");
 }
 catch (bool *[30]){
   printf("bool\n");
 }
}
void func2(){
 signed short *i1[10];
 signed int **i2[20];
 signed long ***i3[30];
 signed long long ****i4[40];
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
 catch (signed short *[10]){
   printf("signed short\n");
 }
 catch (signed int **[20]){
   printf("signed int\n");
 }
 catch (signed long***[30]){
   printf("signed long\n");
 }
 catch (signed long long int ****[40]) {
   printf("signed long long int\n");
 }
}
int main(){
 cond=INT;
 func1();
 func2();
}
