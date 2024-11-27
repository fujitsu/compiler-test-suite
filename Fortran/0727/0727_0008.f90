call test01()
call test02()
call test03()
print *,'pass'
end

module mod1
interface ifun
module procedure ifunc02,ifunc03
end interface
contains
elemental function ifunc02(i)
character(len=*) i
character(len=len(i//'a')) ifunc02
intent(in) :: i
ifunc02=i(1:2)//'z'//i(3:3)
end function
elemental function ifunc03(i)
character(len=bit_size(int(i,1))) ifunc03
intent(in) :: i
ifunc03='1234567890'(1:bit_size(int(i,1)))
end function
end

subroutine test01()
use mod1
character ia(3)*4
character ib(4)*8
ib=ifun((/1,3,5,6/))
if (any(ib.ne.(/'12345678','12345678','12345678','12345678'/))) write(6,*) "NG"

ia=ifun((/'125','226','333'/))
if (any(ia.ne.(/'12z5','22z6','33z3'/))) write(6,*) "NG"

ib=ifunc03((/1,3,5,6/))
if (any(ib.ne.(/'12345678','12345678','12345678','12345678'/))) write(6,*) "NG"

ia=ifunc02((/'125','226','333'/))
if (any(ia.ne.(/'12z5','22z6','33z3'/))) write(6,*) "NG"
end

subroutine test02()
character ia(3)*4
character ib(4)*8
ib=ifunc03((/1,3,5,6/))
if (any(ib.ne.(/'12345678','12345678','12345678','12345678'/))) write(6,*) "NG"

ia=ifunc02((/'125','226','333'/))
if (any(ia.ne.(/'12z5','22z6','33z3'/))) write(6,*) "NG"
contains 
elemental function ifunc02(i)
character(len=*) i
character(len=len(i//'a')) ifunc02
intent(in) :: i
ifunc02=i(1:2)//'z'//i(3:3)
end function
elemental function ifunc03(i)
character(len=bit_size(int(i,1))) ifunc03
intent(in) :: i
ifunc03='1234567890'(1:bit_size(int(i,1)))
end function
end

subroutine test03()
interface
elemental function ifunc02(i)
character(len=*) i
character(len=len(i//'a')) ifunc02
intent(in) :: i
end function
elemental function ifunc03(i)
character(len=bit_size(int(i,1))) ifunc03
intent(in) :: i
end function
end interface
character ia(3)*4
character ib(4)*8
ib=ifunc03((/1,3,5,6/))
if (any(ib.ne.(/'12345678','12345678','12345678','12345678'/))) write(6,*) "NG"

ia=ifunc02((/'125','226','333'/))
if (any(ia.ne.(/'12z5','22z6','33z3'/))) write(6,*) "NG"
end
elemental function ifunc02(i)
character(len=*) i
character(len=len(i//'a')) ifunc02
intent(in) :: i
ifunc02=i(1:2)//'z'//i(3:3)
end function
elemental function ifunc03(i)
character(len=bit_size(int(i,1))) ifunc03
intent(in) :: i
ifunc03='1234567890'(1:bit_size(int(i,1)))
end function

