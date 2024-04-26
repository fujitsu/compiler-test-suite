interface
subroutine sub(x1,x2,x3)
integer :: x1,x2
character(4) :: x3
end subroutine
end interface
block
procedure(sub)::d1
call d1(2,3,'pass')
end block
end

subroutine d1(x1,x2,x3)
integer :: x1,x2
character(4) :: x3

if(x1+x2 == 5) print*,x3
end subroutine

