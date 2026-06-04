type t
integer::i
end type
type p
integer::j
end type
type(t)::ttt
type(p)::ppp
integer::k
ttt%i=1
ppp%j=2
!$omp atomic capture
k=ttt%i
ttt%i=ppp%j
!$omp end atomic
print *,'pass'
end
