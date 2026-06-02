subroutine sub01()
  real,dimension(10,10) :: a
  integer :: i,j,k1,k2
  a=1
!$omp  parallel
  do concurrent(k2 = 1: 2)
    do concurrent(k1 = k2: 3)
!$omp parallel do collapse(1)
      do j = 1, 10
        do concurrent(i = 1:10)
!$omp atomic capture
           zz=a(i,j)
           a(i,j) = 0
!$omp end atomic
        enddo
      enddo
!$omp end parallel do
    end do
  end do
!$omp end parallel
end subroutine sub01

call sub01()
print *,'pass'
end
