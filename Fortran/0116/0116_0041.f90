!

program main
integer,parameter::n=100
real(kind=8),dimension(:),pointer :: a, b
integer,parameter :: ans=1000
allocate(a(n))
allocate(b(n))
a=(/(mod(i,10),i=1,n,1)/)
b=(/(mod(i,10),i=n-1,0,-1)/)
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
    real(kind=8),dimension(:),pointer :: a,b
    do i=1,n
       a(i) = a(i) + b(i) + 1._8
    enddo
  end subroutine sub_pointer_array
end program

