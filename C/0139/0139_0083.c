#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func6();
int func5();
int func4();
int func3();
int func2();
int func1();
  
 
 
 
 
 
 
 
 
 
 
 
 

int main()
{
  printf("\n") ;
    func1();                    
    func2();                    
    func3();                    
    func4();                    
    func5();                    
    func6();                    
  printf("\n");
exit (0);
}
 
  static struct ta1 { int a;} a1={1};
  static struct ta2 { int a;} a2={1};
  static struct ta3 { int a;} a3={1};
  static struct ta4 { int a;} a4={1};
  static struct ta5 { int a;} a5={1};
  static struct ta6 { int a;} a6={1};
  static struct ta7 { int a;} a7={1};

  static struct ta1             a1      ;   
  extern struct ta2             a2      ;   
int func1()
{
    static struct ta3{ int a;} a3={1};   
    static struct ta4{ int a;} a4      ;   
    extern struct ta5            a5      ;   
           struct ta6{ int a;} a6={1};   
           struct ta8{ int a;} a8={1};   
}
 
  static struct tb1{ int a;} b1      ;
  static struct tb2{ int a;} b2      ;
  static struct tb3{ int a;} b3      ;
  static struct tb4{ int a;} b4      ;
  static struct tb5{ int a;} b5      ;
  static struct tb6{ int a;} b6      ;
  static struct tb7{ int a;} b7      ;
  static struct tb8{ int a;} b8      ;
  static struct tb9{ int a;} b9      ;
  static struct tbx{ int a;} bx      ;

  static struct tbx            bx={0};  
  static struct tb1            b1      ;  
  extern struct tb2            b2={0};  
  extern struct tb3            b3      ;  
int func2()
{
  static struct tb4{ int a;} b4={0};  
  static struct tb5{ int a;} b5      ;  
  extern struct tb7            b7      ;  
         struct tb8{ int a;} b8={0};  
         struct tb9{ int a;} b9      ;  
}
 
  extern struct tc3{ int a;} c3={1};
  extern struct tc4{ int a;} c4={1};
  extern struct tc5{ int a;} c5={1};
  extern struct tc6{ int a;} c6={1};
  extern struct tc7{ int a;} c7={1};
  extern struct tc8{ int a;} c8={1};
  extern struct tc9{ int a;} c9={1};

  extern struct tc8            c8      ;   
         struct tc9            c9      ;   
int func3()
{
  static struct tc3{ int a;} c3={1};   
  static struct tc4{ int a;} c4      ;   
  extern struct tc5            c5      ;   
         struct tc6{ int a;} c6      ;   
         struct tc7{ int a;} c7      ;   
}
 
  extern struct td1{ int a;} d1   ;
  extern struct td2{ int a;} d2   ;
  extern struct td3{ int a;} d3   ;
  extern struct td4{ int a;} d4   ;
  extern struct td5{ int a;} d5   ;
  extern struct td7{ int a;} d7   ;
  extern struct td8{ int a;} d8   ;
  extern struct td9{ int a;} d9   ;
  extern struct tdx{ int a;} dx   ;

  extern struct tdx            dx={0}; 
  extern struct td1            d1   ;    
         struct td2            d2={1}; 
         struct td3            d3   ;    
int func4()
{
  static struct td4{ int a;} d4={1}; 
  static struct td5{ int a;} d5      ; 
  extern struct td7            d7      ; 
         struct td8{ int a;} d8={1}; 
         struct td9{ int a;} d9={1}; 
}
 
  struct te1{ int a;} e1={1};
  struct te2{ int a;} e2={1};
  struct te3{ int a;} e3={1};
  struct te4{ int a;} e4={1};
  struct te5{ int a;} e5={1};
  struct te6{ int a;} e6={1};
  struct tex{ int a;} ex={1};

  struct te1            e1      ;       
  extern struct tex     ex      ;       
int func5()
{
  struct te2{ int a;} e2={1};       
  struct te3{ int a;} e3      ;       
  extern struct te4            e4;      
         struct te5{ int a;} e5={1}; 
         struct te6{ int a;} e6      ; 
}
 
  struct tf1{ int a;} f1      ;
  struct tf2{ int a;} f2      ;
  struct tf3{ int a;} f3      ;
  struct tf5{ int a;} f5      ;
  struct tf6{ int a;} f6      ;
  struct tf7{ int a;} f7      ;
  struct tf8{ int a;} f8      ;
  struct tf9{ int a;} f9      ;

  struct tf1            f1      ;     
  struct tf7            f7={0};     
  extern struct tf8            f8      ;
  extern struct tf9            f9={0};
int func6()
{
  static struct tf2{int a;}f2={1};  
  static struct tf3{int a;}f3      ;  
  extern struct tf5          f5      ;  
         struct tf6{int a;}f6={1};  
         struct tf7{int a;}f7      ;  
}
