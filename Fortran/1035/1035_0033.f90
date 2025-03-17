  integer, ALLOCATABLE :: arr(:,:)
  integer::k
    k=50000
    ALLOCATE( arr(k:k+1,k:k+1))
    arr(k,k)=1
    arr(k,k+1)=2
  CALL sub(arr)
CONTAINS
  SUBROUTINE sub(arr)
    integer, ALLOCATABLE :: arr(:,:)
    select case(arr(k,k))
    case(1:20); n=1000
    end select
    if (n/=1000)print *,'error'
  print *,'pass'
  END SUBROUTINE sub
end
