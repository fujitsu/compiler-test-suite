      real*4  a(50),b(50),c(50)
      logical*4 l(50)
      data  a,b/50*1.,50*2./,l/20*.false.,30*.true./,nn/49/
      data  c/50*1./
      l(10)=.true.
      do 30 ii=1,2
       do 10 j=2,19
        c(j)=float(j)
        do 10 i=2,nn
          a(i)=c(j)/b(i)
          if (l(i)) then
            a(i)=a(i+1)*b(i)
          endif
  10   continue
  11  continue
      if (l(10)) then
       do 20 j=2,nn+1
        do 20 i=2,j
          if (a(i).eq.0) goto 20
          a(i)=a(i)+b(i)
  20   continue
      endif
  30  continue
      write(6,*) a
      call sub(a,b,c,50)
      stop
      end
      subroutine sub(a,b,c,nn)
      real*4  a(nn),b(nn),c(nn)
      do 10 j=1,nn
        a(j)=float(j)
        do 10 i=1,nn/2
          b(i)=c(i)+a(i)
  10  continue
      write(6,*) ' ** sub-result **'
      write(6,*) 'b= ',b
      return
      end
