call sub(1)
print *,'pass'
end

subroutine sub(i)
integer :: i(1) 
if (1.eq.2) i=i
end 
