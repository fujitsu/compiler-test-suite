#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
char    init[]="abcdefghijklmnopqrstuvwxyz" ;

typedef struct { char a;       } z_;
typedef struct { char a; z_ b; } y_;
typedef struct { char a; y_ b; } x_;
typedef struct { char a; x_ b; } w_;
typedef struct { char a; w_ b; } v_;
typedef struct { char a; v_ b; } u_;
typedef struct { char a; u_ b; } t_;
typedef struct { char a; t_ b; } s_;
typedef struct { char a; s_ b; } r_;
typedef struct { char a; r_ b; } q_;
typedef struct { char a; q_ b; } p_;
typedef struct { char a; p_ b; } o_;
typedef struct { char a; o_ b; } n_;
typedef struct { char a; n_ b; } m_;
typedef struct { char a; m_ b; } l_;
typedef struct { char a; l_ b; } k_;
typedef struct { char a; k_ b; } j_;
typedef struct { char a; j_ b; } i_;
typedef struct { char a; i_ b; } h_;
typedef struct { char a; h_ b; } g_;
typedef struct { char a; g_ b; } f_;
typedef struct { char a; f_ b; } e_;
typedef struct { char a; e_ b; } d_;
typedef struct { char a; d_ b; } c_;
typedef struct { char a; c_ b; } b_;
typedef struct { char a; b_ b; } a_;
typedef struct { char a; a_ b; } A;

A init_A(){
A aa;
aa=*(A *)init;
return aa;
}
A  s_A(char aa,a_ bb){ A  ww; ww.a=aa; ww.b=bb; return ww; }
a_ s_a(char aa,b_ bb){ a_ ww; ww.a=aa; ww.b=bb; return ww; }
b_ s_b(char aa,c_ bb){ b_ ww; ww.a=aa; ww.b=bb; return ww; }
c_ s_c(char aa,d_ bb){ c_ ww; ww.a=aa; ww.b=bb; return ww; }
d_ s_d(char aa,e_ bb){ d_ ww; ww.a=aa; ww.b=bb; return ww; }
e_ s_e(char aa,f_ bb){ e_ ww; ww.a=aa; ww.b=bb; return ww; }
f_ s_f(char aa,g_ bb){ f_ ww; ww.a=aa; ww.b=bb; return ww; }
g_ s_g(char aa,h_ bb){ g_ ww; ww.a=aa; ww.b=bb; return ww; }
h_ s_h(char aa,i_ bb){ h_ ww; ww.a=aa; ww.b=bb; return ww; }
i_ s_i(char aa,j_ bb){ i_ ww; ww.a=aa; ww.b=bb; return ww; }
j_ s_j(char aa,k_ bb){ j_ ww; ww.a=aa; ww.b=bb; return ww; }
k_ s_k(char aa,l_ bb){ k_ ww; ww.a=aa; ww.b=bb; return ww; }
l_ s_l(char aa,m_ bb){ l_ ww; ww.a=aa; ww.b=bb; return ww; }
m_ s_m(char aa,n_ bb){ m_ ww; ww.a=aa; ww.b=bb; return ww; }
n_ s_n(char aa,o_ bb){ n_ ww; ww.a=aa; ww.b=bb; return ww; }
o_ s_o(char aa,p_ bb){ o_ ww; ww.a=aa; ww.b=bb; return ww; }
p_ s_p(char aa,q_ bb){ p_ ww; ww.a=aa; ww.b=bb; return ww; }
q_ s_q(char aa,r_ bb){ q_ ww; ww.a=aa; ww.b=bb; return ww; }
r_ s_r(char aa,s_ bb){ r_ ww; ww.a=aa; ww.b=bb; return ww; }
s_ s_s(char aa,t_ bb){ s_ ww; ww.a=aa; ww.b=bb; return ww; }
t_ s_t(char aa,u_ bb){ t_ ww; ww.a=aa; ww.b=bb; return ww; }
u_ s_u(char aa,v_ bb){ u_ ww; ww.a=aa; ww.b=bb; return ww; }
v_ s_v(char aa,w_ bb){ v_ ww; ww.a=aa; ww.b=bb; return ww; }
w_ s_w(char aa,x_ bb){ w_ ww; ww.a=aa; ww.b=bb; return ww; }
x_ s_x(char aa,y_ bb){ x_ ww; ww.a=aa; ww.b=bb; return ww; }
y_ s_y(char aa,z_ bb){ y_ ww; ww.a=aa; ww.b=bb; return ww; }
z_ s_z(char aa){ z_ ww; ww.a=aa; return ww; }
int main(){
char * strcat(),*strcpy();
int    strlen(),strcmp();
int    memcmp(),memcpy();
A      i,j,k,l;
char   *x,c1[]="aa",c2[]="ab";
i=init_A();
memcpy(&j,&i,sizeof(A));
x=init;
if( strlen(&i)!=strlen(init) ) printf("NG 1\n");
if( memcmp(x,&i,sizeof(i))   ) printf("NG 2\n");
if( strcmp((x=(char *)&i,x+1),
	   strcat( strcpy(&k,(j.a=0,&j)),
		   &(j.b) )) ) printf("NG 3\n");
if( strcmp(c2,c1)<=0         ) printf("NG 4\n");
k=s_A(i.a,
  s_a(i.b.a,
  s_b(i.b.b.a,
  s_c(i.b.b.b.a,
  s_d(i.b.b.b.b.a,
  s_e(i.b.b.b.b.b.a,
  s_f(i.b.b.b.b.b.b.a,
  s_g(i.b.b.b.b.b.b.b.a,
  s_h(i.b.b.b.b.b.b.b.b.a,
  s_i(i.b.b.b.b.b.b.b.b.b.a,
  s_j(i.b.b.b.b.b.b.b.b.b.b.a,
  s_k(i.b.b.b.b.b.b.b.b.b.b.b.a,
  s_l(i.b.b.b.b.b.b.b.b.b.b.b.b.a,
  s_m(i.b.b.b.b.b.b.b.b.b.b.b.b.b.a,
  s_n(i.b.b.b.b.b.b.b.b.b.b.b.b.b.b.a,
  s_o(i.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.a,
  s_p(i.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.a,
  s_q(i.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.a,
  s_r(i.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.a,
  s_s(i.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.a,
  s_t(i.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.a,
  s_u(i.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.a,
  s_v(i.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.a,
  s_w(i.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.a,
  s_x(i.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.a,
  s_y(i.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.a,
  s_z(i.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.a)
							   )
                                                         )
                                                       )
                                                     )
                                                   )
                                                 )
                                               )
                                             )
                                           )
                                         )
                                       )
                                     )
                                   )
                                 )
                               )
                             )
                           )
                         )
                       )
                     )
                   )
                 )
               )
             )
           )
         );

if('a'==k.a
&& 'b'==k.b.a
&& 'c'==k.b.b.a
&& 'd'==k.b.b.b.a
&& 'e'==k.b.b.b.b.a
&& 'f'==k.b.b.b.b.b.a
&& 'g'==k.b.b.b.b.b.b.a
&& 'h'==k.b.b.b.b.b.b.b.a
&& 'i'==k.b.b.b.b.b.b.b.b.a
&& 'j'==k.b.b.b.b.b.b.b.b.b.a
&& 'k'==k.b.b.b.b.b.b.b.b.b.b.a
&& 'l'==k.b.b.b.b.b.b.b.b.b.b.b.a
&& 'm'==k.b.b.b.b.b.b.b.b.b.b.b.b.a
&& 'n'==k.b.b.b.b.b.b.b.b.b.b.b.b.b.a
&& 'o'==k.b.b.b.b.b.b.b.b.b.b.b.b.b.b.a
&& 'p'==k.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.a
&& 'q'==k.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.a
&& 'r'==k.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.a
&& 's'==k.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.a
&& 't'==k.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.a
&& 'u'==k.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.a
&& 'v'==k.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.a
&& 'w'==k.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.a
&& 'x'==k.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.a
&& 'y'==k.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.a
&& 'z'==k.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.b.a);
else printf("NG!\n");
printf("end \n");
exit (0);
}
