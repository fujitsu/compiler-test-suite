print *,"pass"
end

subroutine sub()
common /com01/i,j
!$omp parallel
!$omp do private(i)
do i=1,10
end do
!$omp enddo
!$omp end parallel
end
