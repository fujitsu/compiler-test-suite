subroutine s1
integer a(3),b(3)
a(1)=1;a(2)=2;a(3)=3
!$omp parallel 
!$omp do private(a,b)
do i=1,3
 a(i)=i
 b(i)=a(i)
 if (b(i)/=i)print *,101
end do
!
!$omp end parallel 
end
call s1
print *,'pass'
end
  
