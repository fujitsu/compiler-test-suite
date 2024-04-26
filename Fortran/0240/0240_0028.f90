interface
subroutine zee(a,b,c)
integer :: a,b,c
end subroutine
end interface
call zee(c=1, b=2, a=3)
print *,'pass'
end
subroutine zee(a,b,c)
integer :: a,b,c
end subroutine
