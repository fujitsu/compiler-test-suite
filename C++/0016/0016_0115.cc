extern "C" void printf(char*,...);
int main(){
     int i=0;
  if (i==0) {
     class c{ };
     union u{ };
     try {
       try {
         throw(99);
       }
       catch (c){ }
       catch (char*){ }
       catch (u){ }
       catch (int){ }
       catch (int (*(((((*)[16])))[17][18]))(void)){ }
     }
     catch (int){ }
     catch (int (*)(int *,char &)){ }
   }

   if (i==1) {
     try {
       try {
         try {
           try {
              throw("test");
           }
           catch (long){ }         
         }
         catch (char*){ }         
       }
       catch (char*){ }
       catch (int){ }
       catch (int (*(((((*)[16])))[17][18]))(void)){ }
     }
     catch (int (*)(int *,char &)){ }
   }

     printf("Exception Handling information block\n");  
}
