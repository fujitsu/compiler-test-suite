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
void func1(){
 char (*i1)[2]=0;
 A (*i2)[2][5]=0;
 unsigned char (*i3)[10]=0;
 short const (*i4)[2]=0;
 unsigned short (*(*i5)[3])=0;
 int (*(*const i6)[10])(int (*)[2])=0;
 A (* i7)[2][3][4][5][6]=0;
 long  (**i8)[10]=0;

 A *i9=0;
 B **i10=0;
 C *const**i11=0; 
 const D ****volatile**i12=0;

 A (*i13)(void)=0;
 int (*i14)( int (*)(A&))=0;
 const B  (*(*(*i15)[3])(short int,const float**))[2]=0;
 A::B *(*(*i16)(long int))[2][5] =0;

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
 catch (char (*)[2]){
   printf("char (*)[2]\n");
 }
 catch (A (*)[2][5]){
   printf("A (*)[2][5]\n");
 }
 catch (unsigned char (*)[10]){
   printf("unsigned char (*)[10]\n");
 }
 catch (short const (*)[2]){
   printf("short const (*)[2]\n");
 }
 catch (unsigned short (*(*)[3])){
   printf("unsigned short (*(*)[3])\n");
 }
 catch (int (*(*const )[10])(int (*)[2]) ){
   printf("int (*(*const )[10])(int (*)[2]) \n");
 }
 catch (A (* )[2][3][4][5][6] ){
   printf("A (* )[2][3][4][5][6]\n");
 }
 catch (long  (**)[10]){
   printf("long  (**)[10]\n");
 }
 catch (A *){
   printf("A *\n");
 }
 catch (B **) {
   printf("B **\n");
 }
 catch (C *const**) {
   printf("C *const**\n");
 }
 catch (const D ****volatile**){
   printf("const D ****volatile**\n");
 }
 catch (A (*)(void)){
   printf("A (*)(void)\n");
 }
 catch (int (*)( int (*)(A&))){
   printf("int (*)( int (*)(A&))\n");
 }
 catch (const B  (*(*(*)[3])(short int,const float**))[2]){
   printf("const B  (*(*(*)[3])(short int,const float**))[2]\n");
 }
 catch (A::B *(*(*)( long int))[2][5]){
   printf("A::B *(*(*)( long int))[2][5]\n");
 }
}
int main(){
 cond=INT;
 func1();
}
