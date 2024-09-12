subroutine s1
is()=k+j
k=0;j=0
!$omp parallel private(k,j)
k=1
j=2
if (k+j/=3)print *,2,k+j
if (is()/=3)print *,3,is()
!$omp end parallel
if (is()/=0)print *,1,is()
end 
call s1
print *,'pass'
end
