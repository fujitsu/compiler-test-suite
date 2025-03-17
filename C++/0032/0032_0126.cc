



void while_loop(){
  int i=0;int j=0;            
  while (i<2){                
   i++;                       
   if (i == 1 )               
     continue;                 
  }
}
void do_while_loop(){
  int i=0;int j=0;            
  do {                        
   i++;                       
   if (i == 1 )               
     continue;                 
  }while(i<2);                
}
#include <stdio.h>
int main(){
  while_loop();
  do_while_loop();
  puts("ok");
  return 0;
}
