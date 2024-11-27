#include <stdio.h>
int sub16(long   double b, unsigned long long int c, long   double d, unsigned long long int e, long   double f);
int sub15(double b, unsigned long long int c, double d, unsigned long long int e, double f);
int sub14(float b, unsigned long long int c, float d, unsigned long long int e, float f);
int sub13(char b, unsigned long long int c, char d, unsigned long long int e, char f);
int sub12(short b, unsigned long long int c, short d, unsigned long long int e, short f);
int sub11(int b, unsigned long long int c, int d, unsigned long long int e, int f);
int sub6(long   double b, long long int c, long   double d, long long int e, long   double f);
int sub5(double b, long long int c, double d, long long int e, double f);
int sub4(float b, long long int c, float d, long long int e, float f);
int sub3(char b, long long int c, char d, long long int e, char f);
int sub2(short b, long long int c, short d, long long int e, short f);
int sub1(int b, long long int c, int d, long long int e, int f);
int main( ) {
long long int          i8b,i8c;
unsigned long long int u8b,u8c;
int                    i4a,i4b,i4c;
unsigned int           u4a,u4b,u4c;
         short         i2a,i2b,i2c;
unsigned short         u2a,u2b,u2c;
         char          i1a,i1b,i1c;
unsigned char          u1a,u1b,u1c;
float                  r4a,r4b,r4c;
double                 r8a,r8b,r8c;
long double            r16a,r16b,r16c;
int i;

i8b=i8c=i4a=i4b=i4c=10;  
if ((i=sub1(i4a,i8b,i4b,i8c,i4c))==50) 
                                       printf("(1) ok\n");
else                                   printf("(1) ng %d\n",i);
i8b=i8c=i2a=i2b=i2c=10;  
if ((i=sub2(i2a,i8b,i2b,i8c,i2c))==50) 
                                       printf("(2) ok\n");
else                                   printf("(2) ng %d\n",i);
i8b=i8c=i1a=i1b=i1c=10;  
if ((i=sub3(i1a,i8b,i1b,i8c,i1c))==50) 
                                       printf("(3) ok\n");
else                                   printf("(3) ng %d\n",i);
i8b=i8c=10;
r4a=r4b=r4c=10.0f;  
if ((i=sub4(r4a,i8b,r4b,i8c,r4c))==50) 
                                       printf("(4) ok\n");
else                                   printf("(4) ng %d\n",i);
r8a=r8b=r8c=10.0;  
if ((i=sub5(r8a,i8b,r8b,i8c,r8c))==50) 
                                       printf("(5) ok\n");
else                                   printf("(5) ng %d\n",i);
r16a=r16b=r16c=10.0l;  
if ((i=sub6(r16a,i8b,r16b,i8c,r16c))==50) 
                                       printf("(6) ok\n");
else                                   printf("(6) ng %d\n",i);
u8b=u8c=i4a=i4b=i4c=10;  
if ((i=sub11(i4a,u8b,i4b,u8c,i4c))==50) 
                                       printf("(7) ok\n");
else                                   printf("(7) ng %d\n",i);
u8b=u8c=i2a=i2b=i2c=10;  
if ((i=sub12(i2a,u8b,i2b,u8c,i2c))==50) 
                                       printf("(8) ok\n");
else                                   printf("(8) ng %d\n",i);
u8b=u8c=i1a=i1b=i1c=10;  
if ((i=sub13(i1a,u8b,i1b,u8c,i1c))==50) 
                                       printf("(9) ok\n");
else                                   printf("(9) ng %d\n",i);
u8b=u8c=10;
r4a=r4b=r4c=10.0f;  
if ((i=sub14(r4a,u8b,r4b,u8c,r4c))==50) 
                                       printf("(10) ok\n");
else                                   printf("(10) ng %d\n",i);
r8a=r8b=r8c=10.0;  
if ((i=sub15(r8a,u8b,r8b,u8c,r8c))==50) 
                                       printf("(11) ok\n");
else                                   printf("(11) ng %d\n",i);
r16a=r16b=r16c=10.0l;  
if ((i=sub16(r16a,u8b,r16b,u8c,r16c))==50) 
                                       printf("(12) ok\n");
else                                   printf("(12) ng %d\n",i);
}
int sub1(b,c,d,e,f)
                     long long int c,e;
                               int b,d,f;
{ return(b+c+d+e+f); }
int sub2(b,c,d,e,f)
                     long long int c,e;
                               short b,d,f;
{ return(b+c+d+e+f); }
int sub3(b,c,d,e,f)
                     long long int c,e;
                               char b,d,f;
{ return(b+c+d+e+f); }
int sub4(b,c,d,e,f)
                     long long int c,e;
                               float b,d,f;
{ return(b+c+d+e+f); }
int sub5(b,c,d,e,f)
                     long long int c,e;
                               double b,d,f;
{ return(b+c+d+e+f); }
int sub6(b,c,d,e,f)
                     long long int c,e;
                     long   double b,d,f;
{ return(b+c+d+e+f); }
int sub11(b,c,d,e,f)
                     unsigned long long int c,e;
                               int b,d,f;
{ return(b+c+d+e+f); }
int sub12(b,c,d,e,f)
                     unsigned long long int c,e;
                               short b,d,f;
{ return(b+c+d+e+f); }
int sub13(b,c,d,e,f)
                     unsigned long long int c,e;
                               char b,d,f;
{ return(b+c+d+e+f); }
int sub14(b,c,d,e,f)
                     unsigned long long int c,e;
                               float b,d,f;
{ return(b+c+d+e+f); }
int sub15(b,c,d,e,f)
                     unsigned long long int c,e;
                               double b,d,f;
{ return(b+c+d+e+f); }
int sub16(b,c,d,e,f)
                     unsigned long long int c,e;
                     long   double b,d,f;
{ return(b+c+d+e+f); }
