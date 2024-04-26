
      parameter (N=72)
      real*8    a(N,N),b(N,N),x,fret
      integer c1,c2,c3,cc(10)

      print *, 'START'
      c1=0
      c2=0
      c3=0

      do 1 i=N,1,-1
      do 1 j=N,1,-1
       a(j,i) = fret(i+j)*1.0d0
 1     b(j,i) = fret(i+j)*(-1.0d0)
      
      cc=0

      x=5.0d0

      do 2 i=N,1,-1
       if (i.ge.h(N,80)) then
         do 3 j=N,1,-1
           if (mod(j,3)-1) 10,20,30
 10        c1=c1+1
           a(j,i)=a(j,i) + x*b(j,i)
           goto 3
 20        c2=c2+1
           a(j,i)=a(j,i) - x*b(j,i)
           goto 3
 30        c3=c3+1
           a(j,i)=-a(j,i) + x*b(j,i)
           goto 3
 3         continue
       else
         do 4 j=N,1,-1
           if (mod(j,3)-1.eq.0) then
             cc(4)=cc(4)+1
             a(j,i)=a(j,i) + x*b(j,i)
           else if (mod(j,3)-1.eq.1) then
             cc(5)=cc(5)+1
             a(j,i)=a(j,i) - x*b(j,i)
           else
             cc(6)=cc(6)+1
             a(j,i)=-a(j,i) + x*b(j,i)
           endif
 4        continue
        endif
 2        continue
          cc(1)=c1
          cc(2)=c2
          cc(3)=c3
          print *,a(1,1),a(N,N)
          print *,cc
          print *, 'END'
          end

       function fret(i)
       real*8 fret
       if (mod(i,2).eq.1) then 
          fret=real(i)
       else 
          fret=real(i-1)
       endif
       end

       function h(i,j)
       real a,b
       a=i
       b=j
       h=int(a*b/100.0)
       end

