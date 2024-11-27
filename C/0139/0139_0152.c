#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func10();
int func9();
int func8();
int func7();
int func6();
int func5();
int func4();
int func3();
int func2();
int func1();
  
 
 
 
 
 
 
 
 
 
 

int main()
{
  func1();
  func2();
  func3();
  func4();
  func5();
  func6();
  func7();
  func8();
  func9();
  func10();
  printf("\n");
exit (0);
}
 
int func1()
{
  int a=1,b=1;
  int x=0,y=0;
                                 
  if (a)                         
    ++x;

  if (a=1)                       
  {                             
    ++x;
  }

  if (a>0)                       
  {
    y=1;                         
    ++x;
  }

  if (a!=1)                      
  {
    x=-1;                        
  }
  else
    ++x;

  if (!(a=1))
  {
    x=-1;                        
  }
  else
    ++x;

  if (!(a && b))                 
    x=-1;
  else
  {
    y=1;                         
    ++x;
  }

  if (a || b)
  {
    y=1;                         
    ++x;
  }                             
  else
  {
    x=-1;
    y=1;
  }

  if (!a)
  {
    x=-1;                        
    y=1;
  }                             
  else
  {
    ++x;
    y=1;
  }

  if(x!=8)
    printf("\n");
}

 
int func2()
{
  int a=1,b=1,c=1;
  int x=0,y=0,z=0;

  if (!a)
    x=-1;
  else if (b)                    
    ++x;

  if (!a)
    x=-1;
  else if (b==1)                 
  {
    ++x;
  }

  if (!a)
    x=-1;
  else if (b!=0)                 
  {
    ++x;
    y=1;
  }

  if (!a)
    y=1;
  else if (b<0)                  
    y=1;
  else                           
    ++x;

  if (!a)
    y=1;
  else if (!b)                   
    y=1;
  else                           
  {
    ++x;
    y=1;
  }

  if(x!=5)
    printf("\n");
}

 
int func3()
{
  int a=1,b=1;                  
  if (a)
   {
   }
  else
   {
   }
}

 
int func4()
{
  int a=1,b=1,c=1;              
  int x=0;
  if (a)
    if (b)
      ++x;

  if (a)
  {
    if (!b)
      x=-1;
    else
      ++x;
  }

  if (!a)
  {
    if (!b)
      x=-1;
  }
  else
    ++x;

  if (a)
  {
    if (!b)
      x=-1;
    else if(c)
      ++x;
  }

  if (a)
    if (!b)
      x=-1;
    else if(c)
      if (b)
        ++x;

  if (!a)
      x=-1;
  else if(!b)
      x=-1;
  else
  {
    if (!c)
      x=-1;
    else
      ++x;
  }

  if (a)
    if(!b)
      x=-1;
    else
      ++x;                               

  if(x!=7)
    printf("\n");
}

 
int func5()
{
  int a=1,b=1;                  
  int x=0,y;
  if (a)
  {
    y=1;
    {
      ++y;
      ++x;
    }
  }
  if (!a)
  {
    y=1;
  }
  else
  {
    y=1;
    {
      y=y+1;
      ++x;
    }
  }

  if(x!=2)
    printf("\n");
}

 
int func6()
{
  int a=1;                      
  if (a) ;
}

 
int func7()
{
  int a=1,b=1;                  
  int x=0,y;
  if (a)
  {
    switch(b)
    {
     case 1: ++x;
     default:++x;
    }
  }

  if (!a)
   ;
  else if(b)                   
  {
    for(y=1;y<3;++y)
    {
     ++x;
     if (y==2)
       break;
    }
    while(y<3)
    {
     ++y;
     ++x;
    }
    do
     ++x;
    while(0) ;
  }

  if (!a)
   ;
  else
    goto lab;               
lab:;
  if (!a)
   ;
  else if (b)
   ;
  else
    ellab:++x;              

  if(x!=6)
    printf("\n");
}

 
 
 
int func8()
{
  int a=1,b=1,c=1,d=1,e=1;
  int f=1,g=1,h=1,i=1,j=1;
  int k=1,l=1,m=1,n=1,o=1;
  int p=1;
  int x=0;
  if (a) if(b) if(c) if(d) if(e)
    if (f) if(g) if(h) if(i) if(j)
      if (k) if(l) if(m) if(n) if(o)
        ++x;
  if (!a);
  else if(b) if(c) if(d) if(e) if(f)
    if(g) if(h) if(i) if(j) if(k)
      if(l) if(m) if(n) if(o) if(p)
        ++x;
  if (x!=2)
    printf("\n");
  printf("\n");
}
 
int func9()                     
{
  int a1=1;                       
  signed int a2=1;
  unsigned int a3=1;
  short int b1=1;                 
  signed short int b2=1;
  unsigned short int b3=1;
  long int c1=1;                  
  signed long int c2=1;
  unsigned long int c3=1;
#ifndef nollint
  long long int d1=1;             
  signed long long int d2=1;
  unsigned long long int d3=1;
#endif
  char e1=1;                      
  signed char e2=1;
  unsigned char e3=1;
  float f=1.0;                    
  double g=1.0;                   
  long double h=1.0;              
  int *i=(int *)1;                

  int x=0;

  if (a1) ++x;
  if (a2) ++x;
  if (a3) ++x;
  if (b1) ++x;
  if (b2) ++x;
  if (b3) ++x;
  if (c1) ++x;
  if (c2) ++x;
  if (c3) ++x;
#ifndef nollint
  if (d1) ++x;
  if (d2) ++x;
  if (d3) ++x;
#else
  x+=3;
#endif
  if (e1) ++x;
  if (e2) ++x;
  if (e3) ++x;
  if (f ) ++x;
  if (g ) ++x;
  if (h ) ++x;
  if (i ) ++x;

  if (x!=19) printf("\n") ;
}
 
int func10()                    
{
  int a=1,b=1;
  int x=0;

  if (a==1) ++x;
  if (a!=0) ++x;
  if (a>0 ) ++x;
  if (a>=0) ++x;
  if (a<=2) ++x;
  if (a< 2) ++x;
  if (a||b) ++x;
  if (a&&b) ++x;

  if (x!=8) printf("\n") ;
}
 
int func11()                    
{
  int a=1;
  signed int b=-1;
  int x=0;
  struct { int a ;} st,*stp;
  st.a = 0;
  stp = &st;
  if (!(a+b)) ++x;
  if (a-b)    ++x;
  if (!(a*b)) ++x;
  if (!(a/b)) ++x;
  if (a? 1:0) ++x;
  if(sizeof(a)) ++x;
  if (++a)    ++x;
  if (!(st.a)) ++x;
  if (!(stp->a)) ++x;

  if (x!=9) printf("\n") ;
}
