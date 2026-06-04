subroutine s
!!!! implicit none
character  ::ia00014
ia00014='a'
  block
character  ::ia00014,ia00082
ia00014='b'
ia00082='c'
if (ia00014/='b') print *,1001
if (ia00082/='c') print *,1002
end  block
if (ia00014/='a') print *,1003
end
call s
print *,'pass'
end
