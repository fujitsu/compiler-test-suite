subroutine s
!!!! implicit none
  block
allocatable::a00014,a00082
allocate( a00014)
allocate( a00082)
a00014=1.1
if (a00014/=1.1) print *,1001
end  block
end
call s
print *,'pass'
end
