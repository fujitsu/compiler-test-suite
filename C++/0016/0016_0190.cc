extern "C" void printf(char*,...);

enum {CHAR,SCHAR,UCHAR,SHORT,USHORT,SSHORT,INT,UINT,SINT,LONG,ULONG,SLONG,
      LLONG,ULLONG,SLLONG,FLOAT,DOUBLE,LDOUBLE,WCHAR,BOOL}cond;


void func1(){
 char *ii1=0;
 signed char **ii2=0;
 unsigned char ***ii3=0;
 const short        **ii4=0;
 unsigned short *ii5=0;
 int **ii6=0;
 unsigned int ***ii7=0;
 long ****ii8=0;
 unsigned long *****ii9=0;
 long long const ******ii10=0;
 const unsigned long long int *****ii11=0;
 volatile float ****ii12=0;
 const double volatile ***ii13=0;
 long double const **ii14=0;
 wchar_t *ii15=0;
 bool *ii16=0;

 char *&i1=ii1;
 signed char **&i2=ii2;
 unsigned char ***&i3=ii3;
 const short        **& i4=ii4;
 unsigned short *& i5=ii5;
 int **&  i6=ii6;
 unsigned int ***& i7=ii7;
 long ****& i8=ii8;
 unsigned long *****& i9=ii9;
 long long const ******&i10=ii10;
 const unsigned long long int *****&i11=ii11;
 volatile float ****&i12=ii12;
 const double volatile ***&  i13=ii13;
 long double const **& i14=ii14;
 wchar_t *&i15=ii15;
 bool *&i16=ii16;
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
 catch (char *&){
   printf("char\n");
 }
 catch (signed char** &){
   printf("signed char\n");
 }
 catch (unsigned char*** &){
   printf("unsigned char\n");
 }
 catch (const short **&){
   printf("short\n");
 }
 catch (unsigned short *&){
   printf("unsigned short\n");
 }
 catch (int **&){
   printf("int\n");
 }
 catch (unsigned int ***& ){
   printf("unsigned int\n");
 }
 catch (long ****&){
   printf("long\n");
 }
 catch (unsigned long *****&){
   printf("unsigned long\n");
 }
 catch (long long int const ******&) {
   printf("long long int\n");
 }
 catch (const unsigned long long int *****&) {
   printf("unsigned long long int\n");
 }
 catch (volatile float ****&){
   printf("float\n");
 }
 catch (const double volatile***&){
   printf("double\n");
 }
 catch (long double const**&){
   printf("long double\n");
 }
 catch (wchar_t *&){
   printf("wchar_t\n");
 }
 catch (bool *&){
   printf("bool\n");
 }
}
void func2(){
 signed short  *ii1=0;
 signed int **ii2=0;
 signed long ***ii3=0;
 signed long long ****ii4=0;

 signed short *&i1=ii1;
 signed int **&i2=ii2;
 signed long ***&i3=ii3;
 signed long long ****&i4=ii4;
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
 catch (signed short *&){
   printf("signed short\n");
 }
 catch (signed int **&){
   printf("signed int\n");
 }
 catch (signed long***&){
   printf("signed long\n");
 }
 catch (signed long long int ****&) {
   printf("signed long long int\n");
 }
}
int main(){
 cond=INT;
 func1();
 func2();
}
