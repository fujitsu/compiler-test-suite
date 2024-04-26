subroutine s1(n)
k1=-2147483648
 do k=1,k1
 end do
!$omp parallel private(n)
n=1
 do k=n,1
 end do
!$omp end parallel 
end subroutine
n=1
call s1(n)
print *,'pass'
end
