#include <stdio.h>
int func6 (void);
int func5 (void);
int func4 (void);
int func3 (void);
int func2 (void);
int func1 (void);
int main()
{
  printf("START\n") ;
    func1();                   
    func2();                   
    func3();                   
    func4();                   
    func5();                   
    func6();                   
  printf("NORMAL END\n");
}
  static int a1=1                ;
  static int a2=1                ;
  static int a3=1                ;
  static int a4=1                ;
  static int a5=1                ;
  static int a6=1                ;
  static int a7=1                ;

  static int a1                  ;  
  extern int a2                  ;  
int 
func1 (void)
{
    static int a3=1            ;  
    static int a4              ;  
    extern int a5              ;  
    int a6=1                   ;  
    int a7                     ;  
}
  static int b1                  ;  
  static int b2                  ;  
  static int b3                  ;  
  static int b4                  ;  
  static int b5                  ;  
  static int b7                  ;  
  static int b8                  ;  
  static int b9                  ;  
  static int bx                  ;  

  static int b1                  ;  
  extern int b2=1                ;  
  extern int b3                  ;  
  static int bx=1                ;  
int 
func2 (void)
{
    static int b4=1            ;  
    static int b5              ;  
    extern int b7              ;  
    int b8=1                   ;  
    int b9                     ;  
}
  extern int c1=1                ;  
  extern int c2=1                ;  
  extern int c3=1                ;  
  extern int c4=1                ;  
  extern int c5=1                ;  
  extern int c6=1                ;  
  extern int c7=1                ;  

  extern int c1                  ;  
         int c2                  ;  
int 
func3 (void)
{
    static int c3=1            ;  
    static int c4              ;  
    extern int c5              ;  
    int c6=1                   ;  
    int c7                     ;  
}
  extern int d1                  ;  
  extern int d2                  ;  
  extern int d3                  ;  
  extern int d4                  ;  
  extern int d5                  ;  
  extern int d7                  ;  
  extern int d8                  ;  
  extern int d9                  ;  
  extern int dx                  ;  

  extern int d1                  ;  
         int d2=1                ;  
         int d3                  ;  
  extern int dx=1                ;  
int 
func4 (void)
{
    static int d4=1            ;  
    static int d5              ;  
    extern int d7              ;  
    int d8=1                   ;  
    int d9                     ;  
}
  int e1 =1                      ;  
  int e2 =1                      ;  
  int e3 =1                      ;  
  int e4 =1                      ;  
  int e5 =1                      ;  
  int e6 =1                      ;  
  int e7 =1                      ;  

         int e1                  ;  
  extern int e7                  ;  
int 
func5 (void)
{
    static int e2=1            ;  
    static int e3              ;  
    extern int e4              ;  
    int e5=1                   ;  
    int e6                     ;  
}
  int f1                         ;  
  int f2                         ;  
  int f3                         ;  
  int f5                         ;  
  int f6                         ;  
  int f7                         ;  
  int f8                         ;  
  int f9                         ;  

         int f1                  ;  
         int f7=1                ;  
  extern int f8=1                ;  
  extern int f9                  ;  
int 
func6 (void)
{
    static int f2=1            ;  
    static int f3              ;  
    extern int f5              ;  
    int f6=1                   ;  
    int f7                     ;  
}
