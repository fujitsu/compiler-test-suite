call test01()
call test02()
call test03()
call test04()
print *,'pass'
end

subroutine test01()
type ty1
 integer :: i01
 integer :: i02 = 1
 integer :: i03(2) = 4
 integer :: i04(2) = (/4,40/)
 integer :: i05 
end type
type ty2
 type (ty1) :: sss = ty1(1,2,3,4,5)
 integer :: i
end type
type ty3
 type (ty2),pointer :: ppp 
end type
type (ty3),pointer :: str
allocate(str)
allocate(str%ppp)
if (str%ppp%sss%i01.ne.1) write(6,*) "NG"
if (str%ppp%sss%i02.ne.2) write(6,*) "NG"
if (str%ppp%sss%i03(1).ne.3) write(6,*) "NG"
if (str%ppp%sss%i03(2).ne.3) write(6,*) "NG"
if (str%ppp%sss%i04(1).ne.4) write(6,*) "NG"
if (str%ppp%sss%i04(2).ne.4) write(6,*) "NG"
if (str%ppp%sss%i05.ne.5) write(6,*) "NG"
end

subroutine test02()
type ty1
 integer :: i01=10
 integer :: i02= 20
 integer :: i03(2) = (/30,31/)
 integer :: i04(2) = (/40,41/)
 integer :: i05 =50
end type
type ty2
 type (ty1) :: sss
 integer :: i
end type
type ty3
 type (ty2),pointer :: ppp 
end type
type (ty3),pointer :: str
allocate(str)
allocate(str%ppp)
if (str%ppp%sss%i01.ne.10) write(6,*) "NG"
if (str%ppp%sss%i02.ne.20) write(6,*) "NG"
if (str%ppp%sss%i03(1).ne.30) write(6,*) "NG"
if (str%ppp%sss%i03(2).ne.31) write(6,*) "NG"
if (str%ppp%sss%i04(1).ne.40) write(6,*) "NG"
if (str%ppp%sss%i04(2).ne.41) write(6,*) "NG"
if (str%ppp%sss%i05.ne.50) write(6,*) "NG"
end

module mod03
type ty1
 integer :: i01
 integer :: i02 = 1
 integer :: i03(2) = 4
 integer :: i04(2) = (/4,40/)
 integer :: i05 
end type
end
subroutine test03()
use mod03
type ty2
 type (ty1) :: sss = ty1(1,2,3,4,5)
 integer :: i
end type
type ty3
 type (ty2),pointer :: ppp 
end type
type (ty3),pointer :: str
allocate(str)
allocate(str%ppp)
if (str%ppp%sss%i01.ne.1) write(6,*) "NG"
if (str%ppp%sss%i02.ne.2) write(6,*) "NG"
if (str%ppp%sss%i03(1).ne.3) write(6,*) "NG"
if (str%ppp%sss%i03(2).ne.3) write(6,*) "NG"
if (str%ppp%sss%i04(1).ne.4) write(6,*) "NG"
if (str%ppp%sss%i04(2).ne.4) write(6,*) "NG"
if (str%ppp%sss%i05.ne.5) write(6,*) "NG"
end

module mod04
type ty1
 integer :: i01=10
 integer :: i02= 20
 integer :: i03(2) = (/30,31/)
 integer :: i04(2) = (/40,41/)
 integer :: i05 =50
end type
end
subroutine test04()
use mod04
type ty2
 type (ty1) :: sss
 integer :: i
end type
type ty3
 type (ty2),pointer :: ppp 
end type
type (ty3),pointer :: str
allocate(str)
allocate(str%ppp)
if (str%ppp%sss%i01.ne.10) write(6,*) "NG"
if (str%ppp%sss%i02.ne.20) write(6,*) "NG"
if (str%ppp%sss%i03(1).ne.30) write(6,*) "NG"
if (str%ppp%sss%i03(2).ne.31) write(6,*) "NG"
if (str%ppp%sss%i04(1).ne.40) write(6,*) "NG"
if (str%ppp%sss%i04(2).ne.41) write(6,*) "NG"
if (str%ppp%sss%i05.ne.50) write(6,*) "NG"
end
