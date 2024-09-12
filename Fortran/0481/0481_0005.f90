logical(8)::r1(1),rr
real(16)::r2(2)
r1=.true.
r2=1.0
!$omp atomic capture
rr=r1(1)
r1(1)=r2(1).ne.r2(2)
!$omp end atomic
print *,'pass'
end program
