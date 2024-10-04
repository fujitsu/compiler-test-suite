#include <stdio.h>
int func15(int a);
int main()
{
void func1(void)                              ; 
char func2(char)                              ; 
short int func3(short int)                    ; 
int func4(int)                                ; 
long int func5(long int)                      ; 
long long int func6(long long int)            ; 
unsigned char func7(unsigned char)            ; 
unsigned short int func8(unsigned short int)  ; 
unsigned int func9(unsigned int)              ; 
unsigned long int func10(unsigned long int)   ; 
unsigned long long int func11(unsigned long long int);
float func12(float)                           ; 
double func13(double)                         ; 
long double func14(long double)               ; 
void * func16(int *)                 ; 
int **func17(int**)                  ; 
long int * func18(long int *)        ; 
unsigned char * func19(unsigned char*); 
double *func20(double *)             ; 

  printf("START\n") ;
  {
    func1() ;
  }
  {
    char a=0;
    if (func2(a)!=0)
      printf("FUNC2 NG\n");
  }
  {
    short int a=0;
    if (func3(a)!=0)
      printf("FUNC3 NG\n");
  }
  {
    int       a=0;
    if (func4(a)!=0)
      printf("FUNC4 NG\n");
  }
  {
    long int  a=0;
    if (func5(a)!=0)
      printf("FUNC5 NG\n");
  }
  {
    long long int a=0;
    if (func6(a)!=0)
      printf("FUNC6 NG\n");
  }
  {
    unsigned char a=255;
    if (func7(a)!=255)
      printf("FUNC7 NG\n");
  }
  {
    unsigned short int a=65535;
    if (func8(a)!=65535)
      printf("FUNC8 NG\n");
  }
  {
    unsigned int a=4294967295;
    if (func9(a)!=4294967295)
      printf("FUNC9 NG\n");
  }
  {
    unsigned long int a=4294967295;
    if (func10(a)!=4294967295)
      printf("FUNC10 NG\n");
  }
  {
    unsigned long long int a=18446744073709551615LL;
    if (func11(a)!=18446744073709551615LL)
      printf("FUNC11 NG\n");
  }
  {
    float a=0.0 ;
    if (func12(a)!=0.0)
      printf("FUNC12 NG\n");
  }
  {
    double a=0.0;
    if (func13(a)!=0.0)
      printf("FUNC13 NG\n");
  }
  {
    long double a=0.0;
    if (func14(a)!=0.0)
      printf("FUNC14 NG\n");
  }
  {
    int a=0;
    if (func15(a)!=0)
      printf("FUNC15 NG\n");
  }
  {
    int *a=0  ;
    if (func16(a)!=0)
      printf("FUNC16 NG\n");
    if ((char *)func16(a)!=0)
      printf("FUNC16 NG\n");
    if ((long *)func16(a)!=0)
      printf("FUNC16 NG\n");
    if ((float *)func16(a)!=0)
      printf("FUNC16 NG\n");
  }
  {
    int    ** a=0;
    if (func17(a)!=0)
      printf("FUNC17 NG\n");
  }
  {
    long int* a=0;
    if (func18(a)!=0)
      printf("FUNC18 NG\n");
  }
  {
    unsigned char*a=0;
    if (func19(a)!=0)
      printf("FUNC19 NG\n");
  }
  {
    double *a=0 ;
    if (func20(a)!=0)
      printf("FUNC20 NG\n");
  }

  printf("NORMAL END\n");
}
void 
func1 (void)
{
  int a;
  a=0;
  if (a!=0)
    printf("FUNC1 NG\n");
}
char func2(char a)
{
  return a ;
}
short int func3(short int a)
{
  return a;
}
int func4(int a)
{
  return a;
}
long int func5(long int a)
{
  return a;
}
long long int func6(long long int a)
{
  return a;
}
unsigned char func7(unsigned char a)
{
  return a ;
}
unsigned short int func8(unsigned short int a)
{
  return a;
}
unsigned int func9(unsigned int a)
{
  return a;
}
unsigned long int func10(unsigned long int a)
{
  return a;
}
unsigned long long int func11(unsigned long long int a)
{
  return a;
}
float func12(float a)
{
  return a;
}
double func13(double a)
{
  return a;
}
long double func14(long double a)
{
  return a;
}
int func15(int a)
{
  return a;
}
void *func16(int  *a)
{
  return (void *)a;
}
int **func17(int **a)
{
  return a;
}
long int *func18(long int *a)
{
  return a;
}
unsigned char *func19(unsigned char *a)
{
  return a ;
}
double *func20(double * a)
{
  return a;
}
