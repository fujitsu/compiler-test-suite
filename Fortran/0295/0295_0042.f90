subroutine s1
integer a(3),b(5),c(5)
a(1)=11;a(2)=12;a(3)=13;b(4)=100;b(5)=200;c(5)=300

!$omp parallel
!$omp sections firstprivate(a,b) lastprivate(b,c)
do i=1,3
 b(i)=a(i)
 if (b(i)/=i+10)print *,101
 b(5)=b(5)+1
 c(5)=b(5)+1
 a(i)=0
end do
!$omp end sections 
if (any(a/=10+(/1,2,3/)))print *,102,a
if (any(b(1:3)/=10+(/1,2,3/)))print *,103
if (any(b(4:5)/=(/100,203/)))print *,104
if (    c(5)/=204)print *,105
!$omp end parallel 
end
call s1
print *,'pass'
end
