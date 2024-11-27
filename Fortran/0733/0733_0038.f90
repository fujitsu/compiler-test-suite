module mod3
contains
elemental function ifun01(i)
character(len=4) ifun01
intent(in) :: i
ifun01='1234567890'(1:i)
end function
elemental function ifun02(i)
character(len=*) i
character(len=len(i)+1) ifun02
intent(in) :: i
ifun02=i(1:2)//'z'
end function
elemental function ifun03(i)
character(len=kind(i)) ifun03
intent(in) :: i
ifun03='1234567890'(1:i)
end function
elemental function ifun04(i)
character(len=*) i
character(len=3)ifun04
intent(in) :: i
ifun04=i(1:2)//'z'
end function
end
use mod3
character ia(3)*3,ib(4)*4
ib=ifun03((/1,3,5,6/))
if (any(ib/=(/'1','123','1234','1234'/))) write(6,*) "NG"
ia=ifun02((/'12','22','333'/))
if (any(ia/=(/'12z','22z','33z'/))) write(6,*) "NG"
ib=ifun01((/1,3,5,6/))
if (any(ib/=(/'1','123','1234','1234'/))) write(6,*) "NG"
ia=ifun04((/'12','22','333'/))
if (any(ia/=(/'12z','22z','33z'/))) write(6,*) "NG"
print *,'pass'
end
