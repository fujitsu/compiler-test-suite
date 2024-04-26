  program main
    implicit none

    integer, parameter :: ns = 600000
    integer, parameter :: nl = 700000

    character(len=32) :: filename

    filename = "fort.123"
    call ws(len_trim(filename), filename, ns)

    filename = "fort.456"
    call ws(len_trim(filename), filename, nl)
print *,'pass'

  end program main

  subroutine ws(fn, filename, n)
    implicit none
    integer, intent(in) :: fn
    character(len=fn), intent(in) :: filename
    integer, intent(in) :: n

    real(8), allocatable :: p(:,:)

    allocate(p(3,n))

    call random_number(p)

    open(10,file=filename,form='unformatted',access='stream',status='replace')
    write(10) p(1:3,1:n)
    close(10)
    write(1, '(3a,2e25.15)') "write ", filename, ": ", p(1,1), p(3,n)

    p = 0.0_8

    open(10,file=filename,form='unformatted',access='stream',status='old')
    read(10) p(1:3,1:n)
    close(10)
    write(1,'(3a,2e25.15)') "read  ", filename, ": ", p(1,1), p(3,n)

    deallocate(p)

  end subroutine ws
