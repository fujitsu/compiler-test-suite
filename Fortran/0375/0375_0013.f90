integer a(10)
CALL OMP_SET_NUM_THREADS(1)
call s(a)
print *,'pass'
end
subroutine s(a)
integer a(*)
!$omp parallel shared(a)
!$omp do 
do i=1,10
 a(i)=i
 call sub(a(i),i)
enddo
!$omp enddo
!$omp end parallel
end
subroutine sub(i,j)
if (i/=j)print *,'error'
end
