call get_val()
end

subroutine get_val()
integer,parameter::a(3)=[123,12,124]
real,parameter::e(3)=[2.3,1.2,4.2]
 character,parameter::h(3)=['a','b','c']
logical,parameter::j(3)=[.true.,.false.,.true.]
type ty
integer::a
integer::b
end type
type(ty)::q(3)=ty(3,2)
integer,parameter::a1=storage_size(a)
integer,parameter::a5=storage_size(e)
integer,parameter::a8=storage_size(h)
integer,parameter::a10=storage_size(j)
integer,parameter::a17=storage_size(q)
if(a1 .ne. storage_size(a))print*,"100"
if(a5 .ne. storage_size(e))print*,"104"
if(a8 .ne. storage_size(h))print*,"107"
if(a10 .ne.storage_size(j))print*,"109"
if(a17 .ne.storage_size(q))print*,"116"
print*,"PASS"
end subroutine get_val
