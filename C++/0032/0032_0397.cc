#include <stdio.h>
int   i2e,i2f=2;
int main(  )                            
{
  for(i2e=1000; i2e<1006; i2e++)
    { 
      switch(i2f=i2f*2)
	{
	case 128  :   goto en1 ;

	case 64  :   break ;
	en1: ;
	case 32 :    goto jp2;
	case 16   :  break ;
	case 8      :  break ;
	case 4      :  break ;

	  default  :  goto en1 ;
	jp2:break;
	} 
    } 
  if (i2e == 1006)
    printf("ok\n");
  else
    printf("ng\n");
}
