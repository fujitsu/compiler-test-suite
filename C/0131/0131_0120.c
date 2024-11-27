#include <stdlib.h>
#include <math.h>

#include <stdio.h>
struct ary {
	int a[3] ;
};
int main(){
	struct ary tag ;
	struct ary  *p = &tag ;
	int    i , n = 10 ;
	for(i=0 ; i<3 ; i++){
		p->a[i] = n ;
		n++ ;
	}
	printf("p->a[*] => %d %d %d \n",p->a[0],p->a[1],p->a[2]) ;
	exit (0);
}
