subroutine zee(a, b, c)
implicit none
real, intent(in), optional :: a, c
real, intent(in) :: b
end subroutine zee

interface
subroutine zee(a, b, c)
implicit none
real, intent(in), optional :: a, c
real, intent(in) :: b
end subroutine zee
end interface
call zee(b=3.0)
call zee(2.0, 3.0)
call zee(b=3.0, c=8.5)
print *,'pass'
end
