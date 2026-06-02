logical(1)::r1(1),rr
complex(16)::r2(2)
r1=.true.
r2=1.0
!$omp atomic capture
rr=r1(1)
r1(1)=r2(1)%re.ne.r2(2)%im
!$omp end atomic
if(r1(1).neqv.rr) print *,'err'
print *,'pass'
end program
