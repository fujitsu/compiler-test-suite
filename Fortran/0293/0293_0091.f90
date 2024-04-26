module m1
  integer,allocatable,dimension(:,:,:,:):: c
  save c
!$omp threadprivate(c) 
contains
subroutine s
c(2,3,4,1)=3
end subroutine
end
print *,'pass'
end
