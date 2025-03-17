call test01()
call test02()
call test03()
call test04()
print *,'pass'
end
blockdata ssss
common /com/ i
data i/1/
end

subroutine test01()
integer call,sub,sub1,sub3,sub4
i=1
call = sub(i)
call = sub(i)
i=1
call = sub1(i)
call = sub1(i)
call = sub3()
call = sub3()
call = sub4()
call = sub4()
end

recursive function   sub(ii) result(iii)
save
type ty1
 integer :: i=1
end type
type (ty1) :: str ,str2
iii=1
if (str%i.ne.ii) write(6,*) "NG"
iii=1
if (str2%i.ne.ii) write(6,*) "NG"
ii=ii+1
str%i=str%i+1
str2%i=str2%i+1
end
function   sub1(ii) result(iii)
save
type ty1
 integer :: i=1
end type
type (ty1) :: str ,str2
type ty2
 integer :: i=2
end type
type (ty2) :: swr ,swr2
if (swr%i.ne.2) write(6,*) "NG"
if (swr2%i.ne.2) write(6,*) "NG"
if (str%i.ne.ii) write(6,*) "NG"
iii=1
if (str2%i.ne.ii) write(6,*) "NG"
ii=ii+1
str%i=str%i+1
str2%i=str2%i+1
end

recursive function   sub3() result(iii)
type ty1
 integer :: i=1
end type
type (ty1) :: str ,str2
if (str%i.ne.1) write(6,*) "NG"
iii=1
if (str2%i.ne.1) write(6,*) "NG"
str%i=str%i+1
str2%i=str2%i+1
end
function   sub4() result(iii)
type ty1
 integer :: i=1
end type
type (ty1) :: str ,str2
if (str%i.ne.1) write(6,*) "NG"
iii=1
if (str2%i.ne.1) write(6,*) "NG"
str%i=str%i+1
str2%i=str2%i+1
end

subroutine test02()
i=1
call= isub(i)
call= isub(i)
i=1
call= isub1(i)
call= isub1(i)
call= isub3()
call= isub3()
call= isub4()
call= isub4()
contains
recursive function   isub(ii) result(iii)
save
type ty1
 integer :: i=1
end type
type (ty1) :: str ,str2
if (str%i.ne.ii) write(6,*) "NG"
iii=1
if (str2%i.ne.ii) write(6,*) "NG"
ii=ii+1
str%i=str%i+1
str2%i=str2%i+1
end function  
function   isub1(ii) result(iii)
save 
type ty1
 integer :: i=1
end type
type (ty1) :: str ,str2
if (str%i.ne.ii) write(6,*) "NG"
iii=1
if (str2%i.ne.ii) write(6,*) "NG"
ii=ii+1
str%i=str%i+1
str2%i=str2%i+1
end function  
recursive function   isub3() result(iii)
type ty1
 integer :: i=1
end type
type (ty1) :: str ,str2
if (str%i.ne.1) write(6,*) "NG"
iii=1
if (str2%i.ne.1) write(6,*) "NG"
str%i=str%i+1
str2%i=str2%i+1
end function  
function   isub4() result(iii)
type ty1
 integer :: i=1
end type
type (ty1) :: str ,str2
if (str%i.ne.1) write(6,*) "NG"
iii=1
if (str2%i.ne.1) write(6,*) "NG"
str%i=str%i+1
str2%i=str2%i+1
end function  
end

module mod
contains
recursive function   isub(ii) result(iii)
save
type ty1
 integer :: i=1
end type
type (ty1) :: str ,str2
if (str%i.ne.ii) write(6,*) "NG"
iii=1
if (str2%i.ne.ii) write(6,*) "NG"
ii=ii+1
str%i=str%i+1
str2%i=str2%i+1
end function  
function   isub1(ii) result(iii)
save 
type ty1
 integer :: i=1
end type
type (ty1) :: str ,str2
if (str%i.ne.ii) write(6,*) "NG"
iii=1
if (str2%i.ne.ii) write(6,*) "NG"
ii=ii+1
str%i=str%i+1
str2%i=str2%i+1
end function  
recursive function   isub3() result(iii)
type ty1
 integer :: i=1
end type
type (ty1) :: str ,str2
if (str%i.ne.1) write(6,*) "NG"
iii=1
if (str2%i.ne.1) write(6,*) "NG"
str%i=str%i+1
str2%i=str2%i+1
end function  
function   isub4() result(iii)
type ty1
 integer :: i=1
end type
type (ty1) :: str ,str2
if (str%i.ne.1) write(6,*) "NG"
iii=1
if (str2%i.ne.1) write(6,*) "NG"
str%i=str%i+1
str2%i=str2%i+1
end function  
end
subroutine test03()
use mod
i=1
call =isub(i)
call =isub(i)
i=1
call =isub1(i)
call =isub1(i)
call =isub3()
call =isub3()
call =isub4()
call =isub4()
end

module mod4
contains
subroutine xxxx() 
i=1
call =isub(i)
call =isub(i)
i=1
call =isub1(i)
call =isub1(i)
call =isub3()
call =isub3()
call =isub4()
call =isub4()
contains
recursive function   isub(ii) result(iii)
save
type ty1
 integer :: i=1
end type
type (ty1) :: str ,str2
if (str%i.ne.ii) write(6,*) "NG"
iii=1
if (str2%i.ne.ii) write(6,*) "NG"
ii=ii+1
str%i=str%i+1
str2%i=str2%i+1
end function  
function   isub1(ii) result(iii)
save 
type ty1
 integer :: i=1
end type
type (ty1) :: str ,str2
if (str%i.ne.ii) write(6,*) "NG"
iii=1
if (str2%i.ne.ii) write(6,*) "NG"
ii=ii+1
str%i=str%i+1
str2%i=str2%i+1
end function  
recursive function   isub3() result(iii)
type ty1
 integer :: i=1
end type
type (ty1) :: str ,str2
if (str%i.ne.1) write(6,*) "NG"
iii=1
if (str2%i.ne.1) write(6,*) "NG"
str%i=str%i+1
str2%i=str2%i+1
end function  
function   isub4() result(iii)
type ty1
 integer :: i=1
end type
type (ty1) :: str ,str2
if (str%i.ne.1) write(6,*) "NG"
iii=1
if (str2%i.ne.1) write(6,*) "NG"
str%i=str%i+1
str2%i=str2%i+1
end function  
end subroutine
end
subroutine   test04() 
use mod4
call xxxx()
end
