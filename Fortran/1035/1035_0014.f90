  integer, ALLOCATABLE :: arr(:,:)
  CALL sub(arr)
CONTAINS
  SUBROUTINE sub(arr)
    INTEGER :: j
    integer, ALLOCATABLE :: arr(:,:)
    k=50000
    ALLOCATE( arr(k:k+1,k:k+1))

    arr(k,k)=1
    arr(k,k+1)=2
    write(2,*)(arr(k,j), j=k,k+1)
    call chk
  print *,'pass'
  END SUBROUTINE sub
end
subroutine chk
rewind 2
read(2,*) i,j
if (i/=1)print *,'error-1'
if (j/=2)print *,'error-2'
end
