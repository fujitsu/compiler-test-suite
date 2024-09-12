 program main
   real *8 cp,xx
   real(4)::y,xx4
   real(16)::z,xx16
   parameter (cp=z'3FFFFFFF FFFFFFFF')
   y = cp
   write(1,*) y
   z = cp
   write(1,*) z
   call sub([cp,cp])
rewind 1
read (1,*) xx4
if (abs(xx4-2.)>0.0001) print *,2001,xx4
read (1,*) xx16
if (abs(xx16-1.9999999999999997779553950749686919_16)>0.1e13_16) print *,2002,xx16
read (1,*) xx
if (abs(xx-1.999999999992724_8)>0.1e10_8) print *,2003,xx
read (1,*) xx4
if (abs(xx4-2.)>0.0001) print *,2004,xx4
read (1,*) xx16
if (abs(xx16-1.9999999999999997779553950749686919_16)>0.1e13_16) print *,2005,xx16
read (1,*) xx
if (abs(xx-1.999999999992724_8)>0.1e10_8) print *,2006,xx
read (1,*) xx16
if (abs(xx16-1.9999999999999997779553950749686919_16)>0.1e13_16) print *,2007,xx16
print *,'pass'
 end program main
 
 subroutine sub(x)
   real*8 a(2),x(2),xa(2)
   real(4)::y(2),ya(2)
   real(16)::z(2),za(2)
   a = x
   y=x     
   z=x     
   write(1,*)a
   write(1,*)y
   write(1,*)z
   xa=x
   write(1,*)xa(2)
   ya=x
   write(1,*)ya(2)
   za=x
   write(1,*)za(2)
 end subroutine sub

