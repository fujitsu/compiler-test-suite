PROGRAM MAIN

  integer, ALLOCATABLE :: arr(:,:)
  CALL sub(arr)
CONTAINS
  SUBROUTINE sub(arr)
    INTEGER :: j
    integer, ALLOCATABLE :: arr(:,:)
    ALLOCATE( arr(2,2))

    arr(1,1)=1
    arr(2,1)=2
    arr(1,2)=3
    arr(2,2)=4
    write(26,*)((arr(k,j), k=1,2),j=1,2)
    call chk

  print *,'pass'
  END SUBROUTINE sub
end program main
subroutine chk
rewind 26
read(26,*) i,j,ii,jj
if (i/=1)print *,'error-1'
if (j/=2)print *,'error-2'
if (ii/=3)print *,'error-3'
if (jj/=4)print *,'error-4'
end
