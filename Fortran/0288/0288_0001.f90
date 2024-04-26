interface
subroutine zee(a,b,c)
integer :: a,b,c
end subroutine
end interface
call zee(c=1,b=2,a=3)
print *,'pass'
end
subroutine zee(a,b,c)
integer :: a,b,c
if (a.ne.3) print *,'err'
if (b.ne.2) print *,'err'
if (c.ne.1) print *,'err'
end subroutine
