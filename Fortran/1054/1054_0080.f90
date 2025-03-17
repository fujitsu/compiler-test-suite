subroutine sub()
real(4),pointer::a,ar(:)
integer::t,omp_get_num_threads
allocate(a,ar(10))
a=0.0
ar=0.0
!$omp parallel reduction(+:a,ar)
a=a+1.0
ar=ar+1.0
!$omp master
t=omp_get_num_threads()
!$omp end master
!$omp end parallel
if (a /= t) then
  print *,'ng1',t,a
endif
if (any(ar /= t)) then
  print *,'ng2',t,ar
endif
print *,'pass'
end

call sub()
end
