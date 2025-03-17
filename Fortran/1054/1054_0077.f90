subroutine sub(a)
real(4),pointer::a
integer::t,omp_get_num_threads
allocate(a)
a=0.0
!$omp parallel reduction(+:a)
a=a+1.0
!$omp master
t=omp_get_num_threads()
!$omp end master
!$omp end parallel
if (a /= t) then
  print *,'ng1',t,a
endif
print *,'pass'
end

interface
  subroutine sub(a)
    real(4),pointer::a
  end subroutine
end interface

real(4),pointer::a
call sub(a)
end
