extern "C" void printf(char*,...);
class A{};
int i=0;
enum {ZERO,ONE,TWO,THREE,FOUR,FIVE,SIX,SEVEN,EIGHT,NINE,OTHER,NONE}cond=ONE;
void func0(){
  if (cond==ZERO)
    printf(" ZERO \n");
}
void func1(){
  try {
    i++;
    if (cond==ONE)
      throw (int)0;
  }
  catch (int){
   printf("ONE\n");
  }
  catch (char){
   printf("NG\n");
  }
}
void func3();
void func2(){
  try {
    i++;
    try {
      if (cond ==TWO)
        throw (void (*)())0;
      func3();
    }
    catch (void (*)()){
     printf("TWO\n");
    }
   if (cond==THREE)
     throw (int (*)[2])0;
   try {
      if (cond == NONE)
        throw  (short **)0;
   }
   catch (short **){
    printf("NG\n");
   }
   try {
      if (cond == EIGHT)
        throw  (char **)0;
   }
   catch (short **){
    printf("NG\n");
   }
   catch (char **){
    printf("EIGHT\n");
   }

  }
  catch (int){
  }
  catch (int (*)[2]){
     printf("THREE\n");
  }
  try {
    if (cond == SIX) 
      throw 10;
  }
  catch (int){
   printf("SIX\n");
  }
  try {
    if (cond == NONE) 
      throw 10;
  }
  catch (int){
   printf("NG\n");
  }
  try {
    if (cond == SEVEN) 
      throw (int*)0;
  }
  catch (int**){
   printf("NG\n");
  }
  catch (int*){
   printf("SEVEN \n");
  }
}
void func3(){
  try {
    i++;
    try {
       try {
         if (cond ==FOUR)
          throw (char **)0;
       }
       catch (char **){
         printf("FOUR\n");
       }
       catch (short){}
       try {
         try {
            try{
               if (cond== FIVE)
                 throw (wchar_t**)0;
            } 
            catch (int){}
            catch (bool){}
            try {
              i++;
            }
            catch (int*){}
            catch (bool*){}
            try {
              if (cond == NINE)
                throw (bool**)0;
            }
            catch (int**){}
            catch (bool**){
              printf("NINE\n");
            }
         }
         catch (bool){}
         catch (wchar_t**){
           printf("FIVE\n");
         }
         catch (unsigned int **){}
       }
       catch (signed int **){}
       catch (A (*)[2]){}
    }
    catch (int(*)()){
    }
  }
  catch (float){
  }
  catch (A (*)[2][3]){
  }
}

int main(){
 func0();
 func1(); 
 func2();
}
