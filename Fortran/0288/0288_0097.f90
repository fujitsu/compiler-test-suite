call s
print *,'pass'
end
subroutine s
real :: a
integer :: i
i=1
a = transfer(i,a)
end

