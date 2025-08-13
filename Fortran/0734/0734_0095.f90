program main

   integer, dimension(0), parameter :: x=0

   write(51,*) x
   write(51,*)  shape(x), LBOUND(x), UBOUND(x)
rewind 51
read (51,*) i1,i2,i3
if (i1/=0)write(6,*) "NG"
if (i2/=1)write(6,*) "NG"
if (i3/=0)write(6,*) "NG"
print *,'pass'
end program main
