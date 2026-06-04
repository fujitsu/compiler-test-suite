subroutine sub01()
  complex(16),dimension(10,10) :: a
  integer :: i,j,k1,k2
  a=(1.0_16,1.0_16)
  zz=-1
  !$omp  parallel
  do concurrent(k2 = 1: 2)
    do concurrent(k1 = k2: 3)
!$omp parallel do collapse(1)
      do j = 1, 10
        do concurrent(i = 1:10)
!$omp atomic capture
           zz=a(i,j)%re
           a(i,j)%re = -0
!$omp end atomic
        enddo
      enddo
!$omp end parallel do
    end do
  end do
!$omp end parallel
if(zz/=0.0_16) print *,'err'  
end subroutine sub01

call sub01()
print *,'pass'
end
