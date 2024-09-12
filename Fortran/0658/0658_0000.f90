  integer, ALLOCATABLE :: arr(:,:)
  CALL sub(arr,1)
  CALL sub(arr,2)
    call chk
  print *,'pass'
CONTAINS
  SUBROUTINE sub(arr,k)
    INTEGER :: j
    integer, ALLOCATABLE :: arr(:,:)
    ALLOCATE( arr(2,2))
    arr(1,1)=1
    arr(1,2)=2
    if (k==1)then 
      write(1,*) arr(1,:)
    else
      write(1,*)(arr(1,j), j=1,2)
    endif
    deallocate(arr)
  END SUBROUTINE sub
end
subroutine chk
pointer (ip,k)
rewind 1
read(1,*) i,j
if (i/=1)print *,'error-1'
if (j/=2)print *,'error-2'
read(1,*) i,j
if (i/=1)print *,'error-1'
if (j/=2)then
  ip=1
  k=2
  print *,'error-2'
endif
end
