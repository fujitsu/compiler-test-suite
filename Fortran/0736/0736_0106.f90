  call xyz
 print *,'pass'
end
subroutine xyz
type yy
integer :: x0
integer,allocatable,dimension(:)::x
integer :: x2
end type
type (yy),allocatable:: var1(:,:)
allocate(var1(5,5))
if (allocated(var1(1,2)%x))write(6,*) "NG"
 end
