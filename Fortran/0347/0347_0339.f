      real*8   x(10),f(10),p(10),fp,xp
      data  n/10/,fp/1.d0/,xp/50.d0/
      do 10 i=1,n
        x(i)=float(i)*2.d0
        p(i)=float(1-i)+1.d0
        f(i)=float(i)*2.d0
 10   continue
      call  sub(n,x,f,xp,fp)
      write(6,*) p
      write(6,*) fp
      stop
      end
      subroutine sub(n,x,f,xp,fp)
      real*8   x(n),f(n),p(10),fp,xp
      do 11 j=1,n
      p(j)=1.
      do 11 i=1,n
      if(i-j) 12,11,12
   12 p(j)=p(j)*(xp-x(i))/(x(j)-x(i))
   11 continue
      fp=0.
      do 13 i=1,n
   13 fp=fp+p(i)*f(i)
      return
      end
