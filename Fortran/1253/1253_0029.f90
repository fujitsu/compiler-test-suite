subroutine s
!!!! implicit none
class(*),pointer  ::ia00014
integer ,target :: tt
ia00014=>tt
  block
class(*),pointer  ::ia00014,ia00082
ia00014=>tt
ia00082=>tt
!if (ia00014/=1) print *,1001
!if (ia00082/=2) print *,1002
end  block
!if (ia00014/=0) print *,1003
end
call s
print *,'pass'
end
