module m1
  type t0
    integer:: x01
    contains
    procedure,nopass:: prc0
    generic:: gen => prc0
  end type
  type,extends(t0)::t1
    integer:: x11
    contains
    procedure,nopass:: prc1
  end type
  class(t0),allocatable:: a1
integer:: n=0
  contains
  subroutine prc0(c0)
  class (t0),intent(in):: c0
  select type(c0)
   type is (t0)
      n=n+1
   type is (t1)
      n=n+10
  end select
  end subroutine
  subroutine prc1(c1)
  class (t1),intent(in):: c1
  select type(c1)
   type is (t1)
      n=n+100
  end select
  end subroutine
end

subroutine s1
use m1
type(t0)::v0=t0(1)
type(t1)::v1=t1(2,3)
allocate ( a1 ,source= v0)
call a1%gen( a1 )
call prc0( a1 )
deallocate( a1 )
allocate ( a1 ,source= v1)
call a1%gen( a1 )
call prc0( a1 )
if (n/=22) print *,101,n
end

call s1
print *,'pass'
end
