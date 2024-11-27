call test01()
call test02()
call test03()
call test04()
call test05()
call test06()
call test07()
print *,'pass'
end
subroutine errtra()
data i /1/
save
if (i.eq.1) print *,'ng'
i=i+1
end

module mod07
type ty01
 sequence
 integer :: i01 =3
end type
type (ty01) :: str1
save str1
end
recursive subroutine test07()
use mod07
type (ty01) :: aaa
if (3.ne.aaa%i01) write(6,*) "NG"
if (aaa%i01.ne.str1%i01) write(6,*) "NG"
if (3.ne.str1%i01) write(6,*) "NG"
end

module mod06
type ty01
 sequence
 integer :: i01 =1
end type
type (ty01),save :: str1
end
subroutine test06()
use mod06
type (ty01) :: aaa
if (1.ne.aaa%i01) write(6,*) "NG"
if (aaa%i01.ne.str1%i01) write(6,*) "NG"
if (1.ne.str1%i01) write(6,*) "NG"
end

subroutine test05()
type ty01
 sequence
 integer :: i01 =1
end type
type (ty01) :: str1,aaa
call isub01(aaa)
if (2.ne.aaa%i01) write(6,*) "NG"
if (1.ne.str1%i01) write(6,*) "NG"
end
subroutine isub01(str2)
type ty01
 sequence
 integer :: i01 =2
end type
type (ty01) :: str2
intent(out) :: str2
if (2.ne.str2%i01) write(6,*) "NG"
end subroutine

subroutine test04()
type ty01
 sequence
 integer :: i01 =1
end type
type (ty01) :: str1,aaa
call isub01(aaa)
contains
subroutine isub01(str2)
type (ty01) :: str2
intent(out) :: str2
do j=1,1
if (str1%i01.ne.str2%i01) write(6,*) "NG"
if (1.ne.str2%i01) write(6,*) "NG"
enddo
end subroutine
end

subroutine test03()
type ty01
 sequence
 integer :: i01 =1
end type
type (ty01) :: str1
call isub01(2)
contains
subroutine isub01(i)
type (ty01) :: str2(i)
do j=1,i
if (str1%i01.ne.str2(j)%i01) write(6,*) "NG"
if (1.ne.str2(j)%i01) write(6,*) "NG"
enddo
end subroutine
end

subroutine test01()
type ty01
 sequence
 integer :: i01 =1
end type
type ty02
 sequence
 integer :: i02 =2
 type (ty01) :: sss
end type
type (ty02) :: str1
call isub01()
contains
subroutine isub01()
type (ty02) :: str2
if (str1%i02.ne.str2%i02) write(6,*) "NG"
if (str1%sss%i01.ne.str2%sss%i01) write(6,*) "NG"
end subroutine
end
subroutine test02()
type ty01
 sequence
 integer :: i01 =1
end type
type ty02
 sequence
 integer :: i02 =2
 type (ty01) :: sss
end type
type (ty02) :: str1,aaa
call isub01(aaa)
contains
subroutine isub01(str2)
type (ty02) :: str2
if (str1%i02.ne.str2%i02) write(6,*) "NG"
if (str1%sss%i01.ne.str2%sss%i01) write(6,*) "NG"
end subroutine
end
