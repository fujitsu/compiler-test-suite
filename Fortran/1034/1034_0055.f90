       program main
       integer i,n
       n=0
 10    n=n+1
       if (n.eq.1) then
         i=1
       else
         i=2**(n-1)
       endif
       write(1,*)n-1,i
       if (n.lt.9) goto 10
       call x
       print *,'pass'
       end
subroutine x
rewind 1
k=0
read(1,*) i,j;if (i/=0 .or. j/=001)k=k+1
read(1,*) i,j;if (i/=1 .or. j/=002)k=k+1
read(1,*) i,j;if (i/=2 .or. j/=004)k=k+1
read(1,*) i,j;if (i/=3 .or. j/=008)k=k+1
read(1,*) i,j;if (i/=4 .or. j/=016)k=k+1
read(1,*) i,j;if (i/=5 .or. j/=032)k=k+1
read(1,*) i,j;if (i/=6 .or. j/=064)k=k+1
read(1,*) i,j;if (i/=7 .or. j/=128)k=k+1
read(1,*) i,j;if (i/=8 .or. j/=256)k=k+1
if (k/=0)print *,'error',k
end
