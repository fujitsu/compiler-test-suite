integer :: arr(10),i(10),a(10)=(/1,2,3,4,5,6,7,8,9,10/)
arr=1
i10=1
i= sub_1(arr)+sub_2(arr+1)
do ia=1,ifun(sub_3(arr))
if (1.eq.2) then
print *,(1,is=1,ifun(sub_2(arr)))
end if
end do
print *,'pass'
contains
function ifun(arr)
integer :: arr(10)
ifun =1
end
impure elemental function   sub_3(x)
integer,intent(in) :: x
integer :: sub_3
sub_3=x
end function
impure elemental function   sub_1(x)
integer,intent(in) :: x
integer :: sub_1
sub_1=x
end function
impure elemental function   sub_2(x)
integer,intent(in) :: x
integer :: sub_2
sub_2=x
end function
end