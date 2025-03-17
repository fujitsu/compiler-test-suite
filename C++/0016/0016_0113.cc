extern "C" void printf(char*,...);
int main(){
     class c{ };
     union u{ };
     try {
       try {
         throw(99);
       }
       catch (c){ }
       catch (char*){ }
       catch (u){ }
       catch (int (*(((((*)[16])))[17][18]))(void)){ }
     }
     catch (int){ }
     catch (int (*(((((*)[16])))[17][18]))(void)){ }
     catch (int (*)(int *,char &)){ }
     printf("catchtype command test\n");  
}
