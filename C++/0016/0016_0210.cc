extern "C" void printf(char*,...);
int i=0;
int main(){
 try {
   i++;
   throw (bool **)0;
 }
 catch(int ){}
 catch(char*){}
 catch(bool **){
   printf("throw exist,OK \n");
 }
}
