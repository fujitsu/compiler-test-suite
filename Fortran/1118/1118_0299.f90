call aaaaa
print *,'pass'
end
subroutine aaaaa
integer,allocatable::a(:)
allocate(a(10))
!$OMP task firstprivate(a)
!$OMP task firstprivate(a)
!$OMP task firstprivate(a)
a=(/(i,i=1,10)/)
if(size(a).ne.10) print *,'err1'
!$OMP end task
!$OMP end task
!$OMP end task
end
