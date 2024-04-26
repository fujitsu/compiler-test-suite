type ty
integer::a
integer::b
character*4::c
real::d
complex::e
end type
type ty1
integer::a
integer::b
type(ty)::obj
end type
type,extends(ty1)::ty2
integer::m
character*4::n
end type

type(ty),parameter::q=ty(3,2,'a',2.3,(2,3))
type(ty1),parameter::q1=ty1(3,2,ty(3,2,'a',2.3,(2,3)))
type(ty2)::q2=ty2(ty1(3,2,ty(3,2,'a',2.3,(2,3))),5,'q')
integer,parameter::a=storage_size(q)
integer,parameter::b=storage_size(q1)
integer,parameter::c=storage_size(q2)
if(a .ne. storage_size(q))print*,"100"
if(b .ne. storage_size(q1))print*,"101"
if(c .ne. storage_size(q2))print*,"102"
print*,"PASS"
end
