call sub(NULL())
print*,"pass"
contains
subroutine sub(a)
integer,allocatable::a(:,:)
integer,pointer::b(:,:)
if(rank(a).ne.2)print*,"106"
if(allocated(a).neqv..false.)print*,"101"
allocate(b(3,4))
b =30
allocate(a(3,4))
a =b
if(any(a.ne.30))print*,"104",a
if(allocated(a).neqv..true.)print*,"102"
if(rank(a).ne.2)print*,"106"
deallocate(a)
if(allocated(a).neqv..false.)print*,"107"
if(rank(a).ne.2)print*,"106"
end subroutine
end
