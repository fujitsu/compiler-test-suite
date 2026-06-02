subroutine s
!!!! implicit none
  block
allocatable::a00010,a00011
allocate( a00010,a00011) 
a00010=1.1
a00011=1.1
if (a00010/=1.1) print *,1001
if (a00011/=1.1) print *,1001
end  block
end
call s
print *,'pass'
end
