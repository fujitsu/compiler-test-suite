call test01()
call test02()
call test03()
call test04()
print *,'pass'
end


module mod01
save
type ty1
 integer :: i=1
end type
type (ty1) :: str1
contains
subroutine sub1()
type (ty1) :: str2
if (str2%i.ne.1) print *,'err mod01'
if (str1%i.ne.1) print *,'err mod01'
str1%i = 10
end subroutine
end module

subroutine test01() 
use mod01
call sub1()
if (str1%i.ne.10) print *,'err mod01'
end subroutine

module mod02
save
type ty1
 integer :: i(10)=(/(ia,ia=1,10)/)
end type
type (ty1) :: str1
contains
subroutine sub1()
type (ty1) :: str2
if (.not.any(str2%i.eq.(/(ia,ia=1,10)/))) print *,'err mod01'
if (.not.any(str1%i.eq.(/(ia,ia=1,10)/))) print *,'err mod01'
str1%i = 10
end subroutine
end module

subroutine test02()
use mod02
call sub1()
if (.not.any(str1%i.eq.10)) print *,'err mod01'
end subroutine

module mod03
save
type ty1
 integer :: i(10)=(/(ia,ia=1,10)/)
end type
type (ty1) :: str1
contains
subroutine sub1()
type (ty1) :: str2
if (.not.any(str2%i.eq.(/(ia,ia=1,10)/))) print *,'err mod01'
if (.not.any(str1%i.eq.(/(ia,ia=1,10)/))) print *,'err mod01'
end subroutine
end module

subroutine test03()
use mod03
call sub1()
if (.not.any(str1%i.eq.(/(ia,ia=1,10)/))) print *,'err mod01'
end subroutine

module mod04
save
type ty1
 integer :: i(10)=(/(ia,ia=1,10)/)
end type
type (ty1) :: str1
private :: str1
data ib /1/
contains
subroutine sub1()
call isub1()
call isub1()
ib=ib+10
call isub1()
call isub1()
if (ib.ne.15) print *,'err mod04'
call isub1()
call isub1()
ib=ib+100
call isub1()
call isub1()
if (ib.ne.119) print *,'err mod04'
contains
subroutine isub1()
save
type (ty1) :: str2
if (.not.any(str2%i.eq.(/(ia,ia=1,10)/))) print *,'err mod01'
if (.not.any(str1%i.eq.(/(ia,ia=1,10)/))) print *,'err mod01'
str1%i =(/(ia,ia=1,10)/)
ib=ib+1
end subroutine
end subroutine
end module

subroutine test04()
use mod04
call sub1()
end subroutine

