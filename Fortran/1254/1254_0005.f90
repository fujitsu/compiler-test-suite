subroutine s
!!!! implicit none
  block
dimension::ia00014(10),ia00082(10)
ia00014(1)=1
ia00082(1)=2
if (ia00014(1)/=1) print *,1001
if (ia00082(1)/=2) print *,1002
end  block
end
call s
print *,'pass'
end
