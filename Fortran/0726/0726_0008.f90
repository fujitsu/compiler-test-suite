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

recursive subroutine test01()
type ty01
 integer :: i01(10) = 3
 integer :: i02(10) = (/(i,i=1,10)/)
end type
type (ty01) :: aaa
do i=1,10
if (3.ne.aaa%i01(i)) write(6,*) "NG"
if (i.ne.aaa%i02(i)) write(6,*) "NG"
end do
end

module mod02
save
type ty01
 integer :: i01(10) = 3
 integer :: i02(10) = (/(i,i=1,10)/)
end type
type (ty01) :: str1
end
subroutine test02()
use mod02
type (ty01) :: aaa
do i=1,10
if (3.ne.aaa%i01(i)) write(6,*) "NG"
if (i.ne.aaa%i02(i)) write(6,*) "NG"
if (aaa%i01(i).ne.str1%i01(i)) write(6,*) "NG"
if (aaa%i02(i).ne.str1%i02(i)) write(6,*) "NG"
end do
end

module mod03
save
type ty01
 integer :: i01(10) = 3
 integer :: i02(10) = (/(i,i=1,10)/)
end type
type (ty01) :: str1
end
subroutine test03()
use mod03
type (ty01) :: aaa
do i=1,10
if (3.ne.aaa%i01(i)) write(6,*) "NG"
if (i.ne.aaa%i02(i)) write(6,*) "NG"
if (aaa%i01(i).ne.str1%i01(i)) write(6,*) "NG"
if (aaa%i02(i).ne.str1%i02(i)) write(6,*) "NG"
end do
call subb()
call suba()
contains
subroutine subb()
type (ty01) :: bbb
do i=1,10
if (3.ne.bbb%i01(i)) write(6,*) "NG"
if (i.ne.bbb%i02(i)) write(6,*) "NG"
if (bbb%i01(i).ne.str1%i01(i)) write(6,*) "NG"
if (bbb%i02(i).ne.str1%i02(i)) write(6,*) "NG"
end do
end subroutine
subroutine suba()
type (ty01) :: bbb
do i=1,10
if (3.ne.bbb%i01(i)) write(6,*) "NG"
if (i.ne.bbb%i02(i)) write(6,*) "NG"
if (bbb%i01(i).ne.str1%i01(i)) write(6,*) "NG"
if (bbb%i02(i).ne.str1%i02(i)) write(6,*) "NG"
end do
end subroutine
end

module mod04
save
type ty01
 integer :: i01(10) = 3
 integer :: i02(10) = (/(i,i=1,10)/)
end type
type (ty01) :: str1
contains
subroutine ssss()
call subb()
call suba()
contains
subroutine subb()
type (ty01) :: bbb
do i=1,10
if (3.ne.bbb%i01(i)) write(6,*) "NG"
if (i.ne.bbb%i02(i)) write(6,*) "NG"
if (bbb%i01(i).ne.str1%i01(i)) write(6,*) "NG"
if (bbb%i02(i).ne.str1%i02(i)) write(6,*) "NG"
end do
end subroutine
subroutine suba()
type (ty01) :: bbb
do i=1,10
if (3.ne.bbb%i01(i)) write(6,*) "NG"
if (i.ne.bbb%i02(i)) write(6,*) "NG"
if (bbb%i01(i).ne.str1%i01(i)) write(6,*) "NG"
if (bbb%i02(i).ne.str1%i02(i)) write(6,*) "NG"
end do
end subroutine
end subroutine
end
subroutine test04()
use mod04
type (ty01) :: aaa
do i=1,10
if (3.ne.aaa%i01(i)) write(6,*) "NG"
if (i.ne.aaa%i02(i)) write(6,*) "NG"
if (aaa%i01(i).ne.str1%i01(i)) write(6,*) "NG"
if (aaa%i02(i).ne.str1%i02(i)) write(6,*) "NG"
end do
call ssss()
call subb()
call suba()
contains
subroutine subb()
type (ty01) :: bbb
do i=1,10
if (3.ne.bbb%i01(i)) write(6,*) "NG"
if (i.ne.bbb%i02(i)) write(6,*) "NG"
if (bbb%i01(i).ne.str1%i01(i)) write(6,*) "NG"
if (bbb%i02(i).ne.str1%i02(i)) write(6,*) "NG"
end do
end subroutine
subroutine suba()
type (ty01) :: bbb
do i=1,10
if (3.ne.bbb%i01(i)) write(6,*) "NG"
if (i.ne.bbb%i02(i)) write(6,*) "NG"
if (bbb%i01(i).ne.str1%i01(i)) write(6,*) "NG"
if (bbb%i02(i).ne.str1%i02(i)) write(6,*) "NG"
end do
end subroutine
end
