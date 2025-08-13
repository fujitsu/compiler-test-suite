  integer    , ALLOCATABLE :: arr(:,:)
  character*2, ALLOCATABLE :: x(:,:)
  CALL sub(arr,x)
CONTAINS
  SUBROUTINE sub(arr,x)
    integer, ALLOCATABLE :: arr(:,:)
    character*(*), ALLOCATABLE :: x(:,:)
    k=50000
    ALLOCATE( arr(k:k+1,k:k+1))

    arr(k,k)=1
    arr(k,k+1)=2
    allocate(x(arr(k,k):arr(k,k+1),arr(k,k):arr(k,k+1)))
    x(1,1)='11'
    x(2,1)='12'
    x(1,2)='13'
    x(2,2)='14'
    write(11,*)x
    call chk
  print *,'pass'
  END SUBROUTINE sub
end
subroutine chk
rewind 11
read(11,*) i
if (i/=11121314)print *,'error-1'
end
