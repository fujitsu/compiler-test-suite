integer ,parameter :: i=int(z"11",8)
integer :: j(10)
integer :: iii = int(z"11",8)
integer :: arr(int(z"F",8))
type ty1
 integer :: iii = int(z"11",8)
end type
type (ty1) :: str
data (j(k),k=1,int(z"a",8)) /1,2,3,4,5,6,7,8,9,10/
if (str%iii.ne.iii) write(6,*) "NG"
if (i.ne.int(z"11",8)) write(6,*) "NG"
k=z"11"
do k=1,10
if (j(k).ne.k) write(6,*) "NG"
end do
do k=1,int(z"F",8)
arr(k)=k
end do
do k=int(z"1",8),int(z"F",8)
if (arr(k).ne.k) write(6,*) "NG"
end do
call test01()
call test02()
call sub(10)
call subc(10)
print *,"pass"
contains
subroutine sub(i)
integer :: arr(i+int(z"F",8))
arr=1
end subroutine
subroutine subc(i)
character(len=i+int(z"F",8)) :: arr
arr="a"
end subroutine
end

module mod01
interface aaa
module procedure  subb
end interface
contains
subroutine subb(i,j,arr,cha)
integer :: arr(i+int(z"2",8))
character(len=j+int(z"2",8)) :: cha
end subroutine
end
subroutine test01()
use mod01
integer :: arr(8+int(z"2",8))
character(len=8+int(z"2",8)) :: cha
call aaa(8,8,arr,cha)
end subroutine


module mod02
contains
function ifun(i) result(var)
integer :: var(i+int(z"2",8))
do k=1,i+int(z"2",8)
var(k)=k
end do
end function
end
subroutine test02()
use mod02
integer :: arr(8+int(z"2",8))
arr=ifun(8)
do k=1,8+int(z"2",8)
if (arr(k).ne.k) write(6,*) "NG"
end do
end subroutine

