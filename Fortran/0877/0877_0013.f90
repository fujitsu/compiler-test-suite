interface
subroutine su(a) 
pointer       :: a
end subroutine
end interface

pointer       :: xx
allocate(xx)
xx=1
call su(xx)
print *,xx
end

subroutine su(a) 
a=1
print *,a
end subroutine
