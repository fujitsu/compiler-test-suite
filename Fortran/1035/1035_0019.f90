  integer, ALLOCATABLE :: arr(:,:)
  CALL sub(arr)
CONTAINS
  SUBROUTINE sub(arr)
    character*3 :: j(2)
    integer, ALLOCATABLE :: arr(:,:)
    k=50000
    ALLOCATE( arr(k:k+1,k:k+1))

    arr(k,k)=1
    arr(k,k+1)=2
    j(arr(k,k))='123'
    j(arr(k,k+1))='456'
    write(1,*)j
    j(arr(k,k))(arr(k,k):arr(k,k+1))='789'
    j(arr(k,k+1))(arr(k,k):arr(k,k+1)+1)='012'
    write(1,*)j
    call chk
  print *,'pass'
  END SUBROUTINE sub
end
subroutine chk
rewind 1
read(1,*) i,j
if (i/=123456)print *,'error-1'
if (j/=783012)print *,'error-2'
end
