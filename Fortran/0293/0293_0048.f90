subroutine s1
integer a(3),b(3)
!$ CALL OMP_SET_NUM_THREADS(1)
a(1)=11;a(2)=12;a(3)=13

!$omp parallel
!$omp sections firstprivate(a) lastprivate(b)
do i=1,3
 b(i)=a(i)
 if (b(i)/=i+10)print *,101
end do
!
!$omp end sections 
if (any(a/=10+(/1,2,3/)))print *,102,a
if (any(b/=10+(/1,2,3/)))print *,103,b
!$omp end parallel 
end
call s1
print *,'pass'
end
  
