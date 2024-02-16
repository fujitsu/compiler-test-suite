!

program main
integer,parameter::n=100
real(kind=8),dimension(:),pointer :: a, b
real(kind=8),target :: x(1:n+n)
integer,parameter :: ans=5248
!x=(/(i,i=1,n+n,1)/)
x=1
a=>x(1:n)
b=>x(n/2+1:n+n/2)
call sub_pointer_array(a,b,n)
print *,"ok:"
contains
  subroutine sub_pointer_array(a,b,n)
    real(kind=8),dimension(:),pointer :: a,b
    do i=2,n
       a(i) = a(i) + b(i-1) + i
    enddo
  end subroutine sub_pointer_array
end program

