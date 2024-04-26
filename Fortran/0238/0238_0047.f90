module m1
  type x
    integer:: x0
    integer,allocatable:: x1(:)
  end type
  type(x),allocatable::v1(:),v2(:)
contains
subroutine s1
allocate(v2(2))
allocate(v2(2)%x1(2))
v2(1)%x0=11
v2(2)%x0=1
v2(2)%x1=[2,3]
!
allocate( v1 , source=v2 )
!
if (any(shape(v1)/=2)) print *,101
if (v1(1)%x0 /= 11) print *,102
if (allocated(v1(1)%x1)) print *,103
if (v1(2)%x0 /= 1) print *,202
if (.not.allocated(v1(2)%x1)) print *,203
if (loc(v1(2)%x1)==loc(v2(2)%x1))print *,204,loc(v1(2)%x1),loc(v2(2)%x1)
if (any(shape(v1(2)%x1)/=2)) print *,101
if (any(v1(2)%x1/=[2,3])) print *,205
end subroutine
end
use m1
call s1
print *,'pass'
end

  
