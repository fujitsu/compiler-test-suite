subroutine s
 implicit none
integer::ia00014=0,ia00015=0,ia00082=0,ia00083=0
  block
integer::ia00014,ia00082
  block
integer::ia00015,ia00083
  block
ia00014=1
ia00015=3
ia00082=2
ia00083=4
if (ia00014/=1) print *,1001
if (ia00082/=2) print *,1002
if (ia00015/=3) print *,1003
if (ia00083/=4) print *,1004
end  block
end  block
end  block
if (ia00014/=0) print *,2001
if (ia00082/=0) print *,2002
if (ia00015/=0) print *,2003
if (ia00083/=0) print *,2004
end
call s
print *,'pass'
end
