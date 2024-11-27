module mod
type int
 integer :: ii
 character :: cc='b'
end type
end
use mod
type (int) :: str =int(1,'a')
interface int
 elemental function ifun(i,j)
  intent(in) :: i,j
  integer :: i
 end function
end interface
type ,extends(int)::sss
 integer :: vv
end type
type (sss) :: s
integer :: i(3)
s=sss(int(ii=1,cc='a'),1)


i=ifun((/1,3,1/),2)
if (i(1).ne.3) print *,'err'
if (i(2).ne.5) print *,'err'


str=int(ii=1,cc='a')
i=int(i=(/1,3,1/),j=2)
str=int(cc='a',ii=1)
if (i(1).ne.3) print *,'err1'
if (i(2).ne.5) print *,'err2'

i=int((/3,7,6/),j=2)
if (i(1).ne.5) print *,'err3'
if (i(3).ne.8) print *,'err4'

i=int(j=1,i=(/10,101,102/))
if (i(1).ne.100) print *,'err5'
if (i(3).ne.103) print *,'err6'
print *,'pass'
end

 function ifun(i,j)  result(ia)
  intent(in) :: i,j
if (i.eq.10) then
ia=100
else
ia=i+j
end if
 end function
