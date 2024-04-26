 program main
   complex(2) c,xx
   real         cp
   parameter (cp=z'3FFFFFFF FFFFFFFF')
real h
   c = cp
   write(1,*) real(c,4)
   call sub(cp)
rewind 1
read (1,*) h
if (abs(c-h)>0.01 ) print *,2001
read (1,*) h
if (abs(c-h)>0.01 ) print *,2002
print *,'pass'
 end program main
 
 subroutine sub(x)
   real           x
   complex(2) a,b
   a = x
   b = 1.5
   write(1,*)real(a,4)
   write(1,*)real(a,4)
 end subroutine sub
