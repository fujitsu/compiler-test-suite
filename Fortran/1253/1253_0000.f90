subroutine s
!!!! implicit none
  block
integer::ia00014,ia00082
ia00014=1
ia00082=2
if (ia00014/=1) print *,1001
if (ia00082/=2) print *,1002
end  block
end
call s
print *,'pass'
end
