implicit none

integer nnx,nny,nnz
parameter(nnx=100,nny=100,nnz=100)
real*8 cwk1(nnx,nny,nnz)
real*8 cwk2(nnx,nny,nnz)

cwk1=100000
cwk2=100000

call sub1(cwk1,nnx,nny,nnz)
call sub2(cwk2,nnx,nny,nnz)

if ( all(cwk1/=cwk2) ) then
   print *, "NG-3"
end if
print *,"pass"
end

subroutine sub1(cwk,nnx,nny,nnz)
  implicit none
  integer nnx,nny,nnz
  integer ret,x,y,z
  real*8 cwk(nnx,nny,nnz)

  cwk(:,:,:)=cwk(:,:,:)/dble(nnz)

  ret = 0
  do x = 1, nnx
     do y = 1, nny
        do z = 1, nnz
           if ( cwk(x,y,z) .ne. 1000 ) then
              ret = 1
           endif
        end do
     end do
  end do

  if ( ret .eq. 1 ) then
     print *, "NG-1"
  end if
end subroutine sub1

subroutine sub2(cwk,nnx,nny,nnz)
  implicit none
  integer nnx,nny,nnz
  integer ret,x,y,z
  real*8 cwk(nnx,nny,nnz)

  !$omp workshare
  cwk(:,:,:)=cwk(:,:,:)/dble(nnz)
  !$omp end workshare

  ret = 0
  do x = 1, nnx
     do y = 1, nny
        do z = 1, nnz
           if ( cwk(x,y,z) .ne. 1000 ) then
              ret = 1
           endif
        end do
     end do
  end do

  if ( ret .eq. 1 ) then
     print *, "NG-2"
  end if
end subroutine sub2
