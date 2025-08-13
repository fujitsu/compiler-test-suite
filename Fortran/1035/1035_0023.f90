  integer, ALLOCATABLE :: arr(:,:)
  integer::k
    k=50000
    ALLOCATE( arr(k:k+1,k:k+1))
    arr(k,k)=1
    arr(k,k+1)=2
  CALL sub(arr)
CONTAINS
  SUBROUTINE sub(arr)
    INTEGER :: j
    integer, ALLOCATABLE :: arr(:,:)
    do j=1,2,arr(k,k)
     write(27,*) j
    end do
    call chk
  print *,'pass'
  END SUBROUTINE sub
end
subroutine chk
rewind 27
read(27,*) i,j
if (i/=1)print *,'error-1'
if (j/=2)print *,'error-2'
end
