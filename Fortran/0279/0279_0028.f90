type sub
integer::a(3)
real::c(3)
logical::d(3)
character::b(3)
character::b1(3)
integer*2::a1(3)
complex::e(3)
integer::f(3)
end type sub

type(sub)::var
integer,parameter::d=storage_size(var)
if (d  .ne. storage_size(var))print*,"100"
print*,"PASS"
end
