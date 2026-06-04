call s1
call s2
call s3
print *,"pass"
contains
subroutine s1
!$omp  parallel
do k=1,1
!$omp do  schedule(static,k*k)
do j=1,1
enddo
!$omp end do
if(k/=1) print *,"err",k
end do
!$omp end parallel
end subroutine
subroutine s2
!$omp  parallel
do k=1,1
!$omp do  schedule(runtime)
do j=1,1
enddo
!$omp end do
if(k/=1) print *,"err",k
end do
!$omp end parallel
end subroutine
subroutine s3
!$omp  parallel
do k=1,1
!$omp do  schedule(dynamic,k*k)
do j=1,1
enddo
!$omp end do
if(k/=1) print *,"err",k
end do
!$omp end parallel
end subroutine
end 
