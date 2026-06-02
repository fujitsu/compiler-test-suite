subroutine s
!!!! implicit none
integer::ia00934=0,ia00014=0,ia00082=0
  block
integer::                ia00082
integer::        ia00014
integer::ia00934
ia00934=1
ia00014=3
ia00082=2
if (ia00934/=1) print *,1002
if (ia00082/=2) print *,1002
if (ia00014/=3) print *,1003
end  block
if (ia00934/=0) print *,2001
if (ia00082/=0) print *,2002
if (ia00014/=0) print *,2003
end
call s
print *,'pass'
end
