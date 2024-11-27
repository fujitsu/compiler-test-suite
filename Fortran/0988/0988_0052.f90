type ty1
integer i
end type 
type (ty1) :: i
call sub(i)
end
subroutine sub(i)
type ty1
integer i(10)
end type 
type (ty1) :: i,j
j=i
end
