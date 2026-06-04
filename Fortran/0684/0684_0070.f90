subroutine sub
common /a/ i,j
pointer j
!$OMP threadprivate(/a/)
common /b/ ii,jj
pointer jj
allocate(j); j=100; if (j/=100)print *,"fail"
i=200;if (i/=200)print *,"fail"
allocate(jj); jj=100; if (jj/=100)print *,"fail"
ii=200;if (ii/=200)print *,"fail"
!$OMP parallel private(/b/) 
 allocate(jj); jj=101; if (jj/=101)print *,"fail"
 ii=201;if (ii/=201)print *,"fail"
 allocate(j); j=110; if (j/=110)print *,"fail"
 i=210;if (i/=210)print *,"fail"
 !$OMP parallel private(/b/)
   allocate(jj); jj=102; if (jj/=102)print *,"fail"
   ii=202;if (ii/=202)print *,"fail"
   allocate(j); j=310; if (j/=310)print *,"fail"
   i=310;if (i/=310)print *,"fail"
   deallocate(jj)
 !$OMP end parallel
 if (jj/=101)print *,"fail"
 if (ii/=201)print *,"fail"
 deallocate(jj)
!$OMP end parallel
end
CALL OMP_SET_NUM_THREADS(1)
call sub
print *,'pass'
end
