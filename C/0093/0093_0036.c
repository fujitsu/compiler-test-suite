
#include <stdio.h>
  struct t {
           signed   char      b01:1;
           unsigned char      b02:2;
           signed   short int b03:3;
           unsigned short int b04:4;
           signed   int       b05:5;
           unsigned int       b06:6;
           signed long long int b07:7;
           unsigned long long int b08:8;
  } x;
  struct s {
           signed   char      b01:8;
           unsigned char      b02:8;
           signed   short int b03:16;
           unsigned short int b04:16;
           signed   int       b05:32;
           unsigned int       b06:32;
           signed long long int b07:64;
           unsigned long long int b08:64;
  } y;
int main(){
  char      i1;
  short int i2;
  int       i4;
  long long int       i8;
             x.b01=x.b02=x.b03=x.b04=x.b05=x.b06=x.b07=x.b08=1;
  i1=x.b01;  
             if (i1) printf("**(01)** OK\n");
             else    printf("**(01)** NG i1=%.1x\n",i1);
  i1=x.b02; 
             if (i1) printf("**(02)** OK i1=%.1x\n",i1);
             else    printf("**(02)** NG i1=%.1x\n",i1);
  i1=x.b03;
             if (i1) printf("**(03)** OK i1=%.1x\n",i1);
             else    printf("**(03)** NG i1=%.1x\n",i1);
  i1=x.b04;
             if (i1) printf("**(04)** OK i1=%.1x\n",i1);
             else    printf("**(04)** NG i1=%.1x\n",i1);
  i1=x.b05;  
             if (i1) printf("**(05)** OK i1=%.1x\n",i1);
             else    printf("**(05)** NG i1=%.1x\n",i1);
  i1=x.b06; 
             if (i1) printf("**(06)** OK i1=%.1x\n",i1);
             else    printf("**(06)** NG i1=%.1x\n",i1);
  i1=x.b07; 
             if (i1) printf("*(01)** OK i1=%.1x\n",i1);
             else    printf("*(01)** NG i1=%.1x\n",i1);
  i1=x.b08; 
             if (i1) printf("*(02)** OK i1=%.1x\n",i1);
             else    printf("*(02)** NG i1=%.1x\n",i1);
  i2=x.b01;  
             if (i2) printf("**(07)** OK\n");
             else    printf("**(07)** NG i2=%.4x\n",i2);
  i2=x.b02;
             if (i2) printf("**(08)** OK i2=%.4x\n",i2);
             else    printf("**(08)** NG i2=%.4x\n",i2);
  i2=x.b03;
             if (i2) printf("**(09)** OK i2=%.4x\n",i2);
             else    printf("**(09)** NG i2=%.4x\n",i2);
  i2=x.b04;
             if (i2) printf("**(10)** OK i2=%.4x\n",i2);
             else    printf("**(10)** NG i2=%.4x\n",i2);
  i2=x.b05;  
             if (i2) printf("**(11)** OK i2=%.4x\n",i2);
             else    printf("**(11)** NG i2=%.4x\n",i2);
  i2=x.b06; 
             if (i2) printf("**(12)** OK i2=%.4x\n",i2);
             else    printf("**(12)** NG i2=%.4x\n",i2);
  i2=x.b07; 
             if (i2) printf("*(03)** OK i2=%.1x\n",i2);
             else    printf("*(03)** NG i2=%.1x\n",i2);
  i2=x.b08; 
             if (i2) printf("*(04)** OK i2=%.1x\n",i2);
             else    printf("*(04)** NG i2=%.1x\n",i2);
  i4=x.b01;  
             if (i4) printf("**(13)** OK\n");
             else    printf("**(13)** NG i4=%.8x\n",i4);
  i4=x.b02;
             if (i4) printf("**(14)** OK i4=%.8x\n",i4);
             else    printf("**(14)** NG i4=%.8x\n",i4);
  i4=x.b03;
             if (i4) printf("**(15)** OK i4=%.8x\n",i4);
             else    printf("**(15)** NG i4=%.8x\n",i4);
  i4=x.b04;
             if (i4) printf("**(16)** OK i4=%.8x\n",i4);
             else    printf("**(16)** NG i4=%.8x\n",i4);
  i4=x.b05; 
             if (i4) printf("**(17)** OK i4=%.8x\n",i4);
             else    printf("**(17)** NG i4=%.8x\n",i4);
  i4=x.b06;  
             if (i4) printf("**(18)** OK i4=%.8x\n",i4);
             else    printf("**(18)** NG i4=%.8x\n",i4);
  i4=x.b07; 
             if (i4) printf("*(05)** OK i4=%.1x\n",i4);
             else    printf("*(05)** NG i4=%.1x\n",i4);
  i4=x.b08; 
             if (i4) printf("*(06)** OK i4=%.1x\n",i4);
             else    printf("*(06)** NG i4=%.1x\n",i4);
  i8=x.b01;  
#if _WIN32
             if (i8) printf("*(07)** OK\n");
             else    printf("*(07)** NG i8=%x,%x\n",
                     *(((int *)&i8)+1),*(int *)&i8);
#else
             if (i8) printf("*(07)** OK\n");
             else    printf("*(07)** NG i8=%x,%x\n",
                     *(int *)&i8,*(((int *)&i8)+1));
#endif
#if defined(INT64) 
#define int __int32
#endif
#if _WIN32 || __x86_64__ || i386 || __aarch64__
  i8=x.b02;
             if (i8) printf("*(08)** OK i8=%x,%x\n",
                     *(((int *)&i8)+1),*(int *)&i8);
             else    printf("*(08)** NG i8=%x,%x\n",
                     *(((int *)&i8)+1),*(int *)&i8);
  i8=x.b03;
             if (i8) printf("*(09)** OK i8=%x,%x\n",
                     *(((int *)&i8)+1),*(int *)&i8);
             else    printf("*(09)** NG i8=%x,%x\n",
                     *(((int *)&i8)+1),*(int *)&i8);
  i8=x.b04;
             if (i8) printf("*(10)** OK i8=%x,%x\n",
                     *(((int *)&i8)+1),*(int *)&i8);
             else    printf("*(10)** NG i8=%x,%x\n",
                     *(((int *)&i8)+1),*(int *)&i8);
  i8=x.b05; 
             if (i8) printf("*(11)** OK i8=%x,%x\n",
                     *(((int *)&i8)+1),*(int *)&i8);
             else    printf("*(11)** NG i8=%x,%x\n",
                     *(((int *)&i8)+1),*(int *)&i8);
  i8=x.b06;  
             if (i8) printf("*(12)** OK i8=%x,%x\n",
                     *(((int *)&i8)+1),*(int *)&i8);
             else    printf("*(12)** NG i8=%x,%x\n",
                     *(((int *)&i8)+1),*(int *)&i8);
#else
  i8=x.b02;
             if (i8) printf("*(08)** OK i8=%x,%x\n",
                     *(int *)&i8,*(((int *)&i8)+1));
             else    printf("*(08)** NG i8=%x,%x\n",
                     *(int *)&i8,*(((int *)&i8)+1));
  i8=x.b03;
             if (i8) printf("*(09)** OK i8=%x,%x\n",
                     *(int *)&i8,*(((int *)&i8)+1));
             else    printf("*(09)** NG i8=%x,%x\n",
                     *(int *)&i8,*(((int *)&i8)+1));
  i8=x.b04;
             if (i8) printf("*(10)** OK i8=%x,%x\n",
                     *(int *)&i8,*(((int *)&i8)+1));
             else    printf("*(10)** NG i8=%x,%x\n",
                     *(int *)&i8,*(((int *)&i8)+1));
  i8=x.b05; 
             if (i8) printf("*(11)** OK i8=%x,%x\n",
                     *(int *)&i8,*(((int *)&i8)+1));
             else    printf("*(11)** NG i8=%x,%x\n",
                     *(int *)&i8,*(((int *)&i8)+1));
  i8=x.b06;  
             if (i8) printf("*(12)** OK i8=%x,%x\n",
                     *(int *)&i8,*(((int *)&i8)+1));
             else    printf("*(12)** NG i8=%x,%x\n",
                     *(int *)&i8,*(((int *)&i8)+1));
#endif
  
             y.b01=y.b02=y.b05=y.b06=y.b07=0;
             y.b03=y.b04=y.b08=1;
  i1=y.b01;  
             if (i1) printf("**(19)** NG i1=%.1x\n",i1);
             else    printf("**(19)** OK i1=%.1x\n",i1);
  i1=y.b02;  
             if (i1) printf("**(20)** NG i1=%.1x\n",i1);
             else    printf("**(20)** OK i1=%.1x\n",i1);
  i2=y.b03; 
             if (i2) printf("**(21)** OK i2=%.4x\n",i2);
             else    printf("**(21)** NG i2=%.4x\n",i2);
  i2=y.b04;  
             if (i2) printf("**(22)** OK i2=%.4x\n",i2);
             else    printf("**(22)** NG i2=%.4x\n",i2);
  i4=y.b05; 
             if (i4) printf("**(23)** NG i4=%.8x\n",i4);
             else    printf("**(23)** OK i4=%.8x\n",i4);
  i4=y.b06;  
             if (i4) printf("**(24)** NG i4=%.8x\n",i4);
             else    printf("**(24)** OK i4=%.8x\n",i4);
  i8=y.b07;  
#if _WIN32
             if (i8) printf("*(13)** NG i8=%x,%x\n",
                     *(((int *)&i8)+1),*(int *)&i8);
             else    printf("*(13)** OK i8=%x,%x\n",
                     *(((int *)&i8)+1),*(int *)&i8);
#else
             if (i8) printf("*(13)** NG i8=%x,%x\n",
                     *(int *)&i8,*(((int *)&i8)+1));
             else    printf("*(13)** OK i8=%x,%x\n",
                     *(int *)&i8,*(((int *)&i8)+1));
#endif
  i8=y.b08;  
#if _WIN32 || __x86_64__ || i386 || __aarch64__
             if (i8) printf("*(14)** OK i8=%x,%x\n",
                     *(((int *)&i8)+1),*(int *)&i8);
             else    printf("*(14)** NG i8=%x,%x\n",
                     *(((int *)&i8)+1),*(int *)&i8);
#else
             if (i8) printf("*(14)** OK i8=%x,%x\n",
                     *(int *)&i8,*(((int *)&i8)+1));
             else    printf("*(14)** NG i8=%x,%x\n",
                     *(int *)&i8,*(((int *)&i8)+1));
#endif
}