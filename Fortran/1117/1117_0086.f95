  program main

!$omp parallel

    call sub1()
    call sub2()
    call sub3()
    call sub4()
    call sub5()
    call sub6()

!$omp end parallel

    print *, " *** pass *** "

  end program main

  subroutine sub1()

!$omp do
    do i = 1,2
    end do

!$omp do
    do i = 1,2
    end do

  end subroutine sub1

  subroutine sub2()

!$omp do
    do i = 1,2
    end do
!$omp enddo

!$omp do
    do i = 1,2
    end do
!$omp enddo

  end subroutine sub2

  subroutine sub3()

!$omp do
    do i = 1,2
    end do
!$omp enddo nowait

!$omp do
    do i = 1,2
    end do
!$omp enddo nowait

  end subroutine sub3

  subroutine sub4()

!$omp do
    do i = 1,2
    end do

    contains

      subroutine insub()
      end subroutine insub

  end subroutine sub4

  subroutine sub5()

!$omp do
    do i = 1,2
    end do
!$omp enddo

    contains

      subroutine insub()
      end subroutine insub

  end subroutine sub5

  subroutine sub6()

!$omp do
    do i = 1,2
    end do
!$omp enddo nowait

    contains

      subroutine insub()
      end subroutine insub

  end subroutine sub6
