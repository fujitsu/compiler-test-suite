print *,"pass"
contains
subroutine s(a)
implicit none 
value ::a
integer :: a
end subroutine
end

subroutine sub()
print *,"pass"
contains
subroutine s(a)
implicit none
integer :: a
value ::a
end subroutine
end

