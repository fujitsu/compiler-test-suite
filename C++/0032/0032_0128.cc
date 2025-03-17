



void loop_loop1(){
  int i=0;int j=0;            
  for (i=0;i<4;i++){          
    for (;;){                 
      for(;;){                  
        i++;                   
        if (i==1)             
          continue;           
        break;                 
      } 
      if (i<3)                
       continue;              
      else                  
       break;                  
    }
  }
}
void loop_loop2(){
  int i=0;int j=0;            
  for(;i<4;i++) {             
    if (i==0)                 
      continue;               
    while(i<4){               
       i++;                   
       if (i==2)              
         continue;            
       do {                   
        i++;                  
        if (i==4)             
          continue;           
        j=10;                 
       }while(i<5);           
      j=0;                    
    }                         
   j=10;                      
  }
  j=20;
}
#include <stdio.h>
int main(){
  loop_loop1();
  loop_loop2();
  puts("ok");
  return 0;
}
