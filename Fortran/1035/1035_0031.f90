  integer, ALLOCATABLE :: arr(:,:)
  integer::k
    k=50000
    ALLOCATE( arr(k:k+1,k:k+1))
    arr(k,k)=1
    arr(k,k+1)=2
  CALL sub(arr,*11,*11,0)
  write(22,*) 1
  goto 20
11 write(22,*) -1
20 continue
  CALL sub(arr,*21,*22,1)
22 write(22,*) -1
  goto 30
21 write(22,*) 2
30 CALL sub(arr,*31,*32,2)
31 write(22,*) -1
  goto 40
32 continue
write(22,*) 3
40  call chk
  print *,'pass'
CONTAINS
  SUBROUTINE sub(arr,*,*,kk)
    integer, ALLOCATABLE :: arr(:,:)
    if (kk==0)return
    if (kk==1) return arr(k,k)
    if (kk==2) return arr(k,k+1)
  END SUBROUTINE sub
end
subroutine chk
rewind 22
read(22,*) i,j,jj
if (i/=1)print *,'error-1'
if (j/=2)print *,'error-2'
if (jj/=3)print *,'error-3'
end
