call test01()
call test02()
print *,'pass'
end

module mod1
interface ifun
module procedure ifunc02
end interface
contains
recursive function ifunc02(i) result(ifunc)
character(len=*) i(3)
character(len=len(i)) ifunc(3)
intent(in) :: i
if (len(i)==1) then
ifunc=i
else if (len(i)>3) then
ifunc=ifunc02((/('a',j=1,3)/))//ifunc02((/('xx',j=1,3)/))//i
else 
ifunc='z'//i
endif
end function
end

subroutine test01()
use mod1
character ia(3)*3
character ib(3)*4
ia=ifunc02((/'125','226','333'/))
if (any(ia.ne.(/'z12','z22','z33'/))) write(6,*) "NG"
ib=ifunc02((/'9991','8881','7771'/))
if (any(ib.ne.(/'azx9','azx8','azx7'/))) write(6,*) "NG"
end


module mod2
interface ifun
module procedure ifunc02
end interface
contains
recursive function ifunc02(i,ii) result(ifunc)
character(len=*) i(:)
character(len=len(i)) ifunc(ii)
character cha(2)
intent(in) :: i
if (len(i)==1) then
ifunc=i
else if (len(i)>3) then
cha=ifunc02((/'a','v'/),2)
ifunc=cha(1)//cha(2)//ifunc02((/('xx',j=1,3)/),3)//i
else 
ifunc='z'//i
endif
end function
end

subroutine test02()
use mod2
character ia(3)*3
character ib(3)*5
ia=ifunc02((/'125','226','333'/),3)
if (any(ia.ne.(/'z12','z22','z33'/))) write(6,*) "NG"
ib=ifunc02((/'99911','88811','77711'/),3)
if (any(ib.ne.(/'avzx9','avzx8','avzx7'/))) write(6,*) "NG"
end

