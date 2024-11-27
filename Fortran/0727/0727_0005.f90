call test01()
call test02()
call test03()
print *,'pass'
end

module mod1
interface ifun
module procedure ifunc01
module procedure ifunc02
end interface
contains
elemental function ifunc01()
character ifunc01
ifunc01='a'
end function
elemental function ifunc02(i)
character ifunc02,i
intent(in) :: i
ifunc02=i
end function
end

subroutine test01()
use mod1
character ia(10),i
i=ifun()
if (i.ne.'a') write(6,*) "NG"
ia=ifunc02((/'1','2','3','4','5','6','7','8','9','0'/))
if (any(ia.ne.(/'1','2','3','4','5','6','7','8','9','0'/))) write(6,*) "NG"
ia=ifun((/'1a','2a','3a','4a','5a','6a','7a','8a','9a','0a'/))
if (any(ia.ne.(/'1','2','3','4','5','6','7','8','9','0'/))) write(6,*) "NG"
end

module mod2
interface ifun
module procedure ifunc01
module procedure ifunc02
end interface
contains
elemental function ifunc01()
character(len=2) ifunc01
ifunc01='a'//'z'
end function
elemental function ifunc02(i)
character(len=2) ifunc02,i*1
intent(in) :: i
ifunc02=i//'z'
end function
end

subroutine test02()
use mod2
character ia(10)*2,i*2
i=ifun()
if (i.ne.'az') write(6,*) "NG"
ia=ifun((/'1','2','3','4','5','6','7','8','9','0'/))
if (any(ia.ne.(/'1z','2z','3z','4z','5z','6z','7z','8z','9z','0z'/))) write(6,*) "NG"
ia=ifun((/'1a','2a','3a','4a','5a','6a','7a','8a','9a','0a'/))
if (any(ia.ne.(/'1z','2z','3z','4z','5z','6z','7z','8z','9z','0z'/))) write(6,*) "NG"
end

module mod3
interface ifun
module procedure ifunc02,ifunc03
end interface
contains
elemental function ifunc02(i)
character(len=*) i
character(len=len(i)+1) ifunc02
intent(in) :: i
ifunc02=i(1:2)//'z'
end function
elemental function ifunc03(i)
character(len=kind(i)) ifunc03
intent(in) :: i
ifunc03='1234567890'(1:i)
end function
end

subroutine test03()
use mod3
character ia(3)*3,ib(4)*4
ib=ifun((/1,3,5,6/))
if (any(ib.ne.(/'1','123','1234','1234'/))) write(6,*) "NG"
ia=ifun((/'12','22','333'/))
if (any(ia.ne.(/'12z','22z','33z'/))) write(6,*) "NG"
end

