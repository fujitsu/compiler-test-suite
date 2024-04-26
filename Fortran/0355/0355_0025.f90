program main
  integer,dimension(1000)::ia
  ia = 100
  ia(1000) = 200
  call sub(1000,ia)
end program main

subroutine sub (nn, ia)
  implicit none
  integer i,nn
  integer,dimension(1000)::ia

!$omp parallel
!$omp do
  do i=1,nn
     ia(i) = ia(i)+10
  end do
!$omp enddo
!$omp end parallel

  print *,ia(1000)
end subroutine sub
