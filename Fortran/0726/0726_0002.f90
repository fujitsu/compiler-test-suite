call test01()
print *,'pass'
end

elemental function ifun01(i,j)
intent(in) :: i,j
integer i
integer j
ifun01=i+j
end function

module mod01
contains
subroutine mod01_sub1()
interface
elemental function ifun01(i,j)
intent(in) :: i,j
integer i
integer j
end function
end interface
integer arr1(10),arr2(10),ians(10)
arr1=(/(i,i=1,10)/)
arr2=(/(i,i=1,10)/)
ians=ifun01(arr1,arr2)
if (.not.all(ians.eq.(/(j,j=1,10)/)*2,1))write(6,*) "NG"
ians=ifun01(arr1,2)
if (.not.all(ians.eq.(/(j,j=1,10)/)+2,1))write(6,*) "NG"
ians=ifun01(1,arr2)
if (.not.all(ians.eq.(/(j,j=1,10)/)+1,1))write(6,*) "NG"
ians=ifun02(arr1,arr2)
if (.not.all(ians.eq.(/(j,j=1,10)/)*2,1))write(6,*) "NG"
ians=ifun02(arr1,2)
if (.not.all(ians.eq.(/(j,j=1,10)/)+2,1))write(6,*) "NG"
ians=ifun02(1,arr2)
if (.not.all(ians.eq.(/(j,j=1,10)/)+1,1))write(6,*) "NG"
ians=ifun03(arr1,arr2)
if (.not.all(ians.eq.(/(j,j=1,10)/)*2,1))write(6,*) "NG"
ians=ifun03(arr1,2)
if (.not.all(ians.eq.(/(j,j=1,10)/)+2,1))write(6,*) "NG"
ians=ifun03(1,arr2)
if (.not.all(ians.eq.(/(j,j=1,10)/)+1,1))write(6,*) "NG"
contains
elemental function ifun02(i,j)
intent(in) :: i,j
integer i
integer j
ifun02=i+j
end function
end subroutine
elemental function ifun03(i,j)
intent(in) :: i,j
integer i
integer j
ifun03=i+j
end function
subroutine mod02_sub1()
interface
elemental function ifun01(i,j)
intent(in) :: i,j
integer i
integer j
end function
end interface
integer arr1(10),arr2(10),ians(10)
arr1=(/(i,i=1,10)/)
arr2=(/(i,i=1,10)/)
ians=ifun01(arr1,arr2)
if (.not.all(ians.eq.(/(j,j=1,10)/)*2,1))write(6,*) "NG"
ians=ifun01(arr1,2)
if (.not.all(ians.eq.(/(j,j=1,10)/)+2,1))write(6,*) "NG"
ians=ifun01(1,arr2)
if (.not.all(ians.eq.(/(j,j=1,10)/)+1,1))write(6,*) "NG"
ians=ifun02(arr1,arr2)
if (.not.all(ians.eq.(/(j,j=1,10)/)*2,1))write(6,*) "NG"
ians=ifun02(arr1,2)
if (.not.all(ians.eq.(/(j,j=1,10)/)+2,1))write(6,*) "NG"
ians=ifun02(1,arr2)
if (.not.all(ians.eq.(/(j,j=1,10)/)+1,1))write(6,*) "NG"
ians=ifun03(arr1,arr2)
if (.not.all(ians.eq.(/(j,j=1,10)/)*2,1))write(6,*) "NG"
ians=ifun03(arr1,2)
if (.not.all(ians.eq.(/(j,j=1,10)/)+2,1))write(6,*) "NG"
ians=ifun03(1,arr2)
if (.not.all(ians.eq.(/(j,j=1,10)/)+1,1))write(6,*) "NG"
contains
elemental function ifun02(i,j)
intent(in) :: i,j
integer i
integer j
ifun02=i+j
end function
end subroutine
end

subroutine test01()
use mod01
interface 
elemental function ifun01(i,j)
intent(in) :: i,j
integer i
integer j
end function
end interface

integer arr1(10),arr2(10),ans(10)
arr1=(/1,2,3,4,5,6,7,8,9,10/)
arr2=(/(i,i=1,10)/)
ans=ifun01(arr1,arr2)
if (.not.all(ans.eq.(/(i,i=1,10)/)*2,1))write(6,*) "NG"
ans=ifun01(arr1,2)
if (.not.all(ans.eq.(/(i,i=1,10)/)+2,1))write(6,*) "NG"
ans=ifun01(1,arr2)
if (.not.all(ans.eq.(/(i,i=1,10)/)+1,1))write(6,*) "NG"
ans=ifun02(arr1,arr2)
if (.not.all(ans.eq.(/(i,i=1,10)/)*2,1))write(6,*) "NG"
ans=ifun02(arr1,2)
if (.not.all(ans.eq.(/(i,i=1,10)/)+2,1))write(6,*) "NG"
ans=ifun02(1,arr2)
if (.not.all(ans.eq.(/(i,i=1,10)/)+1,1))write(6,*) "NG"
ans=ifun03(arr1,arr2)
if (.not.all(ans.eq.(/(i,i=1,10)/)*2,1))write(6,*) "NG"
ans=ifun03(arr1,2)
if (.not.all(ans.eq.(/(i,i=1,10)/)+2,1))write(6,*) "NG"
ans=ifun03(1,arr2)
if (.not.all(ans.eq.(/(i,i=1,10)/)+1,1))write(6,*) "NG"
call inter_sub1()
call inter_sub2()
call mod01_sub1()
call mod02_sub1()
contains
subroutine inter_sub1()
integer ians(10)
ians=ifun01(arr1,arr2)
if (.not.all(ians.eq.(/(j,j=1,10)/)*2,1))write(6,*) "NG"
ians=ifun01(arr1,2)
if (.not.all(ians.eq.(/(j,j=1,10)/)+2,1))write(6,*) "NG"
ians=ifun01(1,arr2)
if (.not.all(ians.eq.(/(j,j=1,10)/)+1,1))write(6,*) "NG"
ians=ifun02(arr1,arr2)
if (.not.all(ians.eq.(/(j,j=1,10)/)*2,1))write(6,*) "NG"
ians=ifun02(arr1,2)
if (.not.all(ians.eq.(/(j,j=1,10)/)+2,1))write(6,*) "NG"
ians=ifun02(1,arr2)
if (.not.all(ians.eq.(/(j,j=1,10)/)+1,1))write(6,*) "NG"
ians=ifun03(arr1,arr2)
if (.not.all(ians.eq.(/(j,j=1,10)/)*2,1))write(6,*) "NG"
ians=ifun03(arr1,2)
if (.not.all(ians.eq.(/(j,j=1,10)/)+2,1))write(6,*) "NG"
ians=ifun03(1,arr2)
if (.not.all(ians.eq.(/(j,j=1,10)/)+1,1))write(6,*) "NG"
end subroutine
elemental function ifun02(i,j)
intent(in) :: i,j
integer i
integer j
ifun02=i+j
end function
subroutine inter_sub2()
integer ians(10)
ians=ifun01(arr1,arr2)
if (.not.all(ians.eq.(/(j,j=1,10)/)*2,1))write(6,*) "NG"
ians=ifun01(arr1,2)
if (.not.all(ians.eq.(/(j,j=1,10)/)+2,1))write(6,*) "NG"
ians=ifun01(1,arr2)
if (.not.all(ians.eq.(/(j,j=1,10)/)+1,1))write(6,*) "NG"
ians=ifun02(arr1,arr2)
if (.not.all(ians.eq.(/(j,j=1,10)/)*2,1))write(6,*) "NG"
ians=ifun02(arr1,2)
if (.not.all(ians.eq.(/(j,j=1,10)/)+2,1))write(6,*) "NG"
ians=ifun02(1,arr2)
if (.not.all(ians.eq.(/(j,j=1,10)/)+1,1))write(6,*) "NG"
ians=ifun03(arr1,arr2)
if (.not.all(ians.eq.(/(j,j=1,10)/)*2,1))write(6,*) "NG"
ians=ifun03(arr1,2)
if (.not.all(ians.eq.(/(j,j=1,10)/)+2,1))write(6,*) "NG"
ians=ifun03(1,arr2)
if (.not.all(ians.eq.(/(j,j=1,10)/)+1,1))write(6,*) "NG"
end subroutine
end subroutine
