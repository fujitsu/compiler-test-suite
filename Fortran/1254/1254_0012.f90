subroutine s
!!!! implicit none
interface ia00014
subroutine ia00014()
end
end interface
interface ia00015
subroutine ia00015()
end
end interface
interface ia00082
subroutine ia00082()
end
end interface
interface ia00085
subroutine ia00084()
end
end interface
  block
integer::ia00014,ia00015,ia00082,ia00083
ia00014=1
ia00015=3
ia00082=2
ia00083=4
if (ia00014/=1) print *,1001
if (ia00082/=2) print *,1002
if (ia00015/=3) print *,1003
if (ia00083/=4) print *,1004
end  block
!if (ia00014/=0) print *,2001
!if (ia00082/=0) print *,2002
!if (ia00015/=0) print *,2003
!if (ia00083/=0) print *,2004
end
call s
print *,'pass'
end
