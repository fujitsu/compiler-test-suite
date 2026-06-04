type t
complex::i
end type
type p
complex::j
end type
type(t)::ttt
type(p)::ppp
complex::k
ttt%i=1
ppp%j=2
!$omp atomic capture
k=ttt%i%re
ttt%i%re=ppp%j%im
!$omp end atomic
if(ttt%i/=(0.00000000E+00,0.00000000E+00)) print *,'err1'
if(ppp%j/=(2.00000000,0.00000000E+00)) print *,'err2'
if(k/=(1.00000000,0.00000000E+00)) print *,'err3'
print *,'pass'
end
