module m1
  type a
    integer j
    integer,allocatable::a1(:,:,:)
  end type
type c
integer x
type(a),allocatable::v1(:)
type(a),allocatable::v2(:)
end type
contains
subroutine s1
type (c)::y(2)
type(a),allocatable::v1(:)
call s2(y,v1,v2)
end subroutine
subroutine s2(y,v1,v2)
optional::y,v1,v2
type (c)::y(2)
type(a),allocatable::v1(:)
call move_alloc(y(2)%v2,v1)
if (allocated(y(2)%v1))write(6,*) "NG"
end subroutine
end
use m1
call s1
print *,'pass'
end
