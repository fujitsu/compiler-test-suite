module m1
type x
  integer::x1=1
end type
contains
subroutine s1(a01)
entry     s2(a01,a02) 
entry     s3(a01,a02,a03)
entry     s4(a01,a02,a03,a04)
entry     s5(a01,a02,a03,a04,a05)
entry     s6(a01,a02,a03,a04,a05,a06)
type(x),intent(out),optional::a01
integer,allocatable,dimension(:,:,:,:,:,:,:)::a02,a03,a04,a05,a06
if (present(a01))then
   if (a01%x1/=1)write(6,*) "NG"
else
allocate(a02(1,2,1,1,1,1,1));a02=1
allocate(a03(1,2,1,1,1,1,1));a03=1
allocate(a04(1,2,1,1,1,1,1));a04=1
allocate(a05(1,2,1,1,1,1,1));a05=1
allocate(a06(1,2,1,1,1,1,1));a06=1
endif
end subroutine
end
use m1
type(x)::a01
a01%x1=100
call s1(a01)
print *,'pass'
end
