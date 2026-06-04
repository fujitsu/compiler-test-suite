subroutine s
!!!! implicit none
complex  ::ia00014
ia00014=0
  block
complex  ::ia00014,ia00082
ia00014=1
ia00082=2
if (ia00014/=1) print *,1001
if (ia00082/=2) print *,1002
end  block
if (ia00014/=0) print *,1003
end
call s
print *,'pass'
end
