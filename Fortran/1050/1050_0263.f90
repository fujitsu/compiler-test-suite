program main

  print *,"test"

  call subsubsubsubsub()

  print *,"ok"
contains
  subroutine subsubsubsubsub
    integer :: i,j
    integer,dimension(1000) :: a
    integer,dimension(500) :: b

!$OMP PARALLEL
    do i=1,1000
       a(i) = i
    end do
!$OMP END PARALLEL
!$OMP PARALLEL
    do j=1,500
       b(j) = j
    end do
!$OMP END PARALLEL
    print *,a(1),b(2)
  end subroutine subsubsubsubsub
end program main
