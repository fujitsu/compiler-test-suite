call test01()
print *,'pass'
end

module mod
contains
 function ifun(i)
   integer :: ifun
   ifun=i
 end function
 subroutine isub(i)
   j=i
   j=j
 end subroutine
end
subroutine test01()
use mod
type ty1
 procedure(ifun),nopass,pointer :: ip 
 procedure(ifun),nopass,pointer :: ip2 => null()
 procedure(ifun),nopass,pointer :: ip3 => null()
 procedure(isub),nopass,pointer :: is => null()
 procedure(isub),nopass,pointer :: is2 => null()
 procedure(isub),nopass,pointer :: is3 => null()
end type
type (ty1) :: str
 procedure(isub),pointer :: is3 => null()
str%ip=>ifun
if(str%ip(3).ne.3) print *,'fail'
str%ip2=>ifun
if(str%ip2(4).ne.4) print *,'fail'
str%ip3=>ifun
if(str%ip3(5).ne.5) print *,'fail'
str%is=>isub
call str%is(1)
str%is2=>isub
call str%is2(1)
str%is3=>isub
call str%is3(1)
end
