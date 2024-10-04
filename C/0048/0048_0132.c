#include <stdio.h>
int func15 (int a);
int main()
{
void func1(int a)                    ; 
char func2 (char a)                  ; 
short int func3(short int a)         ; 
int func4(int a)                     ; 
long int func5(long int a)           ; 
long long int func6(long long int a) ; 
signed char func7(signed char a)     ; 
signed short int func8(signed short int a); 
signed int func9(signed int a)       ; 
signed long int func10(long int a)   ; 
signed long long int func11(signed long long int a); 
float func12(float a)                ; 
double func13(double a)              ; 
long double func14(long double a)    ; 
void * func16(int *a)                ; 
char **func17(char **a)              ; 
short int **func18(short int **a)    ; 
int **func19(int **a)                ; 
long int * func20(long int *a)       ; 
long long int * func21(long long int *a); 
signed char * func22(signed char *a) ; 
signed short int * func23(signed short int *a); 
signed int * func24(signed int *a)   ; 
signed long int * func25(signed long int *a); 
signed long long int * func26(signed long long int *a) ; 
float * func27(float *a)             ; 
double * func28(double *a)           ; 
long double * func29(long double *a) ; 

  printf("START\n") ;
  {
    int  a=0;
    func1(a);
  }
  {
    char a=127;
    if (func2(a)!=127)
      printf("FUNC2 NG\n");
  }
  {
    short int a=-32768;
    if (func3(a)!=-32768)
      printf("FUNC3 NG\n");
  }
  {
    int       a=-2147483648;
    if (func4(a)!=-2147483648)
      printf("FUNC4 NG\n");
  }
  {
    long int  a=-2147483648;
    if (func5(a)!=-2147483648)
      printf("FUNC5 NG\n");
  }
  {
    long long int a=-9223372036854775808LL;
    if (func6(a)!=-9223372036854775808LL)
      printf("FUNC6 NG\n");
  }
  {
    signed char a=-128;
    if (func7(a)!=-128)
      printf("FUNC7 NG\n");
  }
  {
    signed short int a=-32768;
    if (func8(a)!=-32768)
      printf("FUNC8 NG\n");
  }
  {
    signed int a=-2147483648;
    if (func9(a)!=-2147483648)
      printf("FUNC9 NG\n");
  }
  {
    signed long int a=-2147483648;
    if (func10(a)!=-2147483648)
      printf("FUNC10 NG\n");
  }
  {
    signed long long int a=-9223372036854775808LL;
    if (func11(a)!=-9223372036854775808LL)
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
    char *a=0 ;
    if (func17(a)!=0)
      printf("FUNC17 NG\n");
  }
  {
    short int**a=0;
    if (func18(a)!=0)
      printf("FUNC18 NG\n");
  }
  {
    int    ** a=0;
    if (func19(a)!=0)
      printf("FUNC19 NG\n");
  }
  {
    long int* a=0;
    if (func20(a)!=0)
      printf("FUNC20 NG\n");
  }
  {
    long long int*a=0;
    if (func21(a)!=0)
      printf("FUNC21 NG\n");
  }
  {
    signed char*a=0;
    if (func22(a)!=0)
      printf("FUNC22 NG\n");
  }
  {
    signed short int*a=0;
    if (func23(a)!=0)
      printf("FUNC23 NG\n");
  }
  {
    signed int*a=0;
    if (func24(a)!=0)
      printf("FUNC24 NG\n");
  }
  {
    signed long int*a=0;
    if (func25(a)!=0)
      printf("FUNC25 NG\n");
  }
  {
    signed long long int*a=0;
    if (func26(a)!=0)
      printf("FUNC26 NG\n");
  }
  {
    float*a=0   ;
    if (func27(a)!=0)
      printf("FUNC27 NG\n");
  }
  {
    double *a=0;
    if (func28(a)!=0)
      printf("FUNC28 NG\n");
  }
  {
    long double *a=0;
    if (func29(a)!=0)
      printf("FUNC29 NG\n");
  }

  printf("NORMAL END\n");
}
void 
func1 (int a)
{
  if (a!=0)
    printf("FUNC1 NG\n");
}
char 
func2 (char a)
{
  return a ;
}
short int 
func3 (short int a)
{
  return a;
}
int 
func4 (int a)
{
  return a;
}
long int 
func5 (long int a)
{
  return a;
}
long long int 
func6 (long long int a)
{
  return a;
}
signed char 
func7 (signed char a)
{
  return a ;
}
signed short int 
func8 (signed short int a)
{
  return a;
}
signed int 
func9 (signed int a)
{
  return a;
}
signed long int 
func10 (long int a)
{
  return a;
}
signed long long int 
func11 (signed long long int a)
{
  return a;
}
float 
func12 (float a)
{
  return a;
}
double 
func13 (double a)
{
  return a;
}
long double 
func14 (long double a)
{
  return a;
}
int 
func15 (int a)
{
  return a;
}
void *
func16 (int *a)
{
  void * b;
  b = (void *)a;
  return b;
}
char **
func17 (char **a)
{
  return a ;
}
short int **
func18 (short int **a)
{
  return   a;
}
int **
func19 (int **a)
{
  return a;
}
long int *
func20 (long int *a)
{
  return a;
}
long long int *
func21 (long long int *a)
{
  return a;
}
signed char *
func22 (signed char *a)
{
  return a ;
}
signed short int *
func23 (signed short int *a)
{
  return a;
}
signed int *
func24 (signed int *a)
{
  return a;
}
signed long int *
func25 (signed long int *a)
{
  return a;
}
signed long long int *
func26 (signed long long int *a)
{
  return a;
}
float *
func27 (float *a)
{
  return a;
}
double *
func28 (double *a)
{
  return a;
}
long double *
func29 (long double *a)
{
  return a;
}
