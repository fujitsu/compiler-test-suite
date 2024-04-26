
program main
integer,parameter::n=100
real(kind=8),dimension(:,:),pointer :: a, b
real(kind=8),target :: x(n,n), y(n,n)
integer,parameter :: ans=60000
x=reshape( (/(mod(i,10),i=1,n*n,1)/), shape(x) )
y=reshape( (/(mod(i,10),i=n*n-1,0,-1)/), shape(y) )
a=>x
b=>y
call sub_pointer_array(a,b,n)
if (int(sum(a)) .eq. ans) then
  print *,"ok: sum(a) = ",sum(a)
else
  print *,"ng: sum(a) = ",sum(a)
endif
contains
  subroutine sub_pointer_array(a,b,n)
    real(kind=8),dimension(:,:),pointer :: a,b
    do j=2,n,2
      do i=2,n,2
       a(i,j) = a(i-1,j-1) + b(i,j) + 1._8
      enddo
    enddo
  end subroutine sub_pointer_array
end program

