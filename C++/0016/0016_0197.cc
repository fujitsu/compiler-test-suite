extern "C" void printf(char*,...);

enum {CHAR,SCHAR,UCHAR,SHORT,USHORT,SSHORT,INT,UINT,SINT,LONG,ULONG,SLONG,
      LLONG,ULLONG,SLLONG,FLOAT,DOUBLE,LDOUBLE,WCHAR,BOOL}cond;


class A {
 public:
   class B{};
};
struct B {};
union C{};
enum D{};
A obj;
void func1(){

 char i1[10][2];
 A i2[30][2][5];
 unsigned char i3[20][10];
 short const i4[10][2]={0};
 unsigned short (*(i5[10][3]));
 int (*(i6[10])[10])(int (&)[2]);
 A i7[2][3][4][5][6];
 long  (*i8[10])[10];

 A i9[100];
 B *i10[200];
 C *const*i11[300];
 const D ****volatile*i12[100];

 A (*i13[10])(void);
 int (*i14[20])( int (*)(A&));
 const B  (*(*(i15[10])[3])(short int,const float*&))[2];
 A::B *(*(*i16[10])(long int))[2][5];

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
 catch ( char [10][2]){
   printf(" char [10][2];\n");
 }
 catch ( A [30][2][5]){
   printf(" A [30][2][5]\n");
 }
 catch (unsigned char [20][10]){
   printf("unsigned char [20][10]\n");
 }
 catch (short const [10][2]){
   printf("short const [10][2]\n");
 }
 catch (unsigned short (*([10][3]))){
   printf("unsigned short (*([10][3]))\n");
 }
 catch (int (*([10])[10])(int (&)[2]) ){
   printf("int (*([10])[10])(int (&)[2]) \n");
 }
 catch (A [2][3][4][5][6] ){
   printf("A [2][3][4][5][6] \n");
 }
 catch (long  (*[10])[10]){
   printf("long  (*[10])[10]\n");
 }
 catch (A [100]){
   printf("A [100]\n");
 }
 catch (B *[200]) {
   printf("B *[200]\n");
 }
 catch (C *const*[300]){
   printf("C *const*[300]\n");
 }
 catch (const D ****volatile*[100]) {
   printf("const D ****volatile*[100]\n");
 }
 catch (A (*[10])(void)){
   printf("A (*[10])(void)\n");
 }
 catch (int (*[20])( int (*)(A&))){
   printf("int (*[20])( int (*)(A&))\n");
 }
 catch (const B  (*(*([10])[3])(short int,const float*&))[2]){
   printf("const B  (*(*([10])[3])(short int,const float*&))[2]\n");
 }
 catch (A::B *(*(*[10])(long int))[2][5]){
   printf("A::B *(*(*[10])(long int))[2][5]\n");
 }
}
int main(){
 cond=INT;
 func1();
}
