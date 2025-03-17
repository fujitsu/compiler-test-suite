  integer, ALLOCATABLE :: arr(:,:),x(:,:)
  CALL sub(arr,x)
CONTAINS
  SUBROUTINE sub(arr,x)
    integer, ALLOCATABLE :: arr(:,:),x(:,:)
    k=50000
    ALLOCATE( arr(k:k+1,k:k+1))

    arr(k,k)=1
    arr(k,k+1)=2
    allocate(x(arr(k,k):arr(k,k+1),arr(k,k):arr(k,k+1)))
    x(1,1)=11
    x(2,1)=12
    x(1,2)=13
    x(2,2)=14
    write(1,*)x
    call chk
  print *,'pass'
  END SUBROUTINE sub
end
subroutine chk
rewind 1
read(1,*) i,j,ii,jj
if (i/=11)print *,'error-1'
if (j/=12)print *,'error-2'
if (ii/=13)print *,'error-3'
if (jj/=14)print *,'error-4'
end
