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
 A ii13(void) { return obj;};
 int ii14( int (*)(A&)){return 0;}
 A::B *(*(ii16)(long int))[2][5]{ return 0;} 
void func1(){
 char ii1[2];
 A ii2[2][5];
 unsigned char ii3[10];
 short const ii4[2]={0};
 unsigned short (*(ii5)[3]);
 int (*(ii6)[10])(int (&)[2]);
 A ( ii7)[2][3][4][5][6];
 long  (*ii8)[10];

 A ii9;
 B *ii10;
 C *const*ii11;
 const D ****volatile*ii12;

 const B  (*(*(ii15)[3])(short int,const float*&))[2];

 char (&i1)[2]=ii1;
 A (&i2)[2][5]=ii2;
 unsigned char (&i3)[10]=ii3;
 short const (&i4)[2]=ii4;
 unsigned short (*(&i5)[3])=ii5;
 int (*(&i6)[10])(int (&)[2])=ii6;
 A (& i7)[2][3][4][5][6]=ii7;
 long  (*&i8)[10]=ii8;

 A &i9=ii9;
 B *&i10=ii10;
 C *const*&i11=ii11; 
 const D ****volatile*&i12=ii12;

 A (&i13)(void)=ii13;
 int (&i14)( int (*)(A&))=ii14;
 const B  (*(*(&i15)[3])(short int,const float*&))[2]=ii15;
 A::B *(*(&i16)(long int))[2][5] =ii16;

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
 catch (A (*)[5]){
   printf("signed char\n");
 }
 catch (unsigned char (*)){
   printf("unsigned char\n");
 }
 catch (short const (*)){
   printf("short\n");
 }
 catch (unsigned short (*(*))){
   printf("unsigned short\n");
 }
 catch (int (*(*))(int (&)[2]) ){
   printf("int\n");
 }
 catch (A (* )[3][4][5][6] ){
   printf("unsigned int\n");
 }
 catch (long  (*)[10]){
   printf("long\n");
 }
 catch (A &){
   printf("unsigned long\n");
 }
 catch (B *&) {
   printf("long long int\n");
 }
 catch (C *const*&) {
   printf("unsigned long long int\n");
 }
 catch (const D ****volatile*&){
   printf("float\n");
 }
 catch (A (*)(void)){
   printf("double\n");
 }
 catch (int (*)( int (*)(A&))){
   printf("long double\n");
 }
 catch (const B  (*(*(*))(short int,const float*&))[2]){
   printf("wchar_t\n");
 }
 catch (A::B *(*(*)(long int))[2][5]){
   printf("bool\n");
 }
}
int main(){
 cond=INT;
 func1();
}
