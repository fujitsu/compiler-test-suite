subroutine s
!!!! implicit none
  block
integer::ia00014,ia00082
ia00014=1
ia00082=2
if (ia00014/=1) print *,1001
if (ia00082/=2) print *,1002
associate(ii=>ia00014)
  block
  block
integer::ia00014,ia00082

if (ii/=1) print *,1000
ia00014=1
ia00082=2
if (ia00014/=1) print *,1001
if (ia00082/=2) print *,1002
end  block
end  block
end associate
end  block
end
call s
print *,'pass'
end
