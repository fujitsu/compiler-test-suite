logical(1)::l1(2)
logical(2)::l2(2)
l1=.true.
l2=.false.
!$omp atomic capture
l2(2)=l1(2)
l1(2)=l2(1).neqv.l1(1)
!$omp end atomic

print *,'pass'
end
