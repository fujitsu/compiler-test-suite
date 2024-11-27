#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 

 
 
 

int labd10(){return 0;}
int stm7(){return 0;}
int main()
{
    struct labd1  {                
      int labd2;                    
    } labd3;                       
    union  labd4  {                
      int labd5;                    
    } labd6;                       
    enum   labd7  {                
          labd8                     
    } labd9;                       
    labd10();                       

  labd1:;
  labd2:;
  labd3:;
  labd4:;
  labd5:;
  labd6:;
  labd7:;
  labd8:;
  labd9:;
  labd10:;
  printf("\n");
exit (0);
}
 
 
 
int func1()
{
  struct std1 { int std1; };      
  struct std2 { int a;  } std2;   
  struct std3 { int b;  };
    union { int std3; }un3;       
  struct std4 { int c;  };
    union { int d; } std4;        
  struct std5 { int e;};
    enum  { std5 };               
  struct std6 { int f;};
    enum  {x     } std6;          
  struct std7 { int g;};
  int std7 ;                      
  return 0;
}
 
 
 
int func2()
{
  union  und1 { int und1; };      
  union  und2 { int a;  } und2;   
  union  und3 { int b;  };
    struct{ int und3; } un3;      
  union  und4 { int c;  };
    struct{ int d; } und4;        
  union  und5 { int e;};
    enum  { und5 };               
  union  und6 { int f;};
    enum  { x    } und6;          
  union  und7 { int g;};
  int und7[10];                 
  return 0;
}
 
 
 
int func3()
{
  enum   emd1 {   emd1    };      
  enum   emd2 {   a     } emd2;   
  enum   emd3 {   b     };
    struct{ int emd3; } st3;      
  enum   emd4 {   c     };
    struct{ int d; } emd4;        
  enum   emd5 {   e   };
    union { int emd5;} un5;       
  enum   emd6 {   f   };
    union { int g ; } emd6;       
  enum   emd7 {   h   };
  int  *emd7;                     
  return 0;
}
 
 
 
int func4()
{
  struct { int stm1; } stm11;
    struct { int stm1; } stm12;   
  struct { int stm2; } stm21;
    union { int stm2; } stm22;    
  struct { int stm3; } stm31;
    enum  { stm3 } stm32;         
  struct { int stm4; } stm41;
    struct {int stm; } stm4;      
  struct { int stm5; } stm51;
    union  {int a;   } stm5 ;     
  struct { int stm6; } stm61;
    enum   {    b    } stm6;      
  struct { int stm7; } st7;
  stm7();                         
  return 0;
}
 
 
 
int func5()
{
  union  { int unm1; } unm11;
    union  { int unm1; } unm12;   
  union  { int unm2; } unm21;
    enum  { unm2 } unm22;         
  union  { int unm3; } unm31;
    struct {int  a  ;} unm3;      
  union  { int unm4; } unm41;
    union  {int b;   } unm4;      
  union  { int unm5; } unm51;
    enum   {    c    } unm5;      
  union  { int unm6; } unm61;
  int  unm6;                      
  return 0;
}
