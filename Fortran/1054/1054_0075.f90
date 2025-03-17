subroutine sub()
complex(4),pointer::ar(:)
integer::t,omp_get_num_threads
allocate(ar(10))
ar=(0.0,0.0)
!$omp parallel reduction(+:ar)
ar=ar+1.0
!$omp master
t=omp_get_num_threads()
!$omp end master
!$omp end parallel
if (any(ar /= t)) then
  print *,'ng2',t,ar
endif
print *,'pass'
end

call sub()
end
