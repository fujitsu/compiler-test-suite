integer,pointer::ptr
integer,allocatable::x 
ptr=> NULL()
call sub(NULL())
print*,"pass"
contains
subroutine sub(a)
integer,allocatable::a
integer,pointer::b
if(allocated(a).neqv..false.)print*,"101"
allocate(b)
b =30
allocate(a)
a =b
if(a.ne.30)print*,"104",a
if(allocated(a).neqv..true.)print*,"102"
deallocate(a)
if(allocated(a).neqv..false.)print*,"103"
end subroutine
end
