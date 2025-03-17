extern "C" void printf(char*,...);
void func1(){
     int i11=0;
     int i12=0;
     try {
       i11++;
       try {
         i12++;
       }
       catch (char*){ }
       catch (int (*(((((*)[16])))[17][18]))(void)){ }
       try {
       }
       catch (long){ }
     }
     catch (int){ }

}

int main(){
     int i=0;
     int j=1;
     class c{ };
     union u{ };
     try {
       i++;
       try {
         i++;
         if (i==0) {
            throw(99);
         }
       }
       catch (c){ }
       catch (char*){ }
       catch (u){ }
       catch (int){ }
       catch (int (*(((((*)[16])))[17][18]))(void)){ }
       try {
         i++;
       }
       catch (u){ }
       catch (int){ }
     }
     catch (int){ }
     catch (int (*)(int *,char &)){ }
     catch (long){ }

     func1();

     try {
       i++;
       try {
         i++;
         if (j==1) {
            throw("test");
	 }
       }
       catch (char const *){ }
       catch (int){ }
       catch (int (*(((((*)[16])))[17][18]))(void)){ }
     }
     catch (int (*)(int *,char &)){ }

     printf("Table of Exception Handling information\n");  

     return 0;
}
