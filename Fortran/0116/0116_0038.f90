
program main
integer,parameter::n=100
real(kind=8),dimension(:,:,:),allocatable :: a, b
integer,parameter :: ans=139266435
allocate(a(n,n,n))
allocate(b(n,n,n))
a=reshape( (/(mod(i,10),i=1,n*n*n,1)/), shape(a) )
b=reshape( (/(mod(i,10),i=n*n*n-1,0,-1)/), shape(b) )
call sub_pointer_array(a,b,n)
if (int(sum(a)) .eq. ans) then
  print *,"ok: sum(a) = ",sum(a)
else
  print *,"ng: sum(a) = ",sum(a)
endif
deallocate(a)
deallocate(b)
contains
  subroutine sub_pointer_array(a,b,n)
    real(kind=8),dimension(:,:,:) :: a,b
    do k=2,n
      do j=2,n
        do i=2,n
         a(i,j,k) = a(i-1,j-1,k-1) + b(i,j,k) + 1._8
        enddo
      enddo
    enddo
  end subroutine sub_pointer_array
end program

