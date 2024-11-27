#include  <stdio.h>


#define ON  1
#define OFF 0
int main(){
  int i;
  struct t {
             struct  m {char     move[1000];} m1;
             struct  m  m5;
             struct  m  m4;
             struct  m  m6;
             struct  m  m2;
             struct  m  m3;
           unsigned short int    :1;
             signed long long int          :1;
             signed char         :1;
           unsigned char         :1;
             signed short int    :1;
           unsigned long long int          :1;
           unsigned long long int       b06:1;
           unsigned char      b02:1;
             signed short int b03:1;
           unsigned short int b04:1;
             signed long long int       b05:1;
             signed char      b01:1;
  } x;
  x.b05=ON;
  x.b01=ON;
  x.b02=ON;
  x.b03=ON;
  x.b04=ON;
  x.b06=ON; 
             if (x.b01== -ON
              && x.b03== -ON
              && x.b05== -ON)
                           printf("**(01)** OK\n");
             else          printf("**(01)** NG x.b01=%x x.b03=%x x.b05=%x\n",x.b01,x.b03,x.b05);
             if (x.b02== ON
              && x.b04== ON
              && x.b06== ON)
                           printf("**(02)** OK\n");
             else          printf("**(02)** NG x.b02=%x x.b04=%x x.b06=%x\n",x.b02,x.b04,x.b06);
             for (i=0; i<1000; i++)
               x.m1.move[i]='a';
             x.m1.move[999]='e';
  x.m6=x.m5=x.m4=x.m3=x.m2=x.m1;
             for (i=0; x.m6.move[i]=='a'; i++);
             if (i==999)  
                           printf("**(03)** OK\n");
             else          printf("**(03)** NG i=%d\n",i);
  {
  struct t {
             signed char      b01:1;
             signed char         :1;
             struct  m {char     move[1000];} m1;
           unsigned char      b02:1;
           unsigned char         :1;
             struct  m  m2;
             signed short int b03:1;
             signed short int    :1;
           unsigned short int b04:1;
             struct  m  m3;
           unsigned short int    :1;
             struct  m  m4;
             signed long long int       b05:1;
             signed long long int          :1;
           unsigned long long int       b06:1;
           unsigned long long int          :1;
             struct  m  m5;
             struct  m  m6;
  } x;
  {
  struct t {
             struct  m {char     move[1000];} m1;
             signed char      b01:1;
             signed char         :1;
           unsigned char         :1;
           unsigned char      b02:1;
             struct  m  m2;
             signed short int b03:1;
             struct  m  m3;
             signed short int    :1;
           unsigned short int b04:1;
           unsigned long long int          :1;
           unsigned short int    :1;
             signed long long int       b05:1;
             signed long long int          :1;
           unsigned long long int       b06:1;
             struct  m  m4;
             struct  m  m5;
             struct  m  m6;
  } x;
  {
  struct t {
             signed char      b01:1;
             signed char         :1;
             struct  m {char     move[1000];} m1;
             struct  m  m2;
           unsigned char      b02:1;
           unsigned char         :1;
             signed short int b03:1;
             signed short int    :1;
             struct  m  m3;
           unsigned short int b04:1;
           unsigned short int    :1;
             struct  m  m4;
             struct  m  m5;
             signed long long int       b05:1;
             signed long long int          :1;
             struct  m  m6;
           unsigned long long int       b06:1;
           unsigned long long int          :1;
  } x;
  {
  struct t {
             signed char      b01:1;
             struct  m {char     move[1000];} m1;
             signed char         :1;
             struct  m  m2;
           unsigned char      b02:1;
           unsigned char         :1;
             signed short int b03:1;
             signed short int    :1;
           unsigned short int b04:1;
             struct  m  m3;
           unsigned short int    :1;
             struct  m  m4;
             signed long long int       b05:1;
             struct  m  m5;
             signed long long int          :1;
             struct  m  m6;
           unsigned long long int       b06:1;
           unsigned long long int          :1;
  } x;
  {
  struct t {
             struct  m {char     move[1000];} m1;
             struct  m  m5;
             struct  m  m6;
           unsigned char         :1;
             signed short int    :1;
           unsigned long long int          :1;
           unsigned long long int       b06:1;
           unsigned char      b02:1;
             struct  m  m3;
             struct  m  m2;
             signed short int b03:1;
           unsigned short int b04:1;
             signed long long int       b05:1;
           unsigned short int    :1;
             signed long long int          :1;
             struct  m  m4;
             signed char         :1;
             signed char      b01:1;
  } x;
  x.b05=ON;
  x.b01=ON;
  x.b02=ON;
  x.b03=ON;
  x.b04=ON;
  x.b06=ON; 
             if (x.b01== -ON
              && x.b03== -ON
              && x.b05== -ON)
                           printf("**(04)** OK\n");
             else          printf("**(04)** NG x.b01=%x x.b03=%x x.b05=%x\n",x.b01,x.b03,x.b05);
             if (x.b02== ON
              && x.b04== ON
              && x.b06== ON)
                           printf("**(05)** OK\n");
             else          printf("**(05)** NG x.b02=%x x.b04=%x x.b06=%x\n",x.b02,x.b04,x.b06);
             for (i=0; i<1000; i++)
               x.m1.move[i]='a';
             x.m1.move[999]='e';
  x.m6=x.m5=x.m4=x.m3=x.m2=x.m1;
             for (i=0; x.m6.move[i]=='a'; i++);
             if (i==999)  
                           printf("**(06)** OK\n");
             else          printf("**(06)** NG i=%d\n",i);
  }
  x.b05=ON;
  x.b01=ON;
  x.b02=ON;
  x.b03=ON;
  x.b04=ON;
  x.b06=ON; 
             if (x.b01== -ON
              && x.b03== -ON
              && x.b05== -ON)
                           printf("**(07)** OK\n");
             else          printf("**(07)** NG x.b01=%x x.b03=%x x.b05=%x\n",x.b01,x.b03,x.b05);
             if (x.b02== ON
              && x.b04== ON
              && x.b06== ON)
                           printf("**(08)** OK\n");
             else          printf("**(08)** NG x.b02=%x x.b04=%x x.b06=%x\n",x.b02,x.b04,x.b06);
             for (i=0; i<1000; i++)
               x.m1.move[i]='a';
             x.m1.move[999]='e';
  x.m6=x.m5=x.m4=x.m3=x.m2=x.m1;
             for (i=0; x.m6.move[i]=='a'; i++);
             if (i==999)  
                           printf("**(09)** OK\n");
             else          printf("**(09)** NG i=%d\n",i);
  }
  x.b05=ON;
  x.b01=ON;
  x.b02=ON;
  x.b03=ON;
  x.b04=ON;
  x.b06=ON; 
             if (x.b01== -ON
              && x.b03== -ON
              && x.b05== -ON)
                           printf("**(10)** OK\n");
             else          printf("**(10)** NG x.b01=%x x.b03=%x x.b05=%x\n",x.b01,x.b03,x.b05);
             if (x.b02== ON
              && x.b04== ON
              && x.b06== ON)
                           printf("**(11)** OK\n");
             else          printf("**(11)** NG x.b02=%x x.b04=%x x.b06=%x\n",x.b02,x.b04,x.b06);
             for (i=0; i<1000; i++)
               x.m1.move[i]='a';
             x.m1.move[999]='e';
  x.m6=x.m5=x.m4=x.m3=x.m2=x.m1;
             for (i=0; x.m6.move[i]=='a'; i++);
             if (i==999)  
                           printf("**(12)** OK\n");
             else          printf("**(12)** NG i=%d\n",i);
  }
  x.b05=ON;
  x.b01=ON;
  x.b02=ON;
  x.b03=ON;
  x.b04=ON;
  x.b06=ON; 
             if (x.b01== -ON
              && x.b03== -ON
              && x.b05== -ON)
                           printf("**(13)** OK\n");
             else          printf("**(13)** NG x.b01=%x x.b03=%x x.b05=%x\n",x.b01,x.b03,x.b05);
             if (x.b02== ON
              && x.b04== ON
              && x.b06== ON)
                           printf("**(14)** OK\n");
             else          printf("**(14)** NG x.b02=%x x.b04=%x x.b06=%x\n",x.b02,x.b04,x.b06);
             for (i=0; i<1000; i++)
               x.m1.move[i]='a';
             x.m1.move[999]='e';
  x.m6=x.m5=x.m4=x.m3=x.m2=x.m1;
             for (i=0; x.m6.move[i]=='a'; i++);
             if (i==999)  
                           printf("**(15)** OK\n");
             else          printf("**(15)** NG i=%d\n",i);
  }
  x.b05=ON;
  x.b01=ON;
  x.b02=ON;
  x.b03=ON;
  x.b04=ON;
  x.b06=ON; 
             if (x.b01== -ON
              && x.b03== -ON
              && x.b05== -ON)
                           printf("**(16)** OK\n");
             else          printf("**(16)** NG x.b01=%x x.b03=%x x.b05=%x\n",x.b01,x.b03,x.b05);
             if (x.b02== ON
              && x.b04== ON
              && x.b06== ON)
                           printf("**(17)** OK\n");
             else          printf("**(17)** NG x.b02=%x x.b04=%x x.b06=%x\n",x.b02,x.b04,x.b06);
             for (i=0; i<1000; i++)
               x.m1.move[i]='a';
             x.m1.move[999]='e';
  x.m6=x.m5=x.m4=x.m3=x.m2=x.m1;
             for (i=0; x.m6.move[i]=='a'; i++);
             if (i==999)  
                           printf("**(18)** OK\n");
             else          printf("**(18)** NG i=%d\n",i);
  }
}
