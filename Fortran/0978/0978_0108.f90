subroutine sub(pi)
  integer,pointer,intent(out) :: pi
  integer,target :: ti = 100
  pi => ti 
end subroutine

interface
subroutine sub(pi)
  integer,pointer,intent(out) :: pi
end subroutine
end interface

integer,pointer :: i
call sub(i)
if (i/=100)write(6,*) "NG"
print *,'pass'
end
