module m1
  type a
    integer j
    integer,allocatable::a1(:,:,:)
  end type
end
subroutine s1
use m1
type c
integer x
type(a),allocatable::v1(:)
end type
type(a),allocatable::v2(:)
type (c)::y(2)
call move_alloc(v2,y(2)%v1)
if (allocated(y(2)%v1))write(6,*) "NG"
if (allocated(v2))write(6,*) "NG"
end subroutine
call s1
print *,'pass'
end