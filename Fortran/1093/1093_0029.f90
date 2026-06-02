module mod
contains
  subroutine sub(dmy,rr)
     intent(out) :: dmy
     intent(in) ::rr
    integer      :: dmy(8)
    character :: rr
    dmy(1)=len(rr)
    dmy(1)=10
  end subroutine sub
  subroutine sub2(dmy,ii)
     intent(out) :: dmy
     intent(in) ::ii
    logical :: ii
    integer            :: dmy(8)
    dmy(1) =kind(ii)
    dmy(1) =100
  end subroutine sub2
end

use mod
interface assignment(=)
   procedure sub
   procedure sub2
end interface 
integer :: arr(8)
character :: rr
logical :: ii
arr=1
ii=.false.
rr='a'
arr(::1)=ii   ! assignment(~)
if (arr(1) .ne.100) print *,'err1'
arr(::1)=rr   ! assignment(~)
if (arr(1) .ne.10) print *,'err2'
print *,'pass'
end
