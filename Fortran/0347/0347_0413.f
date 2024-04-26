      program main
      dimension a(10),b(10),c(10),d(10)
      data a/10*0/
      data b/4*1.0,2,5*1.0/,c/10*1.0/
      data d/10*0/
      do 10 i=1,10
        d(i)= 1.2
        a(i)= 1.5
        if( b(i) .gt. c(i) ) go to 20
        a(i)= 1.0
  10  continue
 20   write(6,*) a
      write(6,*) b
      write(6,*) c
      write(6,*) d
      stop
      end
