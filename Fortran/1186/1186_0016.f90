subroutine s
!!!! implicit none
  block
dimension::ia00014(10),ia00082(10)
integer  ::ia00014    ,ia00082    
ia00014(1)=1
ia00082(1)=2
if (ia00014(1)/=1) print *,1001
if (ia00082(1)/=2) print *,1002
end  block
end
call s
print *,'sngg340p : pass'
end
