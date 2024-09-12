module m1
  type x1
     integer:: x1v
     contains
     final::x1sp,x1ap
  end type
  type ,extends(x1)::x2
     integer::x2v
     class(x1),allocatable::x2a(:)
     contains
     final::x2sp,x2ap
  end type
  type,extends(x2)::x3
     integer::x3v
     class(x1),allocatable::x3a(:)
     contains
     final::x3sp,x3ap
  end type
  class (x1),allocatable:: a(:)
  integer::f1s=0,f1a=0
  integer::f2s=0,f2a=0
  integer::f3s=0,f3a=0
  contains
  subroutine x1sp(x)
  type(x1)::x
   f1s=f1s+1
  end subroutine
  subroutine x1ap(x)
  type(x1)::x(:)
   f1a=f1a+1
  end subroutine
  subroutine x2sp(x)
  type(x2)::x
   f2s=f2s+1
  end subroutine
  subroutine x2ap(x)
  type(x2)::x(:)
   f2a=f2a+1
  end subroutine
  subroutine x3sp(x)
  type(x3)::x
   f3s=f3s+1
  end subroutine
  subroutine x3ap(x)
  type(x3)::x(:)
   f3a=f3a+1
  end subroutine
end 
subroutine s1
use m1

allocate(x2::a(2))

deallocate( a )
if (f1s/=2) print *,19101,f1s
if (f1a/=0) print *,1102,f1a
if (f2s/=0) print *,1111,f2s
if (f2a/=1) print *,18112,f2a
if (f3s/=0) print *,1121,f3s
if (f3a/=0) print *,1122,f3a

end
use m1
call s1()
print *,'pass'
end
