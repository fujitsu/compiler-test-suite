integer(kind=8):: a
real(kind=8) :: b
common /xxx/ a, b

call sub()
end

subroutine sub()
 integer(kind=8):: a
real(kind=16) :: b
 common /xxx/ a, b

 print *, a, b
end
