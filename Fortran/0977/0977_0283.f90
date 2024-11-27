call dim1
call dim2
call dim3
call dim4
call dim5
call dim6
call dim7
print *,'pass'
contains
subroutine dim1
integer,allocatable,dimension(:)::a
call sub1(a)
if(any(a/=(/1,2/))) print *,'err'
end subroutine
subroutine dim2
integer,allocatable,dimension(:,:)::a
call sub2(a)
if(any(a/=reshape((/1,2/),(/1,2/)))) print *,'err'
end subroutine
subroutine dim3
integer,allocatable,dimension(:,:,:)::a
call sub3(a)
if(any(a/=reshape((/1,1,2/),(/1,1,2/)))) print *,'err'
end subroutine
subroutine dim4
integer,allocatable,dimension(:,:,:,:)::a
call sub4(a)
if(any(a/=reshape((/1,1,1,2/),(/1,1,1,2/)))) print *,'err'
end subroutine
subroutine dim5
integer,allocatable,dimension(:,:,:,:,:)::a
call sub5(a)
if(any(a/=reshape((/1,1,1,1,2/),(/1,1,1,1,2/)))) print *,'err'
end subroutine
subroutine dim6
integer,allocatable,dimension(:,:,:,:,:,:)::a
call sub6(a)
if(any(a/=reshape((/1,1,1,1,1,2/),(/1,1,1,1,1,2/)))) print *,'err'
end subroutine
subroutine dim7
integer,allocatable,dimension(:,:,:,:,:,:,:)::a
call sub7(a)
if(any(a/=reshape((/1,1,1,1,1,1,2/),(/1,1,1,1,1,1,2/)))) print *,'err'
end subroutine
subroutine sub1(a)
integer,allocatable::a(:),b(:)
allocate(b(2))
b=(/1,2/)
call move_alloc(b,a)
end subroutine
subroutine sub2(a)
integer,allocatable::a(:,:),b(:,:)
allocate(b(1,2))
b=reshape((/1,2/),(/1,2/))
call move_alloc(b,a)
end subroutine
subroutine sub3(a)
integer,allocatable::a(:,:,:),b(:,:,:)
allocate(b(1,1,2))
b=reshape((/1,1,2/),(/1,1,2/))
call move_alloc(b,a)
end subroutine
subroutine sub4(a)
integer,allocatable::a(:,:,:,:),b(:,:,:,:)
allocate(b(1,1,1,2))
b=reshape((/1,1,1,2/),(/1,1,1,2/))
call move_alloc(b,a)
end subroutine
subroutine sub5(a)
integer,allocatable::a(:,:,:,:,:),b(:,:,:,:,:)
allocate(b(1,1,1,1,2))
b=reshape((/1,1,1,1,2/),(/1,1,1,1,2/))
call move_alloc(b,a)
end subroutine
subroutine sub6(a)
integer,allocatable::a(:,:,:,:,:,:),b(:,:,:,:,:,:)
allocate(b(1,1,1,1,1,2))
b=reshape((/1,1,1,1,1,2/),(/1,1,1,1,1,2/))
call move_alloc(b,a)
end subroutine
subroutine sub7(a)
integer,allocatable::a(:,:,:,:,:,:,:),b(:,:,:,:,:,:,:)
allocate(b(1,1,1,1,1,1,2))
b=reshape((/1,1,1,1,1,1,2/),(/1,1,1,1,1,1,2/))
call move_alloc(b,a)
end subroutine
end
