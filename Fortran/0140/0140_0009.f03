call s1
print *,'pass'
end
subroutine s1
integer(8)::i1(10000),i,j
i1=[(j,j=1_8,10000_8)]
!$omp workshare
forall(i=1_8:10000_8)
 i1(i1) = i1(1_8:10000_8)**1_8
end forall
!$omp end workshare
if(sum(i1)/=50005000) print *,'err'
end
