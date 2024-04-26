integer,parameter :: i=1
integer,parameter :: a(1)=1
call sub(a(1))
call sub(i)
call sub(1)
print *,'pass'
end

subroutine sub(i)
integer :: i(1) 
end 
