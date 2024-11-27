#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <math.h>








int main()
{
	struct   satellite  {
		char    name[9] ;
		int     light   ;
		float   cycle   ;
	} jupiter[4],*point ;
	int i ;

	point = &(jupiter[0]) ;
	strcpy(point->name,    "Io      ") ;
	strcpy((point+1)->name,"Europa  ") ;
	strcpy((point+2)->name,"GANYMEDE") ;
	strcpy((point+3)->name,"CALLISTO") ;
	point->light = (point+2)->light = 5 ;
	(point+1)->light = (point+3)->light = 6 ;
	point->cycle     = 1.7691  ;
	(point+1)->cycle = 3.5512  ;
	(point+2)->cycle = 7.1545  ;
	(point+3)->cycle = 16.6890 ;
	printf("NAME       LIGHT    CYCLE(DAY) \n") ;
	for(i=0; i < 4 ;i++ ) {
		printf("%s",(point+i)->name)  ;
		printf("% 6d",(point+i)->light)  ;
		printf("%16.4f \n",(point+i)->cycle) ;
	}
	exit (0);
}
