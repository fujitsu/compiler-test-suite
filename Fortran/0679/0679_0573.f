      call sub01
      call sub02
      call sub03
      stop
      end

      subroutine sub01
      real*4 a(10),b(10)
      data b/ 1.1, 1.6, 1.5, 1.23456, 78.90123,
     1       -1.1,-1.6,-1.5,-1.23456,-78.90123/
      data a/10*0.0/

      do 10 i=1,10
        a(i) = anint( b(i) )
 10   continue
      do 20 j=1,10
        write(6,200) 'a(',j,')=',a(j)
 20   continue
 200  format(1h ,2x,a2,i2,a2,e14.7)
      return
      end

      subroutine sub02
      real*8 a(10),b(10)
      data b/ 1.1d0, 1.6d0, 1.5d0, 1.23456d0, 78.90123d0,
     1       -1.1d0,-1.6d0,-1.5d0,-1.23456d0,-78.90123d0/
      data a/10*0.0d0/
      do 10 i=1,10
        a(i) = dnint( b(i) )
 10   continue
      do 20 j=1,10
        write(6,200) 'a(',j,')=',a(j)
  20  continue
 200  format(1h ,2x,a2,i2,a2,d23.16)
      return
      end

      subroutine sub03
      integer*4 a(10),b(10)
      real*4 c(10)
      real*8 d(10)
      data c/ 1.1, 1.6, 1.5, 1.23456, 78.90123,
     1       -1.1,-1.6,-1.5,-1.23456,-78.90123/
      data d/ 1.1d0, 1.6d0, 1.5d0, 1.23456d0, 78.90123d0,
     1       -1.1d0,-1.6d0,-1.5d0,-1.23456d0,-78.90123d0/
      data a/10*0/
      data b/10*0/
      do 10 i=1,10
        a(i) = nint( c(i) )
        b(i) = nint( d(i) )
 10   continue
      do 20 j=1,10
        write(6,200) 'a(',j,')=',a(j)
        write(6,200) 'b(',j,')=',b(j)
 20   continue
 200  format(1h ,2x,a2,i2,a2,i10)
      return
      end
