subroutine xxxx
integer :: arr(10),i
arr=1
i= sub(arr+1)
end subroutine

function   sub(i)
integer :: i(10)
sub=i(1)
end function

call xxxx()
print *,'pass'
end
