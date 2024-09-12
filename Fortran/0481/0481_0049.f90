use mmm
call ssss()
end
module mmm
contains
subroutine ssss()
integer :: arr(10),i(10),a(10)=(/1,2,3,4,5,6,7,8,9,10/)
arr=1
i10=1
i= sub_1(arr)+sub_2(arr+1)+sub_2(arr+1)+sub_1(arr)
i= sub_1(arr)+sub_2(arr+1)+sub_2(arr+1)+sub_1(arr)
i= sub_1(arr)+sub_2(arr+1)+sub_2(arr+1)+sub_1(arr)
i= sub_1(arr)+sub_2(arr+1)+sub_2(arr+1)+sub_1(arr)
i= sub_1(arr)+sub_2(arr+1)+sub_2(arr+1)+sub_1(arr)
print *,'pass'
end
impure elemental function   sub_1(i)
intent(in) :: i
sub_1=i
end function
impure elemental function   sub_2(i)
intent(in) :: i
sub_2=i
contains
subroutine subbb()
if (1.eq.2) call ssss()
end 
end function
end
