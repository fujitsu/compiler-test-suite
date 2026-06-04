module mod
contains
  function   sub(dmy,rr)
     intent(in) :: dmy
     intent(in) ::rr
    integer      :: dmy(8)
    character :: rr
    integer :: sub
    sub=dmy(1)+len(rr)
    sub=10
  end function   sub
  function   sub2(dmy,ii)
     intent(in) :: dmy
     intent(in) ::ii
    logical :: ii
    integer            :: dmy(8)
    integer :: sub2
    sub2=dmy(1)+kind(ii)
    sub2=100
  end function   sub2
end

use mod
interface operator(.qqq.)
   procedure sub
   procedure sub2
end interface 
integer :: arr(8)
character :: rr
logical :: ii
arr=1
ii=.false.
rr='a'
arr=arr(::1).qqq.ii   ! operator      
if (arr(1) .ne.100) print *,'err1'
arr=arr(::1).qqq.rr   ! operator      
if (arr(1) .ne.10) print *,'err2'
print *,'pass'
end
