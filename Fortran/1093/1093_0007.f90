module m
  type t
     integer::a
   contains
     procedure,nopass::sub1
     procedure,nopass::sub2
     generic :: aaa=>sub1,sub2
  end type t
contains
  subroutine sub1(tt, iii)
    integer :: iii(10)
    integer :: tt
    iii=22
  end subroutine sub1
  subroutine sub2(tt, iii)
    integer :: iii
    integer :: tt
    iii=2
  end subroutine sub2
end module m


use m
complex :: cmp(10)
type (t) :: sss
integer,target :: tt

call test2()
call sss%aaa (tt, ii)
if (ii .ne.2) print *,'err'
call sss%sub2(tt, ii)
if (ii .ne.2) print *,'err'
!call sss%sub1(tt, ii) ! err
print *,'pass'
end program


module m_func
type t
   integer::a
 contains
   procedure,nopass::ifun1
   procedure,nopass::ifun2
   generic :: aaa=>ifun1,ifun2
end type t
contains
function ifun1(tt, iii)
  integer :: tt
  integer :: iii(10)
  iii=22
  ifun1=1
end function ifun1
function ifun2(tt, iii)
  integer :: tt
  integer :: iii
  iii=2
  ifun2=2
end function ifun2
end module m_func

subroutine test2()
use m_func
complex :: cmp(10)
type (t) :: sss
integer,target :: tt

i1=sss%aaa (tt, iii)
if (i1 .ne.2) print *,'err2'
i2=sss%ifun2(tt, iii)
if (i2 .ne.2) print *,'err3'
! i2 =sss%ifun1(cmp(1)%im) ! err
end subroutine test2
