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
    case(1); n=1000
    case(2); n=2
    case(3); n=3
    case(4); n=4
    case(5); n=5
    case(6); n=6
    case(7); n=7
    case(8); n=8
    case(9); n=9
    case(10); n=10
    case(11); n=1
    case(12); n=2
    case(13); n=3
    case(14); n=4
    case(15); n=5
    case(16); n=6
    case(17); n=7
    case(18); n=8
    case(19); n=9
    case(20); n=10
    end select
    if (n/=1000)print *,'error'
  print *,'pass'
  END SUBROUTINE sub
end
