#define D4 DD
interface operator(.eq.)
function ifun(cha,i)
intent(in) :: cha,i
character cha
end function
end interface
integer ,parameter :: D4 = 1
str=int(6h1.D4.1.eq.D4)
10 format (1H,6H1.D4.1)
if (1.eq.2) write(6,'(1H,6H1.D4.1)')
print *,'pass'
end
function ifun(cha,i)
intent(in) :: cha,i
character cha,ccc
ccc=cha
ccc=ccc
j=1
j=j
ifun=1
end function
