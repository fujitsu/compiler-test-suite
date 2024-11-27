call aaaaa
call bbbbb
print *,'pass'
contains
subroutine aaaaa
integer,allocatable,dimension(:,:)::a
call suba(a)
if(any(a/=reshape((/1,2,3,4,5,6/),(/2,3/)))) print *,'err'
end subroutine 
subroutine suba(a)
integer,allocatable::a(:,:),b(:,:)
allocate(b(2,3))
b=reshape((/1,2,3,4,5,6/),(/2,3/))
call move_alloc(b,a)
if(any(a/=reshape((/1,2,3,4,5,6/),(/2,3/)))) print *,'err'
end subroutine
subroutine bbbbb
integer,allocatable,dimension(:,:,:,:,:,:,:)::a
call sub(a)
end subroutine 
subroutine sub(a)
integer,allocatable::a(:,:,:,:,:,:,:),b(:,:,:,:,:,:,:)
allocate(b(1,1,1,1,1,1,1))
b=10
call move_alloc(b,a)
end subroutine
end
