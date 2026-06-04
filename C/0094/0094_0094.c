#include  <stdio.h>
#define	SYSTEM	1

#if	SYSTEM == 1
	#define	HDR	"000.h"
#elif	SYSTEM == 0
	#define	HDR	"nowhere1.h"
#else
	#define	HDR	"nowhere2.h"
#endif
#include	HDR

int main(){
	char	*str;
	int	first;

	first = FIRST;
	if(first == 1){
		str = " OK ";
		dprint7(str);
	}
	else{
		str = " NG ";
		dprint7(str);
	}
}
