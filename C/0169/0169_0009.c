#include  <stdio.h>

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

o_ s_o(char aa,p_ bb){ 
  o_ ww;
  ww.a=aa;
  printf("%c\n",bb.b.b.b.b.b.b.b.b.b.a); 
  ww.b=bb; 
  return ww;
}

p_ s_p(){
 p_ ww;
 ww.a='q';
 ww.b.a='r';
 ww.b.b.a='s';
 ww.b.b.b.a='t';
 ww.b.b.b.b.a='u';
 ww.b.b.b.b.b.a='v';
 ww.b.b.b.b.b.b.a='w';
 ww.b.b.b.b.b.b.b.a='x';
 ww.b.b.b.b.b.b.b.b.a='y';
 ww.b.b.b.b.b.b.b.b.b.a='z';
 return ww;
 }
int main(){
  o_ oo;
  oo =  s_o('p',(s_p()));
}

