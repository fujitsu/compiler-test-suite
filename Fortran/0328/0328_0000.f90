integer :: a,b
a=1
b=2
call sub(a,a,b)
write (1,*) a
print *,'pass'
end

subroutine sub(a,b,c)
 integer :: a,b,c
 a=b
 b=c
end
