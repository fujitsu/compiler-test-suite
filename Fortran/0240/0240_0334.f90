integer,dimension(4) :: a
call zee(a)
print *,'pass'
end program
subroutine zee(x)
integer,dimension(-1:*) :: x
x(-1:2)=1
end subroutine
