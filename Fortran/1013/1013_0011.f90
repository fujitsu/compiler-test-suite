integer::a,b
common /com1/a,b
!$omp threadprivate(/com1/)
a=1
b=2
!$omp parallel copyin(/com1/)
  if (a /= 1 .or. b /= 2) then
    print *,'ng 101',a,b
  endif
!$omp end parallel
a=10
b=20
!$omp parallel copyin(a,b)
  if (a /= 10 .or. b /= 20) then
    print *,'ng 102',a,b
  endif
!$omp end parallel
print *,'pass'    
end
