module mod
contains
function ifun01(i,j)
intent(in) :: i,j
pointer :: i
character :: j,jj
integer :: i,ii
jj=j
jj=jj
ii=i
ii=ii
ifun01=1
end function
function ifun02(i,j)
intent(in) :: i,j
pointer :: j
character :: j,jj
integer :: i,ii
jj=j
jj=jj
ii=i
ii=ii
ifun02=2
end function
function ifun03(i,j)
intent(in) :: i,j
pointer :: j,i
character :: j,jj
integer :: i,ii
jj=j
jj=jj
ii=i
ii=ii
ifun03=3
end function

end
call test01()
print *,'pass'
end

subroutine test01()
use mod
interface operator(+)
 module procedure ifun01
end interface
interface operator(.aaa.)
 module procedure ifun02
end interface
interface operator(.bbb.)
 module procedure ifun03
end interface
integer ,pointer :: ip
character ,pointer :: chap
character  :: cha
allocate(ip,chap)
ip=1
chap='a'
cha='a'
cha=cha
i=ip+'a'
if (i.ne.1) write(6,*) "NG"
i=i.aaa.chap
if (i.ne.2) write(6,*) "NG"
i=ip.bbb.chap
if (i.ne.3) write(6,*) "NG"
end 
