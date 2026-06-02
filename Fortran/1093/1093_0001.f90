  module m
    type t
      integer::a
      contains
      procedure,nopass::sub1
      procedure,nopass::sub2
      generic :: aaa=>sub1,sub2
    end type
  contains
    subroutine sub1(aa, rr)
      type(*):: aa
      ii=22
    end subroutine
    subroutine sub2(aa, ii)
      type(t)::aa
      ii=2
    end subroutine
  end module


use m
!complex :: cmp(10)
type(t) :: sss
type(t)::obj
call test2()
call sss%aaa (obj, i1)
if (i1 .ne.2) print *,'err'
call sss%sub2(obj, i2)
if (i2 .ne.2) print *,'err'
!call sss%sub1(obj, i3) ! err
print *,'pass'
end


  module m_func
    type t
      integer::a
      contains
      procedure,nopass::ifun1
      procedure,nopass::ifun2
      generic :: aaa=>ifun1,ifun2
    end type
  contains
    function ifun1(obj, iii)
      type(t) :: obj
      real :: iii(10)
      iii=22
      ifun1=1
    end function
    function ifun2(obj, iii)
      type(t) :: obj
      integer :: iii
      iii=2
      ifun2=2
    end function
  end module

subroutine test2()
use m_func
complex :: cmp(10)
type (t) :: sss
type(t) :: obj

i1=sss%aaa (obj, i1)
if (i1 .ne.2) print *,'err2'
i2=sss%ifun2(obj, i2)
if (i2 .ne.2) print *,'err3'
! i2 =sss%ifun1(obj, i3) ! err
end
