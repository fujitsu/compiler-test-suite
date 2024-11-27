call aaaaa
call bbbbb
print *,'pass'
contains
subroutine aaaaa
integer,allocatable,target::fm(:)
integer,allocatable,target::to_target(:)
integer,pointer::p(:)
allocate(fm(3))
fm=(/1,2,3/)
p=>fm(1:3:2)
call move_alloc(FROM=fm,TO=to_target)
if(any(p/=(/1,3/))) print *,'err'
if(allocated(fm).neqv..false.) print *,'err'
if(allocated(to_target).neqv..true.) print *,'err'
if(associated(p).neqv..true.) print *,'err'
end subroutine
subroutine bbbbb
integer,allocatable,target::fm(:)
integer,allocatable::to_notarget(:)
integer,pointer::p(:)
allocate(fm(3))
fm=(/1,2,3/)
p=>fm(1:3:2)
call move_alloc(FROM=fm,TO=to_notarget)
if(any(p/=(/1,3/))) print *,'err'
if(allocated(fm).neqv..false.) print *,'err'
if(allocated(to_notarget).neqv..true.) print *,'err'
if(associated(p).neqv..true.) print *,'err'
end subroutine
end
