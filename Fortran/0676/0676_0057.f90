subroutine subr4(a,b,c)
complex(kind=4) :: a,b,c
a = b*c
print *,a
a = b+c
print *,a
a = b-c
print *,a
a = a*b+a*(b+c)-b*(a+c)
print *,a
end subroutine

subroutine subr8(a,b,c)
complex(kind=8) :: a,b,c
a = b*c
print *,b
a = b+c
print *,a
a = b-c
print *,a
a = a*b+a*(b+c)-b*(a+c)
print *,a
end subroutine

program main
complex(kind=4) :: a4,b4,c4
complex(kind=8) :: a8,b8,c8
a4 = (1.0_4,2.0_4)
b4 = (3.0_4,4.0_4)
c4 = (5.0_4,6.0_4)
call subr4(a4,b4,c4)
a8 = (1.0_8,2.0_8)
b8 = (3.0_8,4.0_8)
c8 = (5.0_8,6.0_8)
call subr8(a8,b8,c8)
end program
