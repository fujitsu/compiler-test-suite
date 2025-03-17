extern "C" void printf(char*,...);

enum {CHAR,SCHAR,UCHAR,SHORT,USHORT,SSHORT,INT,UINT,SINT,LONG,ULONG,SLONG,
      LLONG,ULLONG,SLLONG,FLOAT,DOUBLE,LDOUBLE,WCHAR,BOOL}cond;


void func1(){
 char i1[2];
 signed char i2[3];
 unsigned char i3[1];
 const short         i4[10][20]={0};
 unsigned short  i5[10];
 int   i6[5][6];
 unsigned int  i7[7][8][9];
 long  i8[10];
 unsigned long  i9[11];
 long long const i10[12]={0};
 const unsigned long long int i11[13][14][15]={0};
 volatile float i12[10];
 const double volatile   i13[20][30]={0};
 long double const  i14[40][50][60]={0};
 wchar_t i15[10];
 bool i16[100][200];
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
 catch (char [2]){
   printf("char\n");
 }
 catch (signed char [3]){
   printf("signed char\n");
 }
 catch (unsigned char [1]){
   printf("unsigned char\n");
 }
 catch (const short [10][20]){
   printf("short\n");
 }
 catch (unsigned short [10]){
   printf("unsigned short\n");
 }
 catch (int [5][6]){
   printf("int\n");
 }
 catch (unsigned int [7][8][9] ){
   printf("unsigned int\n");
 }
 catch (long [10]){
   printf("long\n");
 }
 catch (unsigned long [11]){
   printf("unsigned long\n");
 }
 catch (long long const int [12]) {
   printf("long long int\n");
 }
 catch (const unsigned long long int [13][14][15]) {
   printf("unsigned long long int\n");
 }
 catch (volatile float [10]){
   printf("float\n");
 }
 catch (const double volatile [20][30]){
   printf("double\n");
 }
 catch (long double const[40][50][60]){
   printf("long double\n");
 }
 catch (wchar_t [10]){
   printf("wchar_t\n");
 }
 catch (bool [100][200]){
   printf("bool\n");
 }
}
void func2(){
 signed short i1[10];
 signed int i2[20][30];
 signed long i3[50][60];
 signed long long i4[70][80];
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
 catch (signed short [10]){
   printf("signed short\n");
 }
 catch (signed int [20][30]){
   printf("signed int\n");
 }
 catch (signed long[50][60]){
   printf("signed long\n");
 }
 catch (signed long long int [70][80]) {
   printf("signed long long int\n");
 }
}
int main(){
 cond=INT;
 func1();
 func2();
}
