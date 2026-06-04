  integer(4)::a,b,c
  a=1
  b=2
  c=3
  !$omp parallel firstprivate(a,b,c)
  a=10
  !$omp cancel parallel if( .true. )
  b=20
  !$omp cancel parallel if( .false. )
  c=30
  !$omp end parallel
if(a/=1) print *,'err1'
if(b/=2) print *,'err2'
if(c/=3) print *,'err3'
print *,'pass'
end program
      
