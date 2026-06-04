#include  <stdio.h>

#include	"000.h"

#if !defined(FIRST)
#define	FIRST	10
#endif

int main(){
	char	*str;
	int	first;

	first = FIRST;
	if(first == 1){
		str = " OK ";
		dprint6(str);
	}
	else{
		str = " NG ";
		dprint6(str);
	}
}
