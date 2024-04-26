interface swap
subroutine real_swap(x,y)
implicit none
real, intent(inout) :: x,y
end subroutine real_swap
subroutine int_swap(x,y)
implicit none
integer, intent(inout) :: x,y
end subroutine int_swap
end interface
print *,'pass'
end
