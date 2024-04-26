call xxxx()
print *,'pass'
contains
subroutine xxxx
integer :: arr(10),i(10)
arr=1
i= sub(arr+1)
end subroutine
impure elemental function   sub(i)
intent(in) :: i
integer :: jj=1
sub=i
end function
end
