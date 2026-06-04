  program main

    integer :: i = 555

!$omp parallel if (.true.),private(i)
    i = 111
!$omp end parallel
    if (i .ne. 555) print *, " +++ NG +++ "

!$omp parallel if (.false.),private(i)
    i = 222
!$omp end parallel
    if (i .ne. 555) print *, " +++ NG +++ "

!$omp parallel if (.false.),private(i)
    i = 333
!$omp end parallel
    if (i .ne. 555) print *, " +++ NG +++ "

    print *, " *** pass *** "

  end program main
