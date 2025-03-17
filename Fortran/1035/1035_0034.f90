  integer, ALLOCATABLE :: arr(:,:)
    ALLOCATE( arr(2,2))
    arr(1,1)=1
    arr(1,2)=2
  CALL sub(arr)
CONTAINS
  SUBROUTINE sub(arr)
    integer, ALLOCATABLE :: arr(:,:)
    write(1,*)arr(1,1:2)
    call chk
  print *,'pass'
  END SUBROUTINE sub
end
subroutine chk
rewind 1
read(1,*) i,j
if (i/=1)print *,'error-1'
if (j/=2)print *,'error-2'
end
