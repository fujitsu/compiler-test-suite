#include  <stdio.h>
#include  <stdlib.h>

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

struct	st2{
	struct	bf	bf0[100];
	struct	st	st0[100];
	union	un	un0[100];
	};

short	int	i;
struct	st2	*extern_st2;

int main(){
	struct	st2	*intern_st2;
	void	operation1();

	intern_st2 = (struct st2 *)malloc(sizeof(struct st2));
	extern_st2 = (struct st2 *)malloc(sizeof(struct st2));
	for(i=0; i<100; i++) {
		(intern_st2->st0[i]).sint = 32767;
		(intern_st2->st0[i]).llint = 2147483647;
		(intern_st2->st0[i]).fvalue = 1.0e+6;
		(intern_st2->st0[i]).dvalue = 1.0e+15;
		(intern_st2->st0[i]).ldvalue = 1.0e+31;
	}
	operation1(intern_st2);
	*extern_st2 = *intern_st2;
	if((extern_st2->st0[1]).sint != 32767)
		printf("*** ciga0001: short int is NG ***\n");
	else
		printf("*** ciga0001: short int is OK ***\n");
	if((extern_st2->st0[1]).llint != 2147483647)
		printf("*** ciga0001: long int is NG ***\n");
	else
		printf("*** ciga0001: long int is OK ***\n");
	if((extern_st2->st0[1]).fvalue != 1.0e+6)
		printf("*** ciga0001: float is NG ***\n");
	else
		printf("*** ciga0001: float is OK ***\n");
	if((extern_st2->st0[1]).dvalue != 1.0e+15)
		printf("*** ciga0001: double is NG ***\n");
	else
		printf("*** ciga0001: double is OK ***\n");
	if((extern_st2->st0[1]).ldvalue != 1.0e+31)
		printf("*** ciga0001: long double is NG ***\n");
	else
		printf("*** ciga0001: long double is OK ***\n");
}

void	operation1(dammy_st)
	struct	st2	*dammy_st;
	{
	(dammy_st->bf0[1]).is_bf0 |= 1;
	(dammy_st->bf0[1]).is_bf1 |= 3;
	(dammy_st->un0[1]).bf0.is_bf1 |= 1;
}
