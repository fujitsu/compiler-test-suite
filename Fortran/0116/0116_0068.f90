
program main
integer,parameter::n=100
real(kind=8),dimension(:),pointer :: a, b
real(kind=8),target :: x(n), y(n)
integer,parameter :: ans=27700

x=(/(mod(i,10),i=1,n,1)/)
y=(/(mod(i,10),i=n-1,0,-1)/)
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
    real(kind=8),dimension(:),pointer :: a,b
    do i=2,n
       a(i) = a(i-1) + b(i) + 1._8
    enddo
  end subroutine sub_pointer_array
end program

