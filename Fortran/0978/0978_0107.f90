subroutine sub(pi)
  integer,pointer,intent(in) :: pi
  if (pi/=100)write(6,*) "NG"
end subroutine

interface
subroutine sub(pi)
  integer,pointer,intent(in) :: pi
end subroutine
end interface

integer,pointer :: i
allocate (i)
i = 100
call sub(i)
print *,'pass'
end

