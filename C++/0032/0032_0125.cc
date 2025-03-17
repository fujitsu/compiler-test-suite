



void for_loop1(){
  int i;int j=0;              
  for (i= 0; i<2; i++){       
   if (i == 1 )               
     continue;                 
   j=10;                      
  }
}
void for_loop2(){
  int i=0;int j=0;            
  for (; i<2; i++){           
   if (i == 1 )               
     continue;                 
   j=10;                      
  }
}
void for_loop3(){
  int i=0;int j=0;            
  for (i=0; ; i++){           
   if (i < 1 )                
     continue;                 
   else 
     break;                   
  }
}
void for_loop4(){
  int i=0;int j=0;            
  for (i=0; i<2;){            
   i++;                       
   if (i == 1 )               
     continue;                 
   j=0;                       
  }
}
void for_loop5(){
  int i=0;int j=0;            
  for (;;){                   
   i++;                       
   if (i <2 )                 
     continue;                 
   else
     break;                   
  }
}
#include <stdio.h>
int main(){
  for_loop1();
  for_loop2();
  for_loop3();
  for_loop4();
  for_loop5();
  puts("ok");
  return 0;
}
