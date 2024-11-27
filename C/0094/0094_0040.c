#include  <stdio.h>
#include  <stdlib.h>
#define	NULL	0

struct	bf{
	unsigned int is_bf0 : 1;
	unsigned int is_bf1 : 2;
	};

struct	st{
	short	int	sint;
	long	int	llint;
	float	fvalue;
	double	dvalue;
	long	double	ldvalue;
	};

union	un{
	short	int	sint;
	long	int	llint;
	float	fvalue;
	double	dvalue;
	long	double	ldvalue;
	struct	bf	bf0;
	};

struct	st1{
	struct	bf	bf0;
	struct	st	st0;
	union	un	un0;
	};

short	int	i;
struct	st1	*(*st_array)[] = NULL;

int main(){
	void	operation1();

	st_array = (struct st1 *(*)[])malloc(100*4);

	for(i=0; i<100; i++){
		(*st_array)[i] = (struct st1 *)malloc(sizeof(struct st1));
		((*st_array)[i]->st0).sint = 32767;
		((*st_array)[i]->st0).llint = 2147483647;
		((*st_array)[i]->st0).fvalue = 1.0e+6;
		((*st_array)[i]->st0).dvalue = 1.0e+15;
		((*st_array)[i]->st0).ldvalue = 1.0e+31;
	}
	operation1(st_array);

	if(((*st_array)[98]->st0).sint != 32767)
		printf("*** ciga0002: short int is NG ***\n");
	else
		printf("*** ciga0002: short int is OK ***\n");
	if(((*st_array)[98]->st0).llint != 2147483647)
		printf("*** ciga0002: long int is NG ***\n");
	else
		printf("*** ciga0002: long int is OK ***\n");
	if(((*st_array)[98]->st0).fvalue != 1.0e+6)
		printf("*** ciga0002: float is NG ***\n");
	else
		printf("*** ciga0002: float is OK ***\n");
	if(((*st_array)[98]->st0).dvalue != 1.0e+15)
		printf("*** ciga0002: double is NG ***\n");
	else
		printf("*** ciga0002: double is OK ***\n");
	if(((*st_array)[98]->st0).ldvalue != 1.0e+31)
		printf("*** ciga0002: long double is NG ***\n");
	else
		printf("*** ciga0002: long double is OK ***\n");
}

void	operation1(dammy_st)
	struct	st1	*(*dammy_st)[];
	{
	((*dammy_st)[1]->bf0).is_bf0 |= 1;
	((*dammy_st)[1]->bf0).is_bf1 |= 3;
	((*dammy_st)[1]->un0).bf0.is_bf1 |= 1;
}
