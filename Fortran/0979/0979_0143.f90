subroutine s1(x,y,n)
implicit character(*)(x)
implicit character(n)(y)
integer :: n
value y
integer y
value x
integer x
i=x
i=y
i=i
end 

interface 
subroutine s1(x,y,n)
implicit character(*)(x)
implicit character(n)(y)
integer :: n
value y
integer y
value x
integer x
end subroutine
end interface
call s1(1,2,1)
print *,'pass'
end

