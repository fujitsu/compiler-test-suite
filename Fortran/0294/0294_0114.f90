module mod
  contains
  subroutine sub(arg01,arg02,lower01,lower02,upper01,upper02,lower03,upper03)
    integer,pointer :: arg01 (:,:), arg02(:,:)
    integer,pointer :: lower01(:,:),lower02(:,:),upper01(:,:),upper02(:,:),lower03(:,:),upper03(:,:)
    arg01(lower01(2,1):upper01(2,1),lower02(2,1):upper02(2,1)) => arg02(1:4,2)
    print *,arg01
    print *,lbound(arg01,1),ubound(arg01,1)
    print *,lbound(arg01,2),ubound(arg01,2)
    arg01(lower01(2,1):upper01(2,1),lower02(2,1):upper02(2,1)) => arg02(lower03(2,1):upper03(2,1),2)
    print *,arg01
    print *,lbound(arg01,1),ubound(arg01,1)
    print *,lbound(arg01,2),ubound(arg01,2)
  end subroutine
end module

use mod
integer,pointer :: r (:,:), s(:,:)
integer,pointer :: lower01(:,:),lower02(:,:),upper01(:,:),upper02(:,:),lower03(:,:),upper03(:,:)
allocate(lower01(2,2),lower02(2,2),upper01(2,2),upper02(2,2),lower03(2,2),upper03(2,2),r(4,2))
lower01(2,1) = 2
upper01(2,1) = 3
lower02(2,1) = 4
upper02(2,1) = 5
lower03(2,1) = 1
upper03(2,1) = 4
r = reshape((/1,2,3,4,5,6,7,8/),(/4,2/))
call sub(s,r,lower01,lower02,upper01,upper02,lower03,upper03)
print *,'ok'
end
