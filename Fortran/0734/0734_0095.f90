program main

   integer, dimension(0), parameter :: x=0

   write(1,*) x
   write(1,*)  shape(x), LBOUND(x), UBOUND(x)
rewind 1
read (1,*) i1,i2,i3
if (i1/=0)write(6,*) "NG" 
if (i2/=1)write(6,*) "NG" 
if (i3/=0)write(6,*) "NG" 
print *,'pass'
end program main
