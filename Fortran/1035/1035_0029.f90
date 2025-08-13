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
    integer::y(2)=(/1,2/)
    write(20,*) (y(j),j=arr(k,k),arr(k,k+1))
    call chk
  print *,'pass'
  END SUBROUTINE sub
end
subroutine chk
rewind 20
read(20,*) i,j
if (i/=1)print *,'error-1'
if (j/=2)print *,'error-2'
end
