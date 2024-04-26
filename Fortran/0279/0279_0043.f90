type ty
integer::a
integer::b
character*4::c
real::d
complex::e
end type

type(ty)::q(3)=ty(3,2,'a',2.3,(2,3))
type(ty),parameter::q1(3)=ty(3,2,'a',2.3,(2,3))
type(ty),parameter::q2=ty(3,2,'a',2.3,(2,3))
integer,parameter::a=storage_size(q)
integer,parameter::b=storage_size(q1)
integer,parameter::c=storage_size(q2)
if(a .ne. storage_size(q))print*,"100"
if(b .ne. storage_size(q1))print*,"101"
if(c .ne. storage_size(q2))print*,"102"
print*,"PASS"
end
