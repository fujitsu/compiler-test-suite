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
    do j=arr(k,k),2
     write(13,*) j
    end do
    call chk
  print *,'pass'
  END SUBROUTINE sub
end
subroutine chk
rewind 13
read(13,*) i,j
if (i/=1)print *,'error-1'
if (j/=2)print *,'error-2'
end
