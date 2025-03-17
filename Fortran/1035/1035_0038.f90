PROGRAM MAIN
  IMPLICIT NONE
  integer, ALLOCATABLE :: arr(:)
  CALL sub(arr)
CONTAINS
  SUBROUTINE sub(arr)
    INTEGER :: j
    integer, ALLOCATABLE :: arr(:)
    ALLOCATE( arr(2))

    arr(1)=1
    arr(2)=2
    write(1,*)(arr(j), j=1,2)
    call chk

  print *,'pass'
  END SUBROUTINE sub
end program main
subroutine chk
rewind 1
read(1,*) i,j
if (i/=1)print *,'error-1'
if (j/=2)print *,'error-2'
end
