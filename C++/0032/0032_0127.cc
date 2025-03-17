



void break_continue1(){
  int i=0;int j=0;            
  for (i=0;i<3;i++){          
   switch (i) {               
   case 0:                    
     continue;                
   case 1:                    
     continue;                
   default:                   
     break;                   
   j=10;
   }
  }
}
void break_continue2(){
  int i=0;int j=0;            
REPEAT:;
  for(;;) {                   
   i++;                       
   if (i==2 )                 
     break;                    
   if (i==4)                  
     break;                    
   if (i>0)                    
     continue;                 
   j=10;                       
  };                           
  j++;                         
  if (j==1) goto REPEAT;       
}
#include <stdio.h>
int main(){
  break_continue1();
  break_continue2();
  puts("ok");
  return 0;
}
