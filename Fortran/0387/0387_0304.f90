call test01()
call test02()
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
 type (ty1) ,pointer :: sss
 procedure(isub),nopass,pointer :: is => null()
 procedure(isub),nopass,pointer :: is2 => null()
 procedure(isub),nopass,pointer :: is3 => null()
end type
type (ty1) :: str
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

module mod2
type ty1a
 procedure(ifun),nopass,pointer :: ip 
 procedure(ifun),nopass,pointer :: ip2 => null()
 procedure(ifun),nopass,pointer :: ip3 => null()
 type (ty1a) ,pointer :: sssA
 procedure(isub),nopass,pointer :: is => null()
 procedure(isub),nopass,pointer :: is2 => null()
 procedure(isub),nopass,pointer :: is3 => null()
 type (ty1a) ,pointer :: ss
end type
type (ty1a),save :: stra
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
subroutine test02()
use mod2
type ty1
 procedure(ifun),nopass,pointer :: ip 
 procedure(ifun),nopass,pointer :: ip2 => null()
 procedure(ifun),nopass,pointer :: ip3 => null()
 type (ty1) ,pointer :: sss
 procedure(isub),nopass,pointer :: is => null()
 procedure(isub),nopass,pointer :: is2 => null()
 procedure(isub),nopass,pointer :: is3 => null()
end type
type (ty1a) :: str

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



stra%ip=>ifun
if(stra%ip(3).ne.3) print *,'fail'
stra%ip2=>ifun
if(stra%ip2(4).ne.4) print *,'fail'
stra%ip3=>ifun
if(stra%ip3(5).ne.5) print *,'fail'
stra%is=>isub
call stra%is(1)
stra%is2=>isub
call stra%is2(1)
stra%is3=>isub
call stra%is3(1)
end
