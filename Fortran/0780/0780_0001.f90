complex :: a
call sub(a%re)
print *,a
end
subroutine sub(r)
real*8:: r
print *,r
end
