integer :: arr(10),i(10),a(10)=(/1,2,3,4,5,6,7,8,9,10/)
arr=1
i10=1
i= sub_1(arr)+sub_2(arr+1)+sub_2(arr+1)+sub_1(arr)
print *,'pass'
contains
impure elemental function   sub_1(x)
integer,intent(in) :: x
sub_1=x
end function
impure elemental function   sub_2(x)
integer,intent(in) :: x
sub_2=x
i= sub_1(arr+1)
end function
end
