extern "C" void printf(char*,...);
int main(){
     class c{ };
     union u{ };
     try {
       throw(99);
     }
     catch (c){ }
     catch (char*){ }
     catch (int){ }
     catch (int (*)(int *,char &)){ }
     catch (u){ }
     catch (int (*(((((*)[16])))[17][18]))(void)){ }
     printf("catchtype command test\n");  
}
