!
program main
integer,parameter::n=100
real(kind=8),dimension(:),pointer :: a, b
integer,parameter :: ans=300
allocate(a(n))
allocate(b(n))
a=1._8
b=2._8
call simple_pointer01(a,b,n)
if (int(sum(a)) .eq. ans) then
  print *,"ok"
else
  print *,"ng: sum(a) = ",sum(a)
endif
deallocate(a)
deallocate(b)
contains
  subroutine simple_pointer01(a,b,n)
    real(kind=8),dimension(:),pointer :: a,b
    do i=1,n
       a(i) = b(i) + 1._8
    enddo
  end subroutine simple_pointer01
end program
