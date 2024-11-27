#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

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
	struct	st	st_a;
	union	un	un0;
	};

struct	st2{
	struct	bf	bf0;
	struct	st1	st_b;
	union	un	un0;
	};

struct	st3{
	struct	bf	bf0;
	struct	st2	st_c;
	union	un	un0;
	};

struct	st4{
	struct	bf	bf0;
	struct	st3	st_d;
	union	un	un0;
	};

struct	st5{
	struct	bf	bf0;
	struct	st4	st_e;
	union	un	un0;
	};

struct	st6{
	struct	bf	bf0;
	struct	st5	st_f;
	union	un	un0;
	};

struct	st7{
	struct	bf	bf0;
	struct	st6	st_g;
	union	un	un0;
	};

struct	st7	st_h[100];
int main(){
 short	int	i;

 for(i=0; i<100; i++){
  st_h[i].st_g.st_f.st_e.st_d.st_c.st_b.st_a.sint = 32767;
  st_h[i].st_g.st_f.st_e.st_d.st_c.st_b.st_a.llint = 2147483647;
  st_h[i].st_g.st_f.st_e.st_d.st_c.st_b.st_a.fvalue = 1.0e+6;
  st_h[i].st_g.st_f.st_e.st_d.st_c.st_b.st_a.dvalue = 1.0e+15;
  st_h[i].st_g.st_f.st_e.st_d.st_c.st_b.st_a.ldvalue = 1.0e+31;
 }

  if(st_h[98].st_g.st_f.st_e.st_d.st_c.st_b.st_a.sint != 32767)
 	printf("*** ciga0003: short int is NG ***\n");
  else
 	printf("*** ciga0003: short int is OK ***\n");
  if(st_h[98].st_g.st_f.st_e.st_d.st_c.st_b.st_a.llint != 2147483647)
 	printf("*** ciga0003: long int is NG ***\n");
  else
 	printf("*** ciga0003: long int is OK ***\n");
  if(st_h[98].st_g.st_f.st_e.st_d.st_c.st_b.st_a.fvalue != 1.0e+6)
 	printf("*** ciga0003: float is NG ***\n");
  else
 	printf("*** ciga0003: float is OK ***\n");
  if(st_h[98].st_g.st_f.st_e.st_d.st_c.st_b.st_a.dvalue != 1.0e+15)
 	printf("*** ciga0003: double is NG ***\n");
  else
 	printf("*** ciga0003: double is OK ***\n");
  if(st_h[98].st_g.st_f.st_e.st_d.st_c.st_b.st_a.ldvalue != 1.0e+31)
 	printf("*** ciga0003: long double is NG ***\n");
  else
 	printf("*** ciga0003: long double is OK ***\n");
exit (0);
}
