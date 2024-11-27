
interface
 subroutine isub01(is01_dp01)
  implicit character(i)
  external :: is01_dp01
 end subroutine
 subroutine isub02(is02_dp01)
  implicit logical(i)
  external :: is02_dp01
 end subroutine
 subroutine isub03(is03_dp01)
  implicit character(i)
  procedure() :: is03_dp01
 end subroutine
 subroutine isub04(is04_dp01)
  implicit logical(i)
  procedure() :: is04_dp01
 end subroutine
 function ifunc01(if01_arg01) result(irst01)
  integer   :: if01_arg01
  character :: irst01
 end function
 function ifunc02(if02_arg01) result(irst02)
  logical   :: if02_arg01
  logical   :: irst02
 end function
end interface

procedure(isub01), pointer :: pisub01p01
procedure(isub02), pointer :: pisub02p01
procedure(isub03), pointer :: pisub03p01
procedure(isub04), pointer :: pisub04p01

call isub01(ifunc01)
call isub02(ifunc01)  
call isub03(ifunc01)
call isub04(ifunc01)  

call isub01(ifunc02)  
call isub02(ifunc02)
call isub03(ifunc02)  
call isub04(ifunc02)

pisub01p01 => isub01
call pisub01p01(ifunc01)

pisub01p01 => isub02  
call pisub01p01(ifunc01)

pisub01p01 => isub03
call pisub01p01(ifunc01)

pisub01p01 => isub04  
call pisub01p01(ifunc01)

pisub02p01 => isub01  
call pisub02p01(ifunc02)

pisub02p01 => isub02
call pisub02p01(ifunc02)

pisub02p01 => isub03  
call pisub02p01(ifunc02)

pisub02p01 => isub04
call pisub02p01(ifunc02)

pisub03p01 => isub01
call pisub03p01(ifunc01)

pisub03p01 => isub02  
call pisub03p01(ifunc01)

pisub03p01 => isub03
call pisub03p01(ifunc01)

pisub03p01 => isub04  
call pisub03p01(ifunc01)

pisub04p01 => isub01  
call pisub04p01(ifunc02)

pisub04p01 => isub02
call pisub04p01(ifunc02)

pisub04p01 => isub03  
call pisub04p01(ifunc02)

pisub04p01 => isub04
call pisub04p01(ifunc02)

call csub01(isub01)
call csub01(isub02)  
call csub01(isub03)
call csub01(isub04)  

call csub02(isub01)  
call csub02(isub02)
call csub02(isub03)  
call csub02(isub04)

call csub03(isub01)
call csub03(isub02)  
call csub03(isub03)
call csub03(isub04)  

call csub04(isub01)  
call csub04(isub02)
call csub04(isub03)  
call csub04(isub04)

contains
 subroutine csub01(cs01_dp01)
  procedure(isub01) :: cs01_dp01
  call cs01_dp01(ifunc01)
 end subroutine

 subroutine csub02(cs02_dp01)
  procedure(isub02) :: cs02_dp01
  call cs02_dp01(ifunc02)
 end subroutine

 subroutine csub03(cs03_dp01)
  procedure(isub03) :: cs03_dp01
  call cs03_dp01(ifunc01)
 end subroutine

 subroutine csub04(cs04_dp01)
  procedure(isub04) :: cs04_dp01
  call cs04_dp01(ifunc02)
 end subroutine

end

subroutine isub01(is01_dp01)
 implicit character(i)
 external :: is01_dp01
 print *,is01_dp01(111)
end subroutine

subroutine isub02(is02_dp01)
 implicit logical(i)
 external :: is02_dp01
 print *,is02_dp01(.true.)
end subroutine

subroutine isub03(is03_dp01)
 implicit character(i)
 procedure() :: is03_dp01
 print *,is03_dp01(222)
end subroutine

subroutine isub04(is04_dp01)
 implicit logical(i)
 procedure() :: is04_dp01
 print *,is04_dp01(.false.)
end subroutine

function ifunc01(if01_arg01) result(irst01)
 integer   :: if01_arg01
 character :: irst01
 irst01 = char(if01_arg01)
end function

function ifunc02(if02_arg01) result(irst02)
 logical   :: if02_arg01
 logical   :: irst02
 irst02 = logical(if02_arg01)
end function
