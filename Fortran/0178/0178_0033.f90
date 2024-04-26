integer :: arr(10)
call sub(arr)
print *,'pass'
end

subroutine sub(i)
intent(in) :: i
j=i
j=j
end subroutine
