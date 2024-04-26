      program main
      real*4  a(20),b(20)
      data  a,b/20*1.,20*3./,rx/1./,ry/1./
      do 10 i=1,15
        rx = a(i)+b(i)
        if ( rx .gt.5 ) then
          ry = a(i)*b(i)
          a(i) = ry+rx
        endif
        a(i+1) = a(i+2)+ry
  10  continue
      write(6,*) a
      write(6,*) b
      stop
      end
