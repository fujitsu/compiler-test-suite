extern "C" void printf(char*,...);
extern void func_ext(int);

int i=0;
void func1();
void func2();
void func3();
enum {A,B,C,D,E,F,G,H,I}cond=A;
int main(){
  if (cond!=A) goto next;
  
  {
    i++;
  }
  try {
    throw 10;
  }
  catch (int){
   printf(" A:OK \n");
  }
next:;
 if (cond ==B) { 
   try {    
     func1();
   }
   catch (short int *){
     printf(" B:OK \n");
   }
 }
 if (cond ==C){ 
   try {    
     func2();
   }
   catch (wchar_t (*)[3]){
     printf(" C:OK \n");
   }
   catch (int){
   }
 }
 if (cond ==D){
   try {
     try {
        func_ext(0);
     }
     catch (double){
       printf(" D:NG \n");
     }
   }
   catch (int ){
     printf(" D:NG \n");
   }
   catch (char){
     printf(" D:NG \n");
   }
   catch (double(*)()){
     printf(" D:OK \n");
   }
 }
 if (cond==E){
   try {
     func_ext(10);
   }
   catch(long long){
     printf(" E:OK \n");
   }
 }
 if (cond==F){
   try {
      throw (int *******************)0; 
   }
   catch ( int *******************){
     printf(" F:OK \n");
   }
 }
 if (cond==G){
   try {
      throw (char (**********************)[2])0;
   }
   catch ( int *******************){
     printf(" G:NG \n");
   }
   catch ( char (**********************)[2]){
     printf(" G:OK \n");
   }
 }
}


void func1(){
  short int *sp=0;
  throw sp;  
}  
void func2(){
 try {
   {
   wchar_t (*p)[3]=0;
     {
       throw p; 
     }
   }
 }
 catch (int){
  printf(" C:OK \n");
 }
}
void func3(){
  throw (long long int)0; 
}
