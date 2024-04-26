type a
integer::i=2
end type
type (a),save:: x
type (a),save,allocatable:: y
if (x%i/=2) print *,101,x%i
!$omp parallel private(x)
if (x%i/=2) print *,102,x%i
!$omp sections
!$omp section
allocate(y)
if (y%i/=2) print *,103,y%i
!$omp end sections
!$omp end parallel
print *,'pass'
end
