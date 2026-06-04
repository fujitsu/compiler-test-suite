subroutine s
!!!! implicit none

structure /aa/ !ia00014
 integer  ::aa
end structure
record /aa/ ia00014
ia00014%aa=0
  block
structure /aa/ !ia00014,ia00082
 integer  ::aa
end structure
record /aa/ ia00014,ia00082
ia00014%aa=1
ia00082%aa=2
if (ia00014%aa/=1) print *,1001
if (ia00082%aa/=2) print *,1002
end  block
if (ia00014%aa/=0) print *,1003
end
call s
print *,'pass'
end
