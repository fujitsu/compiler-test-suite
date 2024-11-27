module m1
  type a
    integer,allocatable::a1(:,:,:)
    integer,allocatable::a2(:,:,:)
  end type
  type b
     type(a),allocatable::b1(:,:,:)
     type(a),allocatable::b2(:,:,:)
  end type
end
subroutine s1
use m1
type c
integer x
type(b),allocatable::v1(:,:,:),v2(:,:,:)
end type
type (c)::y
call move_alloc(y%v1,y%v2)
if (allocated(y%v1))write(6,*) "NG"
if (allocated(y%v2))write(6,*) "NG"
end subroutine
call s1
print *,'pass'
end
