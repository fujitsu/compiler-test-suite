real ,parameter :: x=-1.0
parameter (a=log(x))
parameter (ia=kind(log(x)))
type xa
 real::x1
end type
type(xa) :: ss
ss=xa(kind(log(x)))
print *,ss
end
