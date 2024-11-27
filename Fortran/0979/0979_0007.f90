integer i1
i1=99
call sub

print *,'pass'

contains
subroutine sub
  volatile :: i1
  i1=1
  if (i1 /= 1) write(6,*) "NG"
end subroutine
end
