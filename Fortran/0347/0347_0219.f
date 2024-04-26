      program main
      real*4  a(20),b(20),c(20)
      data  a,b,c/20*1.,20*3.,20*5./,rx/1./,ry/1./
      do 10 i=1,15
        rx = a(i)+b(i)
        if ( rx .gt.5 ) then
          ry = a(i)*b(i)
          a(i) = ry+rx
        endif
        b(i+1) = c(i+2)+a(i+1)
  10  continue
      write(6,*) a
      write(6,*) b
      write(6,*) ' ry= ',ry
      stop
      end
