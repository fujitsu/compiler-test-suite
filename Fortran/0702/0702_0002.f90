call sub1()
print *,'pass'
end

module mod01
contains
recursive function ifun01(arg1) result(ians)
integer arg1(:)
integer ians(size(array=arg1,dim=1))
integer ians1(size(array=arg1,dim=1))
ians=(/1,2,3,4,5,6,7,8,9,10/)
return
entry ifun02(arg1) result(ians1)
ians1=ifun01((/1,2,3,4,5,6,7,8,9,10/))
ians1=ifun02((/1,2,3,4,5,6,7,8,9,10/))
ians1=ifun0a((/1,2,3,4,5,6,7,8,9,10/))
ians1=ifun0b((/1,2,3,4,5,6,7,8,9,10/))
end function
recursive function ifun0a(arg1) result(ians)
integer arg1(:)
integer ians(size(dim=1,array=arg1))
integer ians1(size(dim=1,array=arg1))
ians=ifun01((/1,2,3,4,5,6,7,8,9,10/))
return
entry ifun0b(arg1) result(ians1)
ians1=ifun01((/1,2,3,4,5,6,7,8,9,10/))
ians1=ifun02((/1,2,3,4,5,6,7,8,9,10/))
ians1=ifun0a((/1,2,3,4,5,6,7,8,9,10/))
ians1=ifun0b((/1,2,3,4,5,6,7,8,9,10/))
end function
end

subroutine sub1()
use mod01
integer a(10)
a=ifun01(a)
do i=1,10
 if (a(i).ne.i) print *,'ng'
end do
end
