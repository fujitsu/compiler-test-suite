#include <stdio.h>
#include <memory.h>
#include "000.h"
int main()
{
   header("gnu1.5.19-01",                    
          "escape character");  

  char buf[80],code;

  memset(buf,0,sizeof(buf));
  sprintf(buf,"\e");
  if (buf[0]==0x1b) 
     printf("gnu esc OK01\n"); 
  else
     printf("gnu esc NG01:%x\n",buf[0]);

  code='\e';
  if (code==0x1b) 
     printf("gnu esc OK02\n"); 
  else
     printf("gnu esc NG02:%c\n",code);


   header("gnu1.5.19-01",                    
          "escape character"); 

}
