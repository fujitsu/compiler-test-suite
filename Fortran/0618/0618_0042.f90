function exfunc() result(ret)
  use mod
  type(str) :: ret
  allocate(ret%jjj)
  allocate(ret%kkk(10))
  ret%iii = 1
  ret%jjj = 10
  ret%kkk = (/1,2,3,4,5,6,7,8,9,10/)
end function
module mod
  type str
    integer :: iii
    integer,pointer :: jjj
    integer,pointer :: kkk(:)
  end type
  procedure(xfunc) :: exfunc
  procedure(xfunc),pointer :: aaa
  contains
  function xfunc() result(ret)
    type(str) :: ret
    allocate(ret%jjj)
    allocate(ret%kkk(10))
    ret%iii = 1
    ret%jjj = 10
    ret%kkk = (/1,2,3,4,5,6,7,8,9,10/)
  end function
end module

use mod
type(str) :: sss1,sss2
aaa=>exfunc
allocate(sss1%jjj)
allocate(sss1%kkk(10))
sss1%iii = 100
sss1%jjj = 200
sss1%kkk = (/1,2,3,4,5,6,7,8,9,10/)
if (sss1%iii .ne. 100) print *,'ng'
if (sss1%jjj .ne. 200) print *,'ng'
if (all(sss1%kkk/=(/1,2,3,4,5,6,7,8,9,10/))) print *,'ng'
sss2 = aaa()
if (sss2%iii .ne. 1) print *,'ng'
if (sss2%jjj .ne. 10) print *,'ng'
if (all(sss2%kkk/=(/1,2,3,4,5,6,7,8,9,10/))) print *,'ng' 
print *,'pass'
end
