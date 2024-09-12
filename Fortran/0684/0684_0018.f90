logical a(10),ifun
j=2
CALL OMP_SET_NUM_THREADS(1)
!$OMP PARALLEL private(a) firstprivate(j) 
a(3)=.true.
!$omp atomic
a(3) = a(3).and.ifun(j)
if (.not.a(3))print *,'error'
!$OMP END PARALLEL
print *,'pass'
end
logical function ifun(j)
ifun=j.eq.2
end 
