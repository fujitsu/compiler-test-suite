extern "C" void printf(char*,...);

enum {CHAR,SCHAR,UCHAR,SHORT,USHORT,SSHORT,INT,UINT,SINT,LONG,ULONG,SLONG,
      LLONG,ULLONG,SLLONG,FLOAT,DOUBLE,LDOUBLE,WCHAR,BOOL}cond;

void func1(){
 long int i=0;
 try {
   switch (cond){
   case CHAR:
     throw (char)i;
   case SCHAR:
     throw (signed char)i;
   case UCHAR: 
     throw (unsigned char)i;
   case SHORT: 
     throw (short)i;
   case USHORT: 
     throw (unsigned short)i;
   case INT: 
     throw (int)i;
   case UINT: 
     throw (unsigned int)i;
   case LONG: 
     throw (long)i;
   case ULONG: 
     throw (unsigned long)i;
   case LLONG: 
     throw (long long)i;
   case ULLONG: 
     throw (unsigned long long int)i;
   case FLOAT: 
     throw (float)i;
   case DOUBLE: 
     throw (double)i;
   case LDOUBLE: 
     throw (long double)i;
   case WCHAR: 
     throw (wchar_t)i;
   case BOOL: 
     throw (bool)i;
   default:
     break;
   }
 }  
 catch (char){
   printf("char\n");
 }
 catch (signed char){
   printf("signed char\n");
 }
 catch (unsigned char){
   printf("unsigned char\n");
 }
 catch (short ){
   printf("short\n");
 }
 catch (unsigned short){
   printf("unsigned short\n");
 }
 catch (int){
   printf("int\n");
 }
 catch (unsigned int){
   printf("unsigned int\n");
 }
 catch (long){
   printf("long\n");
 }
 catch (unsigned long){
   printf("unsigned long\n");
 }
 catch (long long int ) {
   printf("long long int\n");
 }
 catch (unsigned long long int ) {
   printf("unsigned long long int\n");
 }
 catch (float){
   printf("float\n");
 }
 catch (double){
   printf("double\n");
 }
 catch (long double){
   printf("long double\n");
 }
 catch (wchar_t){
   printf("wchar_t\n");
 }
 catch (bool){
   printf("bool\n");
 }
}
void func2(){
 try{
   switch (cond){
   case SSHORT:
    throw (signed short)0;
   case SINT:
    throw (signed int)0;
   case SLONG:
    throw (signed long)0;
   case SLLONG:
    throw (signed long long)0;
   default:
    break;
   }
 }
 catch (signed short){
   printf("signed\n");
 }
 catch (signed int){
   printf("signed int\n");
 }
 catch (signed long){
   printf("signed long\n");
 }
 catch (signed long long int ) {
   printf("signed long long int\n");
 }
}
int main(){
 cond=INT;
 func1();
 func2();
}
