#include <stdlib.h>
#include <stdio.h>
#include <math.h>



int main()
{
	int i,count=0,a[11]={
		0,1,2,3,4,5,6,7,8,9,10	};
	
	int sub();
	i=0;
	while(i<100)
	{
label1:
		;
		if(++count<20) { 
			goto label1;
		}
		i++;
	}
	
	i=0;
	while(i<100)
	{
		count++;
		i++;
	}
	
	
	
	i=0;
	while(i<100)
	{
		if(count==50){
			break;
		}
		count--;
		i++;
	}
	
	
	
	while(i?100:0)
	{
		i--;
		count+=2;
	}
	
	while(1)
	{
		if (count==500) {
			break;
		}
		count++;
	}
	
	
	
	while(i==0)
	{
		if(count<1){
			i--;
		}
		count--;
	}
	
	i=0;
	while(i<100&&i>-10)
	{
		count++;
		i++;
	}
	
	while(i<sub(count))
	{
		i++;
		count++;
	}
	
	while(i<a[10])
	{
		count++;
		i++;
	}
	i=(int)(&a[9]);
	while(i<(int)(&a[10]))
	{
		count++;
		i++;
	}
	
	
	
	i=0;
	while(i<100)
	{
		if(count--==100){
			continue;
		}
		i++;
	}
	
	i=0;
	while(i<10)
	{
		i++;
		count++;
	}
label:
	;
	if (i++<100){
		goto label;
	}
	printf("count=%d , i=%d \n",count,i);
	exit (0);
}
int sub(int var)
{
	var=var*var;
	var/=100;
	return(var);
}
